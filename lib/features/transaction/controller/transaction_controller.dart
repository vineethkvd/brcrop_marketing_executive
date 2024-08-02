import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import '../../../core/helpers/cache_helper/cache_helper.dart';
import '../../../core/helpers/network/helpers/api_endpoints.dart';
import '../../../core/helpers/network/helpers/base_client.dart';
import '../../../core/helpers/network/helpers/base_controller.dart';
import '../model/transaction_model.dart';


class TransactionController extends GetxController {
  var transactionModel = const TransactionModel().obs;


  Future<void> fetchTransactions() async {
    final baseController = BaseController();

    const apiUrl = ApiEndPoints.mainBaseURL + ApiEndPoints.metransPdf;
    const apiToken = ApiEndPoints.apiToken;
    var empId = await CacheHelper.getData('empId');
    var requestData = {"api_key": apiToken,"me_id" :empId};

    try {
      final baseClient = BaseClient();
      var response = await baseClient
          .postMethod(apiUrl, requestData)
          .catchError(baseController.handleError);
      final responseData = json.decode(response.body);
      print("data $responseData");
      if (response.statusCode == 200) {
        final responseData = json.decode(response.body);
        transactionModel(TransactionModel.fromJson(responseData));

        if (transactionModel.value.status == true) {
          print("Success ");
        } else {
          throw Exception('Status is not true');
        }
      } else if (response.statusCode == 400) {
        final responseData = json.decode(response.body);
        transactionModel(TransactionModel.fromJson(responseData));

        if (transactionModel.value.status == false) {
          if (kDebugMode) {
            print(
                "Failed to fetch slider data: ${transactionModel.value.message}");
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
