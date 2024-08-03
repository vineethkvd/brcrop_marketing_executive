import 'dart:convert';
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

import '../../../../core/helpers/cache_helper/cache_helper.dart';
import '../../../../core/utils/configs/styles/colors.dart';
import '../../../core/helpers/network/helpers/api_endpoints.dart';
import '../../../core/helpers/network/helpers/app_exceptions.dart';
import '../../../core/helpers/network/helpers/base_client.dart';
import '../../../core/helpers/network/helpers/base_controller.dart';
import '../../../core/helpers/network/helpers/dialog_helper.dart';
import '../../../core/utils/shared/components/widgets/custom_snackbar.dart';
import '../../cart/controller/cart_controller.dart';
import '../model/remove_cart_item_model.dart';

class RemoveCartItemController extends GetxController {
  var cartRemoveItemModel = CartRemoveItemModel().obs;
  final CartController cartController = Get.put(CartController());
  Future<void> removeProduct({
    required String cart_id,
  }) async {
    final baseController = BaseController();
    // baseController.showLoading('Fetching slider data...');

    // loading.value = false;
    const apiUrl = ApiEndPoints.mainBaseURL + ApiEndPoints.removeCart;
    const apiToken = ApiEndPoints.apiToken;

    final requestData = {"api_key": apiToken, "cart_id": cart_id};

    try {
      final baseClient = BaseClient();
      var response = await baseClient
          .postMethod(apiUrl, requestData)
          .catchError(baseController.handleError);


      if (response.statusCode == 200) {
        final responseData = json.decode(response.body);
        cartRemoveItemModel(CartRemoveItemModel.fromJson(responseData));
        // cartController.fetchCartProducts();
        // CustomSnackBar.showCustomSnackBar(
        //     title: "Success", message: '${cartRemoveItemModel.value.message}');
      } else if (response.statusCode == 401) {
        final responseData = json.decode(response.body);
        cartRemoveItemModel(CartRemoveItemModel.fromJson(responseData));
        if (cartRemoveItemModel.value.status == false) {
          print("failed");
          // CustomSnackBar.showCustomErrorSnackBar(
          //     message: "Failed", title: '${cartRemoveItemModel.value.message}');
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
      // loading.value = true;
    }
  }
}
