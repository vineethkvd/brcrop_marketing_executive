import 'dart:convert';
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:get/get.dart';

import '../../../core/helpers/cache_helper/cache_helper.dart';
import '../../../core/helpers/network/helpers/api_endpoints.dart';
import 'package:http/http.dart' as http;

import '../../../core/helpers/network/helpers/base_client.dart';
import '../../../core/helpers/network/helpers/base_controller.dart';
import '../model/cancel_policy_model.dart';
import '../model/privacy_policy_model.dart';

class CancelPolicyController extends GetxController {
  var cancelPolicyModel = CancelPolicyModel().obs;
  var data = ''.obs;
  Future<void> fetchCancelPolicy() async  {
    final baseController = BaseController();
    const apiUrl = ApiEndPoints.baseURL + ApiEndPoints.cancelPolicy;
    const apiToken = ApiEndPoints.apiToken;
    final requestData = {
      "api_key": apiToken,
    };

    try {
      final baseClient = BaseClient();
      var response = await baseClient
          .postMethod(apiUrl, requestData)
          .catchError(baseController.handleError);

      if (response.statusCode == 200) {
        final responseData = json.decode(response.body);
        cancelPolicyModel(CancelPolicyModel.fromJson(responseData));
        print("success");
        data.value = cancelPolicyModel.value.cancelPolicy!;
      } else if (response.statusCode == 401) {
        final responseData = json.decode(response.body);
        cancelPolicyModel(CancelPolicyModel.fromJson(responseData));
        print("success");
        data.value = cancelPolicyModel.value.cancelPolicy!;
      } else {
        throw Exception('Failed to fetch slider data');
      }
    } catch (error) {
      if (kDebugMode) {
        print("error: $error");
      }
    } finally {
      // baseController.hideLoading();
      // loading.value = true;
    }
  }
}
