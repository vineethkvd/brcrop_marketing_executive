import 'dart:convert';
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

import '../../../core/helpers/network/helpers/api_endpoints.dart';
import '../../../core/helpers/network/helpers/app_exceptions.dart';
import '../../../core/helpers/network/helpers/base_client.dart';
import '../../../core/helpers/network/helpers/base_controller.dart';
import '../../../core/helpers/network/helpers/dialog_helper.dart';
import '../model/category_model.dart';

class CategoryController extends GetxController {
  var categoryModel = CategoryModel().obs;
  var dataList = <Data>[].obs;
  var isLoading = false.obs;

  Future<void> fetchCategoryData() async {
    final baseController = BaseController();

    const apiUrl = ApiEndPoints.baseURL + ApiEndPoints.category;
    const apiToken = ApiEndPoints.apiToken;
    final requestData = {"api_key": apiToken};

    try {
      isLoading.value = true;
      final baseClient = BaseClient();
      var response = await baseClient
          .postMethod(apiUrl, requestData)
          .catchError(baseController.handleError);

      if (response.statusCode == 200) {
        final responseData = json.decode(response.body);
        categoryModel(CategoryModel.fromJson(responseData));
        isLoading.value = false;

        if (categoryModel.value.status == true) {
          print("Successfully fetched category items");
          dataList.assignAll(categoryModel.value.data ?? []);
        } else {
          throw Exception('Status is not true');
        }
      } else if (response.statusCode == 401) {
        final responseData = json.decode(response.body);
        categoryModel(CategoryModel.fromJson(responseData));
        isLoading.value = false;

        if (categoryModel.value.status == false) {
          print("Failed to fetch category items");
        } else {
          throw Exception('Status is not true');
        }
      } else {
        throw Exception('Failed to fetch category data');
      }
    } catch (error) {
      if (kDebugMode) {
        print("Error: $error");
      }
    } finally {
      isLoading.value = false;
    }
  }
}