import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import '../../../core/helpers/cache_helper/cache_helper.dart';
import '../../../core/helpers/network/helpers/api_endpoints.dart';
import '../../../core/helpers/network/helpers/base_client.dart';
import '../../../core/helpers/network/helpers/base_controller.dart';
import '../model/reason/reason_model.dart';
import '../model/return_model.dart';

class ReturnController extends GetxController {
  var returnModel = const ReturnModel().obs;
  var isLoading = false.obs;
  final Rx<GlobalKey<FormState>> _formKey = GlobalKey<FormState>().obs;

  Rx<GlobalKey<FormState>> get formKey => _formKey;
  final Rx<TextEditingController> reason = TextEditingController().obs;
  Future<void> fetchReturnProducts() async {
    final baseController = BaseController();

    const apiUrl = ApiEndPoints.mainBaseURL + ApiEndPoints.returnOrder;
    const apiToken = ApiEndPoints.apiToken;
    var empId = await CacheHelper.getData('empId');
    print("empId $empId");
    var requestData = {"api_key": apiToken, "me_id": empId};
    try {
      isLoading.value = true;
      final baseClient = BaseClient();
      var response = await baseClient
          .postMethod(apiUrl, requestData)
          .catchError(baseController.handleError);

      if (response.statusCode == 200) {
        isLoading.value = false;
        final responseData = json.decode(response.body);
        print("responseData $responseData");
        returnModel(ReturnModel.fromJson(responseData));

        if (returnModel.value.status == "Success") {
          print("Success to fetch ");
        } else {
          throw Exception('Status is not true');
        }
      } else if (response.statusCode == 400) {
        isLoading.value = false;
        final responseData = json.decode(response.body);
        returnModel(ReturnModel.fromJson(responseData));

        if (returnModel.value.status == "Failed") {
          if (kDebugMode) {
            print("Failed to fetch slider data: ${returnModel.value.message}");
          }
        } else {
          throw Exception('Status is not false');
        }
      } else {
        throw Exception('Failed to fetch slider data');
      }
    } catch (error) {
      if (kDebugMode) {
        print("error: $error");
      }
    } finally {
      isLoading.value = false;
    }
  }

  var returnReasonModel = ReturnReasonModel().obs;
  Future<void> fetchReturnReason(
      {required String reason, required String orderId}) async {
    final baseController = BaseController();

    const apiUrl = ApiEndPoints.baseURL + ApiEndPoints.returnReason;
    const apiToken = ApiEndPoints.apiToken;
    var requestData = {
      "api_key": apiToken,
      "order_id": orderId,
      "reason": reason
    };
    try {
      isLoading.value = true;
      final baseClient = BaseClient();
      var response = await baseClient
          .postMethod(apiUrl, requestData)
          .catchError(baseController.handleError);

      if (response.statusCode == 200) {
        isLoading.value = false;
        final responseData = json.decode(response.body);
        print("responseData $responseData");
        returnReasonModel(ReturnReasonModel.fromJson(responseData));
        Fluttertoast.showToast(
            msg: "${returnReasonModel.value.message}",
            backgroundColor: Colors.green);
        if (returnReasonModel.value.status == true) {
          print("Success to fetch ");
        } else {
          throw Exception('Status is not true');
        }
      } else if (response.statusCode == 400) {
        isLoading.value = false;
        final responseData = json.decode(response.body);
        returnReasonModel(ReturnReasonModel.fromJson(responseData));

        if (returnReasonModel.value.status == false) {
          Fluttertoast.showToast(
              msg: "${returnReasonModel.value.message}",
              backgroundColor: Colors.red);
          if (kDebugMode) {
            print(
                "Failed to fetch slider data: ${returnReasonModel.value.message}");
          }
        } else {
          throw Exception('Status is not false');
        }
      } else {
        throw Exception('Failed to fetch slider data');
      }
    } catch (error) {
      if (kDebugMode) {
        print("error: $error");
      }
    } finally {
      isLoading.value = false;
    }
  }
}
