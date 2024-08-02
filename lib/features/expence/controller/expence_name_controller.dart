import 'dart:convert';
import 'dart:io';

import 'package:get/get.dart';

import '../../../core/helpers/cache_helper/cache_helper.dart';
import '../../../core/helpers/network/helpers/api_endpoints.dart';
import '../../../core/helpers/network/helpers/app_exceptions.dart';
import '../../../core/helpers/network/helpers/base_client.dart';
import '../../../core/helpers/network/helpers/base_controller.dart';
import '../../../core/helpers/network/helpers/dialog_helper.dart';
import '../../../core/utils/shared/components/widgets/custom_snackbar.dart';
import 'package:http/http.dart' as http;

import '../model/expence_model.dart';
import '../model/expence_name_model.dart';

class ExpenceNameController extends GetxController {
  var expenceNameModel = ExpenceNameModel().obs;
  var expenceList = <Data>[].obs;
  var selectedItem = ''.obs;
  var selectedId = ''.obs;


  Future<void> fetchExpenceName() async {
    final baseController = BaseController();
    const apiUrl = ApiEndPoints.mainBaseURL + ApiEndPoints.expanseDropdownList;
    print("apiUrl $apiUrl");
    const apiToken = ApiEndPoints.apiToken;

    var empId = await CacheHelper.getData('empId');
    final requestData = {
      "api_key": apiToken
    };

    try {
      final baseClient = BaseClient();
      var response = await baseClient.postMethod(apiUrl, requestData);

      if (response.statusCode == 200) {
        final responseData = json.decode(response.body);
        expenceNameModel(ExpenceNameModel.fromJson(responseData));
        print("responseData $responseData");

        print("status: ${expenceNameModel.value.status}");
        if (expenceNameModel.value.status == "success") {
          print("expence list Success");
          expenceList.clear();
          expenceList.assignAll(expenceNameModel.value.data ?? []);
        }  else {
          throw Exception('Status is neither true nor false');
        }
      } else if (response.statusCode == 401) {
        final responseData = json.decode(response.body);
        expenceNameModel(ExpenceNameModel.fromJson(responseData));

        print("status: ${expenceNameModel.value.status}");
        if (expenceNameModel.value.status == "Failed") {
          print("failed");
          expenceList.clear();
          expenceList.assignAll(expenceNameModel.value.data ?? []);

        } else {
          throw Exception('Status is not true');
        }
      } else {
        throw Exception('Failed to fetch slider data');
      }
    } catch (error) {
      if (error is BadRequestException) {
        var apiError = json.decode(error.message!);
        DialogHelper.showErroDialog(description: apiError["reason"]);
      } else {
        baseController.handleError(error);
      }
    } finally {
      // baseController.hideLoading();
      // loading.value = true;
    }
  }
}
