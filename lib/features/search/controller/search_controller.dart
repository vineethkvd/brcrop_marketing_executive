import 'dart:convert';
import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

import '../../../core/helpers/network/helpers/api_endpoints.dart';
import '../model/search_model.dart';

class SearchProductsController extends GetxController {
  var searchModel = SearchModel().obs;
  var searchResults = <Data>[].obs;
  // var loading = false.obs;
  final Rx<GlobalKey<FormState>> _formKey = GlobalKey<FormState>().obs;

  Rx<GlobalKey<FormState>> get formKey => _formKey;
  final Rx<TextEditingController> searchItems = TextEditingController().obs;
  Future<void> searchProduct({String query=""}) async {
    // loading.value = true;
    const apiUrl = ApiEndPoints.baseURL + ApiEndPoints.search;
    const apiToken = ApiEndPoints.apiToken;
    final headers = {'Content-Type': 'application/json'};
    final requestData = {"api_key": apiToken, "search": query.trim()};
    final jsonBody = json.encode(requestData);

    try {
      final response = await http.post(
        Uri.parse(apiUrl),
        headers: headers,
        body: jsonBody,
      );
      final responseData = json.decode(response.body);
      print("responseData $responseData");
      if (response.statusCode == 200) {
        final responseData = json.decode(response.body);
        searchModel(SearchModel.fromJson(responseData));
        if (searchModel.value.status == true) {
          print("success");
        }
      } else if (response.statusCode == 401) {
        final responseData = json.decode(response.body);
        searchModel(SearchModel.fromJson(responseData));
        if (searchModel.value.status == false) {
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
      // loading.value = false;
    }
  }
}
