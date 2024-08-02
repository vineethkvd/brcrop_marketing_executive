import 'dart:convert';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

import '../../../core/helpers/cache_helper/cache_helper.dart';
import '../../../core/helpers/network/helpers/api_endpoints.dart';
import '../../../core/utils/configs/styles/colors.dart';
import '../../../core/utils/shared/components/widgets/custom_snackbar.dart';
import '../model/add_to_cart_model.dart';
import 'package:flutter/material.dart';

class AddToCartController extends GetxController {
  var addToCartModel = AddToCartModel().obs;

  Future<void> addToCart({
    required String product_id,
    required String quantity,
    required String price,
    required String verId,
    required String schemeStatus
  }) async {
    const apiUrl = ApiEndPoints.mainBaseURL + ApiEndPoints.addCart;
    const apiToken = ApiEndPoints.apiToken;
    print(apiToken);

    try {
      var request = http.MultipartRequest('POST', Uri.parse(apiUrl));
      var empId = await CacheHelper.getData('empId');
      print("empId $apiToken");

      // Add fields
      request.fields['api_key'] = apiToken;
      request.fields['me_id'] = empId!;
      request.fields['product_id'] = product_id;
      request.fields['quantity'] = quantity;
      request.fields['price'] = price;
      request.fields['ver_id'] = verId;
      request.fields['scheme_status'] = schemeStatus;

      var response = await request.send();
      print("response $product_id");
      if (response.statusCode == 200) {
        var responseData = await response.stream.bytesToString();
        var decodedData = json.decode(responseData);
        addToCartModel(AddToCartModel.fromJson(decodedData));
        if (addToCartModel.value.status == 1) {
          CustomSnackBar.showCustomSnackBar(
              message: "Success", title: 'Success to add product to cart');
        }
      } else if (response.statusCode == 401) {
        print("fails");
        var responseData = await response.stream.bytesToString();
        var decodedData = json.decode(responseData);
        addToCartModel(AddToCartModel.fromJson(decodedData));
        if (addToCartModel.value.status == 0) {
          CustomSnackBar.showCustomErrorSnackBar(
              message: "Failed", title: 'Already exits product');
        }
      } else {
        throw Exception('Request failed with status: ${response.statusCode}');
      }
    } catch (e) {
      throw Exception('Error: $e');
    }
  }
}
