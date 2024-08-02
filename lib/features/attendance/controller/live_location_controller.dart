import 'dart:async';
import 'dart:convert';
import 'package:brcrop_marketing_executive/features/attendance/model/location_update_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';
import '../../../../core/helpers/cache_helper/cache_helper.dart';
import '../../../../core/helpers/network/helpers/api_endpoints.dart';
import '../../../../core/utils/shared/components/widgets/custom_snackbar.dart';
import '../../../core/helpers/network/helpers/base_client.dart';
import '../../../core/helpers/network/helpers/base_controller.dart';
import '../../../core/helpers/network/helpers/dialog_helper.dart';
import '../../../core/utils/configs/styles/colors.dart';
import '../model/attendance_login_model.dart';
import '../model/check_attendance.dart';
import '../model/marketing_location_model.dart';
import '../repository/location_service.dart';
import 'package:flutter/material.dart';

import 'attendance_history_controller.dart';

class FetchLiveLocationController extends GetxController {
  var locationUpdateModel = LocationUpdateModel().obs;
  var checkAttendance = CheckAttendance().obs;
  var loginLoading = true.obs;

  var empLocation = ''.obs;
  var empLatitude = ''.obs;
  var empLongitude = ''.obs;
  final _currentPosition = MarketingLocationModel().obs;
  get currentPosition => _currentPosition;

  LocationPermission? permission;

  final LocationService _locationService = LocationService();
  var _currentLocationName = ''.obs;

  get currentLocationName => _currentLocationName;

  StreamSubscription<Position>? _positionStreamSubscription;

  Future<void> updateLocation(
      {required String latitude,
        required String longitude,
        required String location}) async {
    print("called $latitude $longitude");
    final baseController = BaseController();
    final apiUrl = ApiEndPoints.mainBaseURL + ApiEndPoints.pushLocation;
    final apiToken = ApiEndPoints.apiToken;
    var empId = await CacheHelper.getData('empId');
    final requestData = {
      "api_key": apiToken,
      "user_id": empId,
      "user_location": location,
      "user_latti": latitude,
      "user_log": longitude,
    };

    try {
      final baseClient = BaseClient();
      var response = await baseClient
          .postMethod(apiUrl, requestData)
          .catchError(baseController.handleError);

      final responseData = json.decode(response.body);
      locationUpdateModel(LocationUpdateModel.fromJson(responseData));
      if (response.statusCode == 200) {
        final responseData = json.decode(response.body);
        locationUpdateModel(LocationUpdateModel.fromJson(responseData));

        if (locationUpdateModel.value.status == "Success") {
          print("Live location updated Successfully $responseData");
        } else {
          throw Exception('Status is not true');
        }
      } else if (response.statusCode == 401) {
        final responseData = json.decode(response.body);
        locationUpdateModel(LocationUpdateModel.fromJson(responseData));
        if (locationUpdateModel.value.status == "Failed") {
          print("Live location updated failed ${locationUpdateModel.value.message}");
        } else {
          throw Exception('Status is not true');
        }
      }
    } catch (error) {
      if (kDebugMode) {
        print("Error $error");
      }
    } finally {
      // loginLoading.value = true;
    }
  }

  Future<void> trackLiveLocation() async {
    bool serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      Get.defaultDialog(
        title: 'Enable location',
        textConfirm: 'Ok',
        middleTextStyle: TextStyle(
            fontSize: 13.sp,
            color: AppColor.txtColorMain,
            fontFamily: "poppinsRegular"),
        middleText: 'Turn on location service?',
        textCancel: 'Cancel',
        titleStyle: TextStyle(
            fontSize: 16.sp,
            color: AppColor.txtColorMain,
            fontFamily: "poppinsSemiBold"),
        buttonColor: AppColor.appMainColor, // Set the button color
        radius: 10.0, // Set the border radius
        onConfirm: () async {
          Get.back();
          await Geolocator.openLocationSettings();
        },
        onCancel: () {
          Get.back(closeOverlays: true);
        },
      );
      _currentPosition.value =
          MarketingLocationModel(latitude: 0, longitude: 0);
      return;
    }

