import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import '../../../core/helpers/cache_helper/cache_helper.dart';
import '../../../core/helpers/network/helpers/api_endpoints.dart';
import '../../../core/helpers/network/helpers/base_client.dart';
import '../../../core/helpers/network/helpers/base_controller.dart';
import '../model/writeup_lists/writeup_lists_model.dart';

class FetchWriteUpController extends GetxController {
  var writeupListsModel = const WriteupListsModel().obs;

  var dataList = <ReportWriteUP>[].obs;
  var currentWriteup = ''.obs;

  Future<void> fetchWriteup() async {
    final baseController = BaseController();

    const apiUrl = ApiEndPoints.mainBaseURL + ApiEndPoints.writeupList;
    const apiToken = ApiEndPoints.apiToken;
    var empId = await CacheHelper.getData('empId');
    var requestData = {"api_key": apiToken, "me_id": empId};

    try {
      final baseClient = BaseClient();
      var response = await baseClient
          .postMethod(apiUrl, requestData)
          .catchError(baseController.handleError);

      if (response.statusCode == 200) {
        final responseData = json.decode(response.body);
        writeupListsModel(WriteupListsModel.fromJson(responseData));

        if (writeupListsModel.value.status == true) {
          print("Success to fetch ");

          dataList.assignAll(writeupListsModel.value.data ?? []);
          currentWriteup.value = dataList.value.first.writeUp!;
        } else {
          throw Exception('Status is not true');
        }
      } else if (response.statusCode == 400) {
        final responseData = json.decode(response.body);
        writeupListsModel(WriteupListsModel.fromJson(responseData));

        if (writeupListsModel.value.status == false) {
          if (kDebugMode) {
            print(
                "Failed to fetch slider data: ${writeupListsModel.value.message}");
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
