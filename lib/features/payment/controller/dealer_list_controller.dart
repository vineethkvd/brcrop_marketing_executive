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
import '../model/dealer_list_model.dart';
import 'package:http/http.dart' as http;

class DealerListController extends GetxController {
  var dealerListModel = DealerListModel().obs;
  var dealerList = <Dealers>[].obs;
  var selectedItem = ''.obs;
  var selectedId = ''.obs;


  Future<void> fetchDriverList() async {
    final baseController = BaseController();
    const apiUrl = ApiEndPoints.mainBaseURL + ApiEndPoints.meDealers;
    print("apiUrl $apiUrl");
    const apiToken = ApiEndPoints.apiToken;

    var empId = await CacheHelper.getData('empId');
    final requestData = {
      "api_key": apiToken,
      "me_id":empId
    };

    try {
      final baseClient = BaseClient();
      var response = await baseClient.postMethod(apiUrl, requestData);

      if (response.statusCode == 200) {
        final responseData = json.decode(response.body);
        dealerListModel(DealerListModel.fromJson(responseData));

        print("status: ${dealerListModel.value.status}");
        if (dealerListModel.value.status == "Success") {
        print("driver list Success");
        dealerList.clear();
        dealerList.assignAll(dealerListModel.value.dealers ?? []);
        }  else {
          throw Exception('Status is neither true nor false');
        }
      } else if (response.statusCode == 401) {
        final responseData = json.decode(response.body);
        dealerListModel(DealerListModel.fromJson(responseData));

        print("status: ${dealerListModel.value.status}");
        if (dealerListModel.value.status == "Failed") {
          print("failed");
          dealerList.clear();
          dealerList.assignAll(dealerListModel.value.dealers ?? []);

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