    LocationPermission permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        Get.defaultDialog(
          title: 'Enable location',
          textConfirm: 'Ok',
          middleTextStyle: TextStyle(
              fontSize: 13.sp,
              color: AppColor.txtColorMain,
              fontFamily: "poppinsRegular"),
          middleText: 'Turn on location service?',
          textCancel: 'Cancel',
          titleStyle: TextStyle(
              fontSize: 16.sp,
              color: AppColor.txtColorMain,
              fontFamily: "poppinsSemiBold"),
          buttonColor: AppColor.appMainColor, // Set the button color
          radius: 10.0, // Set the border radius
          onConfirm: () async {
            Get.back();
            await Geolocator.requestPermission();
          },
          onCancel: () {
            Get.back(closeOverlays: true);
          },
        );
        _currentPosition.value =
            MarketingLocationModel(latitude: 0, longitude: 0);
        return;
      }
    }

    if (permission == LocationPermission.deniedForever) {
      Get.defaultDialog(
        title: 'Enable location',
        textConfirm: 'Ok',
        middleTextStyle: TextStyle(
            fontSize: 13.sp,
            color: AppColor.txtColorMain,
            fontFamily: "poppinsRegular"),
        middleText: 'Turn on location service?',
        textCancel: 'Cancel',
        titleStyle: TextStyle(
            fontSize: 16.sp,
            color: AppColor.txtColorMain,
            fontFamily: "poppinsSemiBold"),
        buttonColor: AppColor.appMainColor, // Set the button color
        radius: 10.0, // Set the border radius
        onConfirm: () async {
          Get.back();
          await Geolocator.openAppSettings();
        },
        onCancel: () {
          Get.back(closeOverlays: true);
        },
      );
      _currentPosition.value =
          MarketingLocationModel(latitude: 0, longitude: 0);
      return;
    }

    LocationSettings locationSettings = const LocationSettings(
      accuracy: LocationAccuracy.high,
      distanceFilter: 10,
    );

    _positionStreamSubscription = Geolocator.getPositionStream(locationSettings: locationSettings)
        .listen((Position position) async {
      final location = MarketingLocationModel(
        latitude: position.latitude,
        longitude: position.longitude,
      );
      _currentPosition.value = location;
      print("current postion ${_currentPosition.value}");
      List<Placemark> placemarks =
      await placemarkFromCoordinates(position.latitude, position.longitude);
      _currentLocationName.value =
      "${placemarks.first.locality},${placemarks.first.street}";
      await checkLoginOrNot().then((value) async {
        if (checkAttendance.value.status == "Success") {
          print("not login for today");
        } else if (checkAttendance.value.status == "Failed") {
          print("already login");
          if (_currentPosition.value.latitude.toString().isNotEmpty &&
              _currentPosition.value.longitude.toString().isNotEmpty) {
            await updateLocation(
              latitude: _currentPosition.value.latitude.toString(),
              longitude: _currentPosition.value.longitude.toString(),
              location: _currentLocationName.value,
            ).then((value) {
              if (locationUpdateModel.value.status == "Success" ||
                  locationUpdateModel.value.status == "Failed") {

              }
            });
          } else {
            print("lat may empty");
            print("lat ${_currentPosition.value.latitude} lang ${_currentPosition.value.longitude}");
          }
        }
      });
    });
  }

  void stopTrackingLiveLocation() {
    _positionStreamSubscription?.cancel();
    _positionStreamSubscription = null;
  }


  Future<void> checkLoginOrNot() async {
    print("called");
    final baseController = BaseController();
    final apiUrl = ApiEndPoints.mainBaseURL + ApiEndPoints.attLoginCheck;
    final apiToken = ApiEndPoints.apiToken;
    var empId = await CacheHelper.getData('empId');
    final requestData = {
      "api_key": apiToken,
      "user_id": empId,
    };
    try {
      final baseClient = BaseClient();
      var response = await baseClient
          .postMethod(apiUrl, requestData)
          .catchError(baseController.handleError);
      // print("response$response");
      final responseData = json.decode(response.body);
      checkAttendance(CheckAttendance.fromJson(responseData));
      print("chk login $responseData");
      if (response.statusCode == 200) {
        final responseData = json.decode(response.body);
        checkAttendance(CheckAttendance.fromJson(responseData));

        if (checkAttendance.value.status == "Success") {
          print("not login for today");
        } else {
          throw Exception('Status is not true');
        }
      } else if (response.statusCode == 401) {
        final responseData = json.decode(response.body);
        checkAttendance(CheckAttendance.fromJson(responseData));
        if (checkAttendance.value.status == "Failed") {
          print("already login");
        } else {
          throw Exception('Status is not true');
        }
      }
    } catch (error) {
      if (kDebugMode) {
        print("Error $error");
      }
    } finally {
      // loginLoading.value = true;
    }
  }
}
