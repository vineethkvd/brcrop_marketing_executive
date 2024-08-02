import 'dart:convert';
import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

import '../../../core/helpers/network/helpers/api_endpoints.dart';
import '../model/varients_model.dart';

class VarientController extends GetxController {
  var varientsModel = VarientsModel().obs;
  var dataList = <Data>[].obs;
  var selectedItem = ''.obs;
  var selectedId = ''.obs;
  var price = ''.obs;
  var firstPrice = ''.obs;
  var productId = ''.obs;
  // var loading = false.obs;
  final Rx<GlobalKey<FormState>> _formKey = GlobalKey<FormState>().obs;

  Rx<GlobalKey<FormState>> get formKey => _formKey;
  final Rx<TextEditingController> searchItems = TextEditingController().obs;
  Future<void> proctVarient({required String productID}) async {
    // loading.value = true;
    const apiUrl = ApiEndPoints.baseURL + ApiEndPoints.variant;
    const apiToken = ApiEndPoints.apiToken;
    final headers = {'Content-Type': 'application/json'};
    final requestData = {"api_key": apiToken, "product_id": productID};
    final jsonBody = json.encode(requestData);
    print("requestData$requestData");

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
        varientsModel(VarientsModel.fromJson(responseData));
        if (varientsModel.value.status == true) {
          print("success");
          dataList.clear();
          dataList.assignAll(varientsModel.value.data ?? []);
          firstPrice.value = dataList.first.proPrice!;
        }
      } else if (response.statusCode == 401) {
        final responseData = json.decode(response.body);
        varientsModel(VarientsModel.fromJson(responseData));
        if (varientsModel.value.status == false) {
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
