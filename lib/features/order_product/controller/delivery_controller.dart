


import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

import '../../../core/helpers/network/helpers/api_endpoints.dart';
import '../../../core/helpers/network/helpers/base_client.dart';
import '../../../core/helpers/network/helpers/base_controller.dart';
import '../../../core/utils/shared/components/widgets/custom_snackbar.dart';
import '../model/delivery_model/delivery_model.dart';

class DeliveryController extends GetxController {
  var deliveryModel = const DeliveryModel().obs;
  Future<void> fetchDelivery({required String orderId}) async {
    final baseController = BaseController();
    // baseController.showLoading('Fetching slider data...');

    // loading.value = false;
    const apiUrl = ApiEndPoints.baseURL + ApiEndPoints.deleveryBtn;
    const apiToken = ApiEndPoints.apiToken;
    final requestData = {"api_key": apiToken, "order_id": orderId};

    try {
      final baseClient = BaseClient();
      var response = await baseClient
          .postMethod(apiUrl, requestData)
          .catchError(baseController.handleError);


      if (response.statusCode == 200) {
        final responseData = json.decode(response.body);
        deliveryModel(DeliveryModel.fromJson(responseData));
        if (deliveryModel.value.status == true) {
          print("Success");
          CustomSnackBar.showCustomSnackBar(
              message: "Success", title: '${deliveryModel.value.message}');

        }
      } else if (response.statusCode == 401) {
        final responseData = json.decode(response.body);
        deliveryModel(DeliveryModel.fromJson(responseData));
        if (deliveryModel.value.status == false) {
          print("failed");
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
