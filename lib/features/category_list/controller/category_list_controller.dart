import 'dart:convert';
import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

import '../../../core/helpers/network/helpers/api_endpoints.dart';
import '../model/category_list_model.dart';


class CategoryListController extends GetxController {
  var categoryListModel = const CategoryListModel().obs;
  var isLoading=false.obs;
  Future<void> fetchCategoryProducts({required String categoryId}) async {
    isLoading.value = true;
    const apiUrl = ApiEndPoints.baseURL + ApiEndPoints.product;
    const apiToken = ApiEndPoints.apiToken;
    final headers = {'Content-Type': 'application/json'};
    final requestData = {"api_key": apiToken, "category_id": categoryId};
    final jsonBody = json.encode(requestData);

    try {
      isLoading.value = false;
      final response = await http.post(
        Uri.parse(apiUrl),
        headers: headers,
        body: jsonBody,
      );
      final responseData = json.decode(response.body);
      print("responseData $responseData");
      if (response.statusCode == 200) {
        isLoading.value = false;
        final responseData = json.decode(response.body);
        categoryListModel(CategoryListModel.fromJson(responseData));
        if (categoryListModel.value.status == true) {
          print("success");
        }
      } else if (response.statusCode == 401) {
        isLoading.value = false;
        final responseData = json.decode(response.body);
        categoryListModel(CategoryListModel.fromJson(responseData));
        if (categoryListModel.value.status == false) {
          print("fails");
        }
      } else {
        throw Exception('Request failed with status: ${response.statusCode}');
      }
    } on http.ClientException catch (e) {
      throw Exception('HTTP Client Exception: $e');
    } on SocketException catch (e) {
      throw Exception('Socket Exception: $e');
    } catch (e) {
      throw Exception('Error: $e');
    } finally {
      isLoading.value = false;
    }
  }
}

