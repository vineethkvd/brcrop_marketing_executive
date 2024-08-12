import 'dart:convert';
import 'dart:io';

import 'package:brcrop_marketing_executive/features/bottom_navbar/view/bottom-navbar_screen.dart';
import 'package:brcrop_marketing_executive/features/order_product/view/order_product_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/helpers/cache_helper/cache_helper.dart';
import '../../../core/helpers/network/helpers/api_endpoints.dart';
import '../../../core/helpers/network/helpers/app_exceptions.dart';
import '../../../core/helpers/network/helpers/base_client.dart';
import '../../../core/helpers/network/helpers/base_controller.dart';
import '../../../core/helpers/network/helpers/dialog_helper.dart';
import '../../../core/utils/shared/components/widgets/custom_snackbar.dart';
import '../../bottom_navbar/controller/bottom_navbar_controller.dart';
import '../model/dealer_list_model.dart';
import 'package:http/http.dart' as http;

import '../model/hit_payment_model.dart';
import '../model/merchant_payment_model.dart';

class MerchantPaymentController extends GetxController {
  var merchantPaymentModel = MerchantPaymentModel().obs;
  final BottomNavBarController bottomNavBarController =
      Get.put(BottomNavBarController());
  var success_link = ''.obs;
  var failed_link = ''.obs;

  var tranId = ''.obs;
  var hitPaymentModel = HitPaymentModel().obs;

  Future<void> payMerchant(
      {required int order_amount,
      required String payment_type,
      required String dealer_id,
      required String orderType}) async {
    final baseController = BaseController();
    const apiUrl = ApiEndPoints.mainBaseURL + ApiEndPoints.mePayment;
    print("apiUrl $apiUrl");
    const apiToken = ApiEndPoints.apiToken;

    var empId = await CacheHelper.getData('empId');
    final requestData = {
      "api_key": apiToken,
      "me_id": empId,
      "order_amount": order_amount,
      "payment_type": payment_type,
      "dealer_id": dealer_id,
      "order_type": orderType
    };

    try {
      final baseClient = BaseClient();
      var response = await baseClient.postMethod(apiUrl, requestData);

      if (response.statusCode == 200) {
        final responseData = json.decode(response.body);
        merchantPaymentModel(MerchantPaymentModel.fromJson(responseData));

        print("status: ${merchantPaymentModel.value.status}");
        if (merchantPaymentModel.value.status == true) {
          if (payment_type == 'Cash on Delivery') {
            tranId.value = merchantPaymentModel.value.tranId!;
            print("success");
            success_link.value = "${merchantPaymentModel.value.successLink}";
            CustomSnackBar.showCustomSnackBar(
                title: "Success",
                message: "${merchantPaymentModel.value.message}");

            if (tranId.value.isNotEmpty) {
              hitPayment(url: success_link.value, tranId: tranId.value);
            }
            bottomNavBarController.selectedIndex.value = 0;
            Get.to(const NavigationScreen(),
                transition: Transition.leftToRightWithFade);
          } else if (payment_type == 'Credit Term') {
            tranId.value = merchantPaymentModel.value.tranId!;
            print("success");
            success_link.value = "${merchantPaymentModel.value.successLink}";
            CustomSnackBar.showCustomSnackBar(
                title: "Success",
                message: "${merchantPaymentModel.value.message}");
            if (tranId.value.isNotEmpty) {
              hitPayment(url: success_link.value, tranId: tranId.value);
            }
            bottomNavBarController.selectedIndex.value = 0;
            Get.to(const NavigationScreen(),
                transition: Transition.leftToRightWithFade);
          }
          print("Success");
        } else if (merchantPaymentModel.value.status == false) {
          print("failed");
          if (payment_type == 'Credit Term') {
            failed_link.value = "${merchantPaymentModel.value.failedLink}";
            hitPayment(url: failed_link.value, tranId: tranId.value);
            CustomSnackBar.showCustomErrorSnackBar(
                title: "Failed",
                message: "${merchantPaymentModel.value.message}");
          } else if (payment_type == 'Credit Term') {
            failed_link.value = "${merchantPaymentModel.value.failedLink}";
            hitPayment(url: failed_link.value, tranId: tranId.value);
            CustomSnackBar.showCustomErrorSnackBar(
                title: "Failed",
                message: "${merchantPaymentModel.value.message}");
          }
        } else {
          throw Exception('Status is neither true nor false');
        }
      } else if (response.statusCode == 401) {
        final responseData = json.decode(response.body);
        merchantPaymentModel(MerchantPaymentModel.fromJson(responseData));

        print("status: ${merchantPaymentModel.value.status}");
        if (merchantPaymentModel.value.status == false) {
          print("failed");
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
      // loading.value = true;
    }
  }

  Future<void> hitPayment({required String url, required String tranId}) async {
    final baseController = BaseController();
    // baseController.showLoading('Fetching slider data...');

    // loading.value = false;
    final apiUrl = url;

    final requestData = {"t_id": tranId};
    try {
      final baseClient = BaseClient();
      var response = await baseClient.postMethod(apiUrl, requestData);

      if (response.statusCode == 200) {
        final responseData = json.decode(response.body);
        hitPaymentModel(HitPaymentModel.fromJson(responseData));
        CustomSnackBar.showCustomSnackBar(
            title: "Success", message: "payment success");
      } else if (response.statusCode == 401) {
        final responseData = json.decode(response.body);
        hitPaymentModel(HitPaymentModel.fromJson(responseData));
        CustomSnackBar.showCustomErrorSnackBar(
            title: "Failed", message: "payment fails");
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
      // loading.value = true;
    }
  }
}
