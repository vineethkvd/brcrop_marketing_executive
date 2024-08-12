import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

import '../../../core/helpers/cache_helper/cache_helper.dart';
import '../../../core/helpers/network/helpers/api_endpoints.dart';
import '../../../core/helpers/network/helpers/app_exceptions.dart';
import '../../../core/helpers/network/helpers/base_client.dart';
import '../../../core/helpers/network/helpers/base_controller.dart';
import '../../../core/helpers/network/helpers/dialog_helper.dart';
import '../model/cart_model.dart';
import '../model/dropdown_model.dart';

class CartController extends GetxController {
  var cartModel = CartModel().obs;
  var productList = <Data>[].obs;
  var priceTotal = ''.obs;
  var curTotal = ''.obs;
  var filteredProducts = <Data>[].obs;

  Future<void> fetchCartProducts({required String orderType}) async {
    final baseController = BaseController();
    // baseController.showLoading('Fetching slider data...');

    const apiUrl = ApiEndPoints.mainBaseURL + ApiEndPoints.cartList;
    const apiToken = ApiEndPoints.apiToken;
    var empId = await CacheHelper.getData('empId');
    print("empId $empId");
    final requestData = {
      "api_key": apiToken,
      "me_id": empId,
      "order_type": orderType
    };

    try {
      final baseClient = BaseClient();
      var response = await baseClient
          .postMethod(apiUrl, requestData)
          .catchError(baseController.handleError);
      if (response.statusCode == 200) {
        final responseData = json.decode(response.body);
        cartModel(CartModel.fromJson(responseData));

        if (cartModel.value.status == true) {
          print("success to fetchItem");
          productList.value.clear();
          productList.assignAll(cartModel.value.data ?? []);
          print("${productList.value}");
          priceTotal.value = "${cartModel.value.totalAmount}";
        } else {
          throw Exception('Status is not true');
        }
      } else if (response.statusCode == 401) {
        final responseData = json.decode(response.body);
        cartModel(CartModel.fromJson(responseData));
        if (cartModel.value.status == false) {
          print("failed to fetch Item");
        } else {
          throw Exception('Status is not true');
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

  var dropdownCart = <DropDownModel>[
    DropDownModel(name: 'Regular', value: '1'),
    DropDownModel(name: 'Scheme', value: '2'),
  ].obs;
  var selectedValue = ''.obs;
  var selectedName = ''.obs;
}
