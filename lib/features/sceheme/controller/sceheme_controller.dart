import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import '../../../core/helpers/network/helpers/api_endpoints.dart';
import '../../../core/helpers/network/helpers/base_client.dart';
import '../../../core/helpers/network/helpers/base_controller.dart';
import '../model/sceheme_model.dart';

class SchemeController extends GetxController {
  var schemeModel = const ScehemeModel().obs;
  var productDetails = <ProductDetail>[].obs;
  var isLoading = false.obs;
  Future<void> fetchScheme() async {
    final baseController = BaseController();

    const apiUrl = ApiEndPoints.baseURL + ApiEndPoints.shecme;
    const apiToken = ApiEndPoints.apiToken;
    var requestData = {"api_key": apiToken};
    print("$apiUrl");

    try {
      isLoading.value=true;
      final baseClient = BaseClient();
      var response = await baseClient
          .postMethod(apiUrl, requestData)
          .catchError(baseController.handleError);

      if (response.statusCode == 200) {
        isLoading.value=false;
        final responseData = json.decode(response.body);
        print("responseData $responseData");
        schemeModel(ScehemeModel.fromJson(responseData));

        if (schemeModel.value.status == true) {
          print("Success to fetch ");
        } else {
          throw Exception('Status is not true');
        }
      } else if (response.statusCode == 400) {
        isLoading.value=false;
        final responseData = json.decode(response.body);
        schemeModel(ScehemeModel.fromJson(responseData));

        if (schemeModel.value.status == false) {
          if (kDebugMode) {
            print("Failed to fetch slider data: ${schemeModel.value.message}");
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
      isLoading.value=false;
    }
  }
}