import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';

import '../../../core/helpers/cache_helper/cache_helper.dart';
import '../../../core/helpers/network/helpers/api_endpoints.dart';
import '../../../core/helpers/network/helpers/base_client.dart';
import '../../../core/helpers/network/helpers/base_controller.dart';
import '../../../core/utils/shared/components/widgets/custom_snackbar.dart';
import '../model/contact_model.dart';
import '../model/dealer_contact_model.dart';

class ContactController extends GetxController {
  final formKey = GlobalKey<FormState>().obs;
  var loading = true.obs;
  var contactData=''.obs;
  final comments = TextEditingController().obs;
var dealerContactModel=DealerContactModel().obs;


  Future<void> contactUser() async {
    final baseController = BaseController();
    // baseController.showLoading('Fetching slider data...');

    loading.value = false;
    const apiUrl = ApiEndPoints.baseURL1 + ApiEndPoints.contacts;
    print("apiUrl$apiUrl");
    const apiToken = ApiEndPoints.apiToken;
    var dealerID = await CacheHelper.getData('dealerId');
    final requestData = {
      "api_key": apiToken,
    };
    try {
      final baseClient = BaseClient();
      var response = await baseClient
          .postMethod(apiUrl, requestData)
          .catchError(baseController.handleError);
      final responseData = json.decode(response.body);

      if (response.statusCode == 200) {

        final responseData = json.decode(response.body);
        print(responseData);
        dealerContactModel(DealerContactModel.fromJson(responseData));
        contactData.value=dealerContactModel.value.contactUs!;

      } else if (response.statusCode == 401) {
        final responseData = json.decode(response.body);
        print(responseData);
        dealerContactModel(DealerContactModel.fromJson(responseData));
      } else {
        throw Exception('Failed to fetch slider data');
      }
    } catch (error) {
      if (kDebugMode) {
        print("error: $error");
      }
    } finally {
      // baseController.hideLoading();
      loading.value = true;
    }
  }
}
