import 'dart:convert';
import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../../core/helpers/cache_helper/cache_helper.dart';
import '../../../core/helpers/network/helpers/api_endpoints.dart';
import '../../../core/helpers/network/helpers/app_exceptions.dart';
import '../../../core/helpers/network/helpers/base_client.dart';
import '../../../core/helpers/network/helpers/base_controller.dart';
import '../../../core/helpers/network/helpers/dialog_helper.dart';
import '../../../core/utils/shared/components/widgets/custom_snackbar.dart';
import '../model/hit_payment_model.dart';
import '../model/payment_model.dart';
import 'package:http/http.dart' as http;

class PaymentController extends GetxController {
  var paymentModel = PaymentModel().obs;
  var hitPaymentModel = HitPaymentModel().obs;
  var success_link = ''.obs;
  var failed_link = ''.obs;
  var tranId = ''.obs;
  final Rx<GlobalKey<FormState>> _formKey = GlobalKey<FormState>().obs;

  Rx<GlobalKey<FormState>> get formKey => _formKey;
  final Rx<TextEditingController> input = TextEditingController().obs;

  Future<void> initPayment({
    required String order_amount,
    required String credit_days,
    required String payment_type,
  }) async {
    final baseController = BaseController();
    // baseController.showLoading('Fetching slider data...');

    // loading.value = false;
    print("credit_days$order_amount");
    var amount = order_amount.toString();
    const apiUrl = ApiEndPoints.baseURL + ApiEndPoints.payment;
    print("apiUrl $apiUrl");
    const apiToken = ApiEndPoints.apiToken;

    var dealerID = await CacheHelper.getData('dealerId');
    final requestData = {
      "api_key": apiToken,
      "dealer_id": dealerID,
      "order_amount": amount,
      "payment_type": payment_type,
      "credit_days": credit_days
    };

    try {
      final baseClient = BaseClient();
      var response = await baseClient.postMethod(apiUrl, requestData);

      if (response.statusCode == 200) {
        final responseData = json.decode(response.body);
        paymentModel(PaymentModel.fromJson(responseData));

        print("status: ${paymentModel.value.status}");
        if (paymentModel.value.status == true) {
          tranId.value = paymentModel.value.tranId!;
          print("success");
          success_link.value = "${paymentModel.value.successLink}";
          CustomSnackBar.showCustomSnackBar(
              title: "Success", message: "${paymentModel.value.message}");
          if (tranId.value.isNotEmpty) {
            hitPayment(url: success_link.value, tranId: tranId.value);
          }
        } else if (paymentModel.value.status == false) {
          CustomSnackBar.showCustomErrorSnackBar(
              title: "Failed", message: "${paymentModel.value.message}");
        } else if (paymentModel.value.status == null) {
          CustomSnackBar.showCustomErrorSnackBar(
              title: "Failed", message: "${paymentModel.value.message}");
        } else {
          throw Exception('Status is neither true nor false');
        }
      } else if (response.statusCode == 401) {
        final responseData = json.decode(response.body);
        paymentModel(PaymentModel.fromJson(responseData));
        if (paymentModel.value.status == false) {
          print("failed");
          CustomSnackBar.showCustomSnackBar(
              title: "Failed", message: "${paymentModel.value.message}");
          failed_link.value = "${paymentModel.value.failedLink}";
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
