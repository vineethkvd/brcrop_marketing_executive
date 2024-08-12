import 'dart:convert';
import 'dart:io';

import 'package:brcrop_marketing_executive/features/bottom_navbar/view/bottom-navbar_screen.dart';
import 'package:brcrop_marketing_executive/features/payment/view/showqr_screen.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

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
import '../model/payonline_model.dart';

class PayOnlineController extends GetxController {
  var payOnlineModel = PayOnlineModel().obs;
  final BottomNavBarController bottomNavBarController = Get.put(BottomNavBarController());
  var success_link = ''.obs;
  var failed_link = ''.obs;

  var tranId = ''.obs;
  var hitPaymentModel = HitPaymentModel().obs;
  var qrImg = ''.obs;

  Future<void> payOnline(
      {required int order_amount,
      required String dealer_id,
      required int paid_amount,
      required String transfer_id,required String orderType}) async {
    final baseController = BaseController();
    const apiUrl = ApiEndPoints.mainBaseURL + ApiEndPoints.mePayment;
    print("apiUrl $apiUrl");
    const apiToken = ApiEndPoints.apiToken;
    print("apiUrl $apiToken");
    var empId = await CacheHelper.getData('empId');
    final requestData = {
      "api_key": apiToken,
      "me_id": empId,
      "order_amount": order_amount,
      "payment_type": "Pay Online",
      "dealer_id": dealer_id,
      "paid_amount": paid_amount,
      "transfer_id": transfer_id,
      "order_type": orderType
    };


    try {
      final baseClient = BaseClient();
      var response = await baseClient.postMethod(apiUrl, requestData);

      if (response.statusCode == 200) {
        final responseData = json.decode(response.body);
        print("responseData $responseData");
        payOnlineModel(PayOnlineModel.fromJson(responseData));

        print("status: ${payOnlineModel.value.status}");
        if (payOnlineModel.value.status == true) {
          print("Success");
          success_link.value = "${payOnlineModel.value.successLink}";
          // qrImg.value = "${payOnlineModel.value.qrImage}";

          // CustomSnackBar.showCustomSnackBar(
          //     title: "Success",
          //     message: "${payOnlineModel.value.message}");

          tranId.value = payOnlineModel.value.tranId!;
          print("tid:${tranId.value}");
          CustomSnackBar.showCustomSnackBar(
              title: "Success", message: "${payOnlineModel.value.message}");
          if (tranId.value.isNotEmpty) {
            hitPayment(url: success_link.value, tranId: tranId.value);
          }
          bottomNavBarController.selectedIndex.value=0;
          Get.to(const NavigationScreen(),transition: Transition.leftToRightWithFade);
        } else if (payOnlineModel.value.status == false) {
          CustomSnackBar.showCustomErrorSnackBar(
              title: "Failed", message: "${payOnlineModel.value.message}");
        } else if (payOnlineModel.value.status == null) {
          CustomSnackBar.showCustomErrorSnackBar(
              title: "Failed", message: "${payOnlineModel.value.message}");
        } else {
          throw Exception('Status is neither true nor false');
        }
      } else if (response.statusCode == 401) {
        final responseData = json.decode(response.body);
        payOnlineModel(PayOnlineModel.fromJson(responseData));
        print("responseData $responseData");
        print("status: ${payOnlineModel.value.status}");
        if (payOnlineModel.value.status == false) {
          print("failed");
          CustomSnackBar.showCustomErrorSnackBar(
              title: "Failed", message: "${payOnlineModel.value.message}");
          failed_link.value = "${payOnlineModel.value.failedLink}";
          tranId.value = payOnlineModel.value.tranId!;
          print("tid:${tranId.value}");
          if (tranId.value.isNotEmpty) {
            hitPayment(url: failed_link.value, tranId: tranId.value);
          }
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
      final responseData = json.decode(response.body);
      print("responseData$responseData");
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
