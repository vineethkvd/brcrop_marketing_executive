import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';

import '../../../core/helpers/cache_helper/cache_helper.dart';
import '../../../core/helpers/network/helpers/api_endpoints.dart';
import '../../../core/helpers/network/helpers/base_client.dart';
import '../../../core/helpers/network/helpers/base_controller.dart';
import '../../../core/utils/shared/components/widgets/custom_snackbar.dart';
import '../model/monthly_target_model.dart';

class MonthlyTargetController extends GetxController {
  var loading = true.obs;

var monthlyTarget=''.obs;


  var monthlyTargetModel = MonthlyTargetModel().obs;

  Future<void> monthlyTargets() async {
    final baseController = BaseController();
    // baseController.showLoading('Fetching slider data...');

    loading.value = false;
    const apiUrl = ApiEndPoints.mainBaseURL + ApiEndPoints.monthlyTarget;
    const apiToken = ApiEndPoints.apiToken;
    var empId = await CacheHelper.getData('empId');
    final requestData = {
      "api_key": apiToken,
    };
    try {
      final baseClient = BaseClient();
      var response = await baseClient
          .postMethod(apiUrl, requestData)
          .catchError(baseController.handleError);
      final responseData = json.decode(response.body);
      print(responseData);
      if (response.statusCode == 200) {
        final responseData = json.decode(response.body);
        monthlyTargetModel(MonthlyTargetModel.fromJson(responseData));

        if (monthlyTargetModel.value.status == true) {
          print("success to fetch category Item");
          monthlyTarget.value=monthlyTargetModel.value.monthTarget!;
        } else {
          throw Exception('Status is not true');
        }
      } else if (response.statusCode == 401) {
        final responseData = json.decode(response.body);
        monthlyTargetModel(MonthlyTargetModel.fromJson(responseData));
        loading.value = true;
        if (monthlyTargetModel.value.status == false) {
          print("failed");
          CustomSnackBar.showCustomErrorSnackBar(
              title: "Failed", message: '${monthlyTargetModel.value.message}');
          print("failed to fetch category Item");
        } else {
          throw Exception('Status is not true');
        }
      } else {
        throw Exception('Failed to fetch slider data');
      }
    } catch (error) {
      if (kDebugMode) {
        print("error: $error");
      }
    } finally {
      // baseController.hideLoading();
      loading.value = true;
    }
  }
}
