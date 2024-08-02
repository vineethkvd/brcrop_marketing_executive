import 'dart:convert';
import 'dart:io';

import 'package:brcrop_marketing_executive/features/home/view/home_screen.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

import '../../../../core/helpers/cache_helper/cache_helper.dart';
import '../../../../core/helpers/network/helpers/api_endpoints.dart';
import '../../../../core/utils/shared/components/widgets/custom_snackbar.dart';
import '../../../core/helpers/network/helpers/app_exceptions.dart';
import '../../../core/helpers/network/helpers/base_client.dart';
import '../../../core/helpers/network/helpers/base_controller.dart';
import '../../../core/helpers/network/helpers/dialog_helper.dart';
import '../model/attendance_login_model.dart';
import '../model/attendance_logout_model.dart';

class AttendanceLogoutController extends GetxController {
  var attendanceLogoutModel = AttendanceLogoutModel().obs;
  var logoutLoading = true.obs;

  Future<void> attendanceLogoutUser() async {
    final baseController = BaseController();
    // baseController.showLoading('Fetching slider data...');

    logoutLoading.value = false;
    const apiUrl = ApiEndPoints.mainBaseURL + ApiEndPoints.attendanceLogout;
    const apiToken = ApiEndPoints.apiToken;
    var empId = await CacheHelper.getData('empId');
    final requestData = {
      "api_key": apiToken,
      "emp_id": empId,
    };

    try {
      final baseClient = BaseClient();
      var response = await baseClient.postMethod(apiUrl, requestData);

      if (response.statusCode == 200) {

        final responseData = json.decode(response.body);
        attendanceLogoutModel(AttendanceLogoutModel.fromJson(responseData));
        print(responseData);

        if (attendanceLogoutModel.value.status == "Success") {
          print("success ");
          CustomSnackBar.showCustomSnackBar(
              message: "Success",
              title: '${attendanceLogoutModel.value.message}');
        } else {
          throw Exception('Status is not true');
        }
      } else if (response.statusCode == 401) {

        final responseData = json.decode(response.body);
        attendanceLogoutModel(AttendanceLogoutModel.fromJson(responseData));
        print(responseData);
        if (attendanceLogoutModel.value.status == "Failed") {
          print("failed");
          CustomSnackBar.showCustomErrorSnackBar(
              title: "Failed",
              message: '${attendanceLogoutModel.value.message}');
          print("failed");
        } else {
          throw Exception('Status is not true');
        }
      } else {
        throw Exception('Failed');
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
      logoutLoading.value = true;
    }
  }
}
