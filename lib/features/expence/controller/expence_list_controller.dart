import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import '../../../core/helpers/cache_helper/cache_helper.dart';
import '../../../core/helpers/network/helpers/api_endpoints.dart';
import '../../../core/helpers/network/helpers/base_client.dart';
import '../../../core/helpers/network/helpers/base_controller.dart';
import '../model/expence_list_model/expence_list_model.dart';

class ExpenseListController extends GetxController {
  var expenseListModel = const ExpenseListModel().obs;
  var expenseList = <ExpenseList>[].obs;
  Future<void> fetchExpenseList() async {
    final baseController = BaseController();

    const apiUrl = ApiEndPoints.mainBaseURL + ApiEndPoints.expenseList;
    const apiToken = ApiEndPoints.apiToken;
    var empId = await CacheHelper.getData('empId');
    print("empId $empId");
    var requestData = {"api_key": apiToken, "me_id": empId};

    try {
      final baseClient = BaseClient();
      var response = await baseClient
          .postMethod(apiUrl, requestData)
          .catchError(baseController.handleError);

      if (response.statusCode == 200) {
        final responseData = json.decode(response.body);
        expenseListModel(ExpenseListModel.fromJson(responseData));

        if (expenseListModel.value.status == true) {
          print("Success to fetch ");

          expenseList.assignAll(expenseListModel.value.expenseList ?? []);
        } else {
          throw Exception('Status is not true');
        }
      } else if (response.statusCode == 400) {
        final responseData = json.decode(response.body);
        expenseListModel(ExpenseListModel.fromJson(responseData));

        if (expenseListModel.value.status == false) {
          if (kDebugMode) {
            print(
                "Failed to fetch slider data: ${expenseListModel.value.message}");
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
