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
import '../model/attendance_history_model.dart';
import '../model/attendance_login_model.dart';
import '../model/attendance_logout_model.dart';

class AttendanceHistoryController extends GetxController {
  var attendanceHistoryModel = AttendanceHistoryModel().obs;
  var loginLoading = true.obs;
  var attendanceList = <AttendanceHistory>[].obs;

  Future<void> attendanceHistory() async  {
    final baseController = BaseController();
    // baseController.showLoading('Fetching slider data...');

    loginLoading.value = false;
    const apiUrl = ApiEndPoints.mainBaseURL + ApiEndPoints.attendanceHistory;
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
        attendanceHistoryModel(AttendanceHistoryModel.fromJson(responseData));

        if (attendanceHistoryModel.value.status == true) {
          print("fetch history success ");
          attendanceList.assignAll(attendanceHistoryModel.value.attendanceHistory ?? []);
          loginLoading.value = true;
        } else {
          throw Exception('Status is not true');
        }
      } else if (response.statusCode == 401) {
        final responseData = json.decode(response.body);
        attendanceHistoryModel(AttendanceHistoryModel.fromJson(responseData));
        if (attendanceHistoryModel.value.status == false) {
          loginLoading.value = true;
          print("failed");
          CustomSnackBar.showCustomErrorSnackBar(
              title: "Failed",
              message: '${attendanceHistoryModel.value.message}');
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
}
