import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';

import '../../../core/helpers/cache_helper/cache_helper.dart';
import '../../../core/helpers/network/helpers/api_endpoints.dart';
import '../../../core/helpers/network/helpers/base_client.dart';
import '../../../core/helpers/network/helpers/base_controller.dart';
import '../../../core/utils/shared/components/widgets/custom_snackbar.dart';
import '../model/settings_model.dart';

class SettingsController extends GetxController {
  final formKey = GlobalKey<FormState>().obs;
  var loading = true.obs;
  final currentpass = TextEditingController().obs;
  final newpass = TextEditingController().obs;
  final conformpass = TextEditingController().obs;
  var currPasswordVisible = true.obs;
  var newPasswordVisible = true.obs;
  var confPasswordVisible = true.obs;

  void updateVisibility({required RxBool value}) {
    value.toggle();
    update();
  }

  var settingsModel = SettingsModel().obs;

  Future<void> changePassword({
    required String currentPass,
    required String newPass,
    required String confPass,
  }) async {
    final baseController = BaseController();
    // baseController.showLoading('Fetching slider data...');

    loading.value = false;
    const apiUrl = ApiEndPoints.mainBaseURL + ApiEndPoints.settings;
    const apiToken = ApiEndPoints.apiToken;
    var empId = await CacheHelper.getData('empId');
    final requestData = {
    "api_key": apiToken,
    "emp_id": empId,
    "current_pass": currentPass,
    "new_pass": newPass,
    "confirm_pass": confPass
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
        settingsModel(SettingsModel.fromJson(responseData));

        if (settingsModel.value.status == "Success") {
          print("success to fetch category Item");
          CustomSnackBar.showCustomSnackBar(
              message: "Success", title: '${settingsModel.value.message}');
        } else {
          throw Exception('Status is not true');
        }
      } else if (response.statusCode == 401) {
        final responseData = json.decode(response.body);
        settingsModel(SettingsModel.fromJson(responseData));
        loading.value = true;
        if (settingsModel.value.status == "Failed") {
          print("failed");
          CustomSnackBar.showCustomErrorSnackBar(
              title: "Failed", message: '${settingsModel.value.message}');
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
