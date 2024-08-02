import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:get/get.dart';

import '../../../core/helpers/network/helpers/api_endpoints.dart';
import '../../../core/helpers/network/helpers/base_client.dart';
import '../../../core/helpers/network/helpers/base_controller.dart';
import '../model/product_details_model.dart';

class ProductDetailController extends GetxController {
  var productDetailModel = ProductDetailModel().obs;
  var quantity = '1'.obs;
  var categoryName = ''.obs;
  var proImg1 = ''.obs;
  var price = ''.obs;
  var productName = ''.obs;
  var category_id = ''.obs;
  var description = ''.obs;
  var proId = ''.obs;

  Future<void> incrementQuantity() async {
    quantity.value = (int.parse(quantity.value) + 1).toString();
  }

  Future<void> decrementQuantity() async {
    int val = int.parse(quantity.value);
    if (val > 1) {
      quantity.value = (val - 1).toString();
    }
  }

  var dataList = <Data>[].obs;

  Future<void> fetchProductd({required String proId}) async {
    final baseController = BaseController();

    const apiUrl = ApiEndPoints.baseURL + ApiEndPoints.productDetails;
    const apiToken = ApiEndPoints.apiToken;
    var requestData = {"api_key": apiToken, "pro_id": proId};

    try {
      final baseClient = BaseClient();
      var response = await baseClient
          .postMethod(apiUrl, requestData)
          .catchError(baseController.handleError);

      if (response.statusCode == 200) {
        final responseData = json.decode(response.body);
        print("responseData $responseData");
        productDetailModel(ProductDetailModel.fromJson(responseData));

        if (productDetailModel.value.status == true) {
          print("Success to fetch ");
          dataList.assignAll(productDetailModel.value.data ?? []);
        } else {
          throw Exception('Status is not true');
        }
      } else if (response.statusCode == 400) {
        final responseData = json.decode(response.body);
        productDetailModel(ProductDetailModel.fromJson(responseData));

        if (productDetailModel.value.status == false) {
          if (kDebugMode) {
            print(
                "Failed to fetch slider data: ${productDetailModel.value.message}");
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
      // baseController.hideLoading();
    }
  }
}
