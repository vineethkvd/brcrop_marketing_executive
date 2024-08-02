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
import '../model/fetch_credit_model.dart';

class FetchCreditController extends GetxController {
  var fetchCreditLimitModel = FetchCreditLimitModel().obs;

  var creditLimit = ''.obs;

  Future<void> fetchCreditLimit({required String dealerId}) async {
    final baseController = BaseController();
    const apiUrl = ApiEndPoints.mainBaseURL + ApiEndPoints.meDealerCredits;
    print("apiUrl $apiUrl");
    const apiToken = ApiEndPoints.apiToken;
    final requestData = {"api_key": apiToken, "dealer_id": dealerId};

    try {
      final baseClient = BaseClient();
      var response = await baseClient.postMethod(apiUrl, requestData);

      if (response.statusCode == 200) {
        final responseData = json.decode(response.body);
        fetchCreditLimitModel(FetchCreditLimitModel.fromJson(responseData));

        print("status: ${fetchCreditLimitModel.value.status}");
        if (fetchCreditLimitModel.value.status == "Success") {
          print("Success");
          creditLimit.value = "${fetchCreditLimitModel.value.creditLimit!}";
        } else {
          throw Exception('Status is neither true nor false');
        }
      } else if (response.statusCode == 401) {
        final responseData = json.decode(response.body);
        fetchCreditLimitModel(FetchCreditLimitModel.fromJson(responseData));

        print("status: ${fetchCreditLimitModel.value.status}");
        if (fetchCreditLimitModel.value.status == "Failed") {
          print("failed");
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
