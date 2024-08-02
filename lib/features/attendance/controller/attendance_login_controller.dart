import 'dart:convert';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';

import '../../../../core/helpers/cache_helper/cache_helper.dart';
import '../../../../core/helpers/network/helpers/api_endpoints.dart';
import '../../../../core/utils/shared/components/widgets/custom_snackbar.dart';
import '../../../core/helpers/network/helpers/app_exceptions.dart';
import '../../../core/helpers/network/helpers/base_client.dart';
import '../../../core/helpers/network/helpers/base_controller.dart';
import '../../../core/helpers/network/helpers/dialog_helper.dart';
import '../model/attendance_login_model.dart';
import '../repository/location_service.dart';

class AttendanceLoginController extends GetxController {
  var attendanceLoginModel = AttendanceLoginModel().obs;
  var loginLoading = true.obs;

  var empLocation = ''.obs;
  var empLatitude = ''.obs;
  var empLongtitude = ''.obs;

  Position? _currentPosition;
  LocationPermission? permission;

  Position? get currentPosition => _currentPosition;
  final LocationService _locationService = LocationService();
  Placemark? _currentLocationName;

  Placemark? get currentLocationName => _currentLocationName; 

  Future<void> attendanceLoginUser(
      {required String emp_location,
      required String emp_latitude,
      required String emp_longtitude}) async {
    final baseController = BaseController();
    // baseController.showLoading('Fetching slider data...');

    loginLoading.value = false;
    const apiUrl = ApiEndPoints.mainBaseURL + ApiEndPoints.attendanceLogin;
    const apiToken = ApiEndPoints.apiToken;
    var empId = await CacheHelper.getData('empId');
    final requestData = {
      "api_key": apiToken,
      "emp_id": empId,
      "emp_location": emp_location,
      "emp_latitude": emp_latitude,
      "emp_longtitude": emp_longtitude
    };

    try {
      final baseClient = BaseClient();
      var response = await baseClient.postMethod(apiUrl, requestData);
      final responseData = json.decode(response.body);
      print(responseData);

      if (response.statusCode == 200) {
        final responseData = json.decode(response.body);
        attendanceLoginModel(AttendanceLoginModel.fromJson(responseData));

        if (attendanceLoginModel.value.status == "Success") {
          print("success ");
          loginLoading.value = true;
          CustomSnackBar.showCustomSnackBar(
              message: "Success",
              title: '${attendanceLoginModel.value.message}');
        } else {
          throw Exception('Status is not true');
        }
      } else if (response.statusCode == 401) {
        final responseData = json.decode(response.body);
        attendanceLoginModel(AttendanceLoginModel.fromJson(responseData));
        if (attendanceLoginModel.value.status == "Failed") {
          print("failed");
          CustomSnackBar.showCustomErrorSnackBar(
              title: "Failed",
              message: '${attendanceLoginModel.value.message}');
          print("failed to fetch category Item");
        } else {
          throw Exception('Status is not true');
        }
      }
    } catch (error) {
      if (error is BadRequestException) {
        var apiError = json.decode(error.message!);
        DialogHelper.showErroDialog(description: apiError["reason"]);
      } else {
        baseController.handleError(error);
      }
    } finally {
      // baseController.hideLoading();
      loginLoading.value = true;
    }
  }

  Future<void> determinePosition() async {
    bool serviceEnabled;
    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      _currentPosition = null;
    }
    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        _currentPosition = null;
      }
    }
    if (permission == LocationPermission.deniedForever) {
      _currentPosition = null;
    }
    _currentPosition = await Geolocator.getCurrentPosition();
    _currentLocationName =
        await LocationService.getLocationName(_currentPosition);
    empLatitude.value = _currentPosition!.latitude.toString();
    empLongtitude.value = _currentPosition!.longitude.toString();
    empLocation.value =
        "${currentLocationName!.locality!.toString()}, ${currentLocationName!.subLocality!.toString()}, ${currentLocationName!.street!.toString()}";
  }
}