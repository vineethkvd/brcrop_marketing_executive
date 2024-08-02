import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import '../../../core/helpers/cache_helper/cache_helper.dart';
import '../../../core/helpers/network/helpers/api_endpoints.dart';
import '../../../core/helpers/network/helpers/base_client.dart';
import '../../../core/helpers/network/helpers/base_controller.dart';
import '../model/soilTestList_model/testList_model.dart';

class SoilTestListController extends GetxController {
  var soilListModel = SoilListModel().obs;
  var soillist = <Soillist>[].obs;

  Future<void> fetchTestListData() async {
    final baseController = BaseController();

    const apiUrl = ApiEndPoints.mainBaseURL + ApiEndPoints.soilList;
    const apiToken = ApiEndPoints.apiToken;
    var empId = await CacheHelper.getData('empId');
    var requestData = {"api_key": apiToken, "me_id": empId};
    print(requestData);

    try {
      final baseClient = BaseClient();
      var response = await baseClient
          .postMethod(apiUrl, requestData)
          .catchError(baseController.handleError);
      final responseData = json.decode(response.body);
      print("requestData $responseData");
      if (response.statusCode == 200) {
        final responseData = json.decode(response.body);
        soilListModel(SoilListModel.fromJson(responseData));

        if (soilListModel.value.status == true) {
          print("Success to fetch ");

          soillist.assignAll(soilListModel.value.soillist ?? []);
        } else {
          throw Exception('Status is not true');
        }
      } else if (response.statusCode == 401) {
        final responseData = json.decode(response.body);
        soilListModel(SoilListModel.fromJson(responseData));

        if (soilListModel.value.status == false) {
          if (kDebugMode) {
            print(
                "Failed to fetch slider data: ${soilListModel.value.message}");
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