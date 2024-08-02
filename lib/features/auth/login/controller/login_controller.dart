import 'dart:convert';
import 'dart:io';

import 'package:brcrop_marketing_executive/features/home/view/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

import '../../../../core/helpers/cache_helper/cache_helper.dart';
import '../../../../core/helpers/network/helpers/api_endpoints.dart';
import '../../../../core/helpers/network/helpers/app_exceptions.dart';
import '../../../../core/helpers/network/helpers/base_client.dart';
import '../../../../core/helpers/network/helpers/base_controller.dart';
import '../../../../core/helpers/network/helpers/dialog_helper.dart';
import '../../../../core/utils/configs/styles/colors.dart';
import '../../../../core/utils/shared/components/widgets/custom_snackbar.dart';
import '../../../bottom_navbar/view/bottom-navbar_screen.dart';
import '../model/login_model.dart';

class LoginController extends GetxController {
  var loginModel = LoginModel().obs;
  var loading = true.obs;
  final Rx<GlobalKey<FormState>> _formKey = GlobalKey<FormState>().obs;

  Rx<GlobalKey<FormState>> get formKey => _formKey;
  final Rx<TextEditingController> phone = TextEditingController().obs;
  final Rx<TextEditingController> password = TextEditingController().obs;
  RxBool passwordVisible = true.obs;
  void updateVisibility() {
    passwordVisible.toggle();
    update();
  }

  Future<void> loginUser({
    required String phone,
    required String password,
  }) async {
    final baseController = BaseController();
    // baseController.showLoading('Fetching slider data...');

    loading.value = false;
    const apiUrl = ApiEndPoints.mainBaseURL + ApiEndPoints.login;
    const apiToken = ApiEndPoints.apiToken;
    final requestData = {
      "api_key": apiToken,
      "phone": phone,
      "password": password
    };

    try {
      final baseClient = BaseClient();
      var response = await baseClient.postMethod(apiUrl, requestData);

      if (response.statusCode == 200) {
        final responseData = json.decode(response.body);
        loginModel(LoginModel.fromJson(responseData));

        if (loginModel.value.status == "Success") {
          loading.value = true;
          print("success to fetch category Item");
          CacheHelper.saveData(
              "empId", loginModel.value.data!.empId.toString());
          CustomSnackBar.showCustomSnackBar(
              message: "Success", title: '${loginModel.value.message}');
          Get.offAll(const NavigationScreen(),
              transition: Transition.leftToRightWithFade);
        } else if (loginModel.value.status == false) {
          CustomSnackBar.showCustomErrorSnackBar(
              message: "Failed", title: '${loginModel.value.message}');
        } else {
          throw Exception('Status is not true');
        }
      } else if (response.statusCode == 401) {
        final responseData = json.decode(response.body);
        loginModel(LoginModel.fromJson(responseData));
        loading.value = true;
        if (loginModel.value.status == "Failed") {
          print("failed");
          CustomSnackBar.showCustomErrorSnackBar(
              title: "Failed", message: '${loginModel.value.message}');
          print("failed to fetch category Item");
        } else {
          throw Exception('Status is not true');
        }
      } else {
        throw Exception('Failed to fetch slider data');
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
      loading.value = true;
    }
  }
}
