

import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

import '../../../core/helpers/cache_helper/cache_helper.dart';
import '../../../core/helpers/network/helpers/api_endpoints.dart';
import '../../../core/helpers/network/helpers/base_client.dart';
import '../../../core/helpers/network/helpers/base_controller.dart';
import '../../../core/utils/shared/components/widgets/custom_snackbar.dart';
import '../model/order_model/order_model.dart';

class OrderProductController extends GetxController {
  var orderProductsModel = const OrderModel().obs;
  var orderList = <OrderLIst>[].obs;
  Future<void> fetchOrderedProduct() async {
    final baseController = BaseController();
    // baseController.showLoading('Fetching slider data...');

    // loading.value = false;
    const apiUrl = ApiEndPoints.mainBaseURL + ApiEndPoints.allOrders;
    const apiToken = ApiEndPoints.apiToken;
    var empId = await CacheHelper.getData('empId');
    print("empId:$empId");

    final requestData = {"api_key": apiToken,  "me_id" : empId};

    try {
      final baseClient = BaseClient();
      var response = await baseClient
          .postMethod(apiUrl, requestData)
          .catchError(baseController.handleError);

      final responseData = json.decode(response.body);
      print("responseData$responseData");
      if (response.statusCode == 200) {
        final responseData = json.decode(response.body);
        orderProductsModel(OrderModel.fromJson(responseData));
        if (orderProductsModel.value.status == "Success") {
          print("Success");
          orderList.assignAll(orderProductsModel.value.orderList ?? []);
        }
      } else if (response.statusCode == 401) {
        final responseData = json.decode(response.body);
        orderProductsModel(OrderModel.fromJson(responseData));
        if (orderProductsModel.value.status == false) {
          print("failed");
          CustomSnackBar.showCustomErrorSnackBar(
              message: "Failed", title: '${orderProductsModel.value.message}');
          Get.back();
        } else {
          throw Exception('Status is not true');
        }
      } else {
        throw Exception('Failed to fetch slider data');
      }
    } catch (error) {
      if (kDebugMode) {
        print("error $error");
      }
    } finally {
      // baseController.hideLoading();
      // loading.value = true;
    }
  }
}
