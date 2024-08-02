import 'dart:convert';
import 'dart:io';

import 'package:get/get.dart';

import '../../../core/helpers/cache_helper/cache_helper.dart';
import '../../../core/helpers/network/helpers/api_endpoints.dart';
import '../../../core/helpers/network/helpers/app_exceptions.dart';
import '../../../core/helpers/network/helpers/base_client.dart';
import '../../../core/helpers/network/helpers/base_controller.dart';
import '../../../core/helpers/network/helpers/dialog_helper.dart';
import '../model/convience_model/convience_model.dart';

class ConvienceController extends GetxController {
  var convienceModel = ConvienceModel().obs;
  var dataList = <Data>[].obs;
  var expAmtPetrol = ''.obs;
  var expAmtFood = ''.obs;
  var expAmtBatta = ''.obs;
  var expAmtStay = ''.obs;
  var expAmtTravel = ''.obs;
  var convienceFee = ''.obs;

  Future<void> fetchConvienceFee() async {
    final baseController = BaseController();
    const apiUrl = ApiEndPoints.mainBaseURL + ApiEndPoints.expanseDropdownList;
    print("apiUrl $apiUrl");
    const apiToken = ApiEndPoints.apiToken;
    final requestData = {
      "api_key": apiToken,
    };

    try {
      final baseClient = BaseClient();
      var response = await baseClient.postMethod(apiUrl, requestData);

      if (response.statusCode == 200) {
        final responseData = json.decode(response.body);
        convienceModel(ConvienceModel.fromJson(responseData));

        print("status: ${convienceModel.value.status}");
        if (convienceModel.value.status == "success") {
          print("Success");
          dataList.assignAll(convienceModel.value.data?.map((data) {
            switch (data.expId) {
              case '2':
                expAmtPetrol.value = data.expAmt!;
                break;
              case '4':
                expAmtFood.value = data.expAmt!;
                break;
              case '5':
                expAmtBatta.value = data.expAmt!;
                break;
              case '6':
                expAmtStay.value = data.expAmt!;
                break;
              case '7':
                expAmtTravel.value = data.expAmt!;
                break;
            }
            return data;
          }).toList() ?? []);
        } else {
          throw Exception('Status is neither true nor false');
        }
      } else if (response.statusCode == 401) {
        final responseData = json.decode(response.body);
        convienceModel(ConvienceModel.fromJson(responseData));

        print("status: ${convienceModel.value.status}");
        if (convienceModel.value.status == "Failed") {
          print("failed");
          dataList.assignAll(convienceModel.value.data ?? []);
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
