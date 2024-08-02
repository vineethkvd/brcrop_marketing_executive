import 'dart:convert';
import 'dart:io';

import 'package:brcrop_marketing_executive/features/home/view/home_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

import '../../../../core/helpers/cache_helper/cache_helper.dart';
import '../../../../core/helpers/network/helpers/api_endpoints.dart';
import '../../../../core/utils/shared/components/widgets/custom_snackbar.dart';
import '../../../core/helpers/network/helpers/app_exceptions.dart';
import '../../../core/helpers/network/helpers/base_client.dart';
import '../../../core/helpers/network/helpers/base_controller.dart';
import '../../../core/helpers/network/helpers/dialog_helper.dart';
import '../model/qr_image_model/qr_image_model.dart';


class FetchQRImageController extends GetxController {
  var qrImageModel = const QrImageModel().obs;
  var loginLoading = true.obs;
  final Rx<GlobalKey<FormState>> _formKey = GlobalKey<FormState>().obs;
  Rx<GlobalKey<FormState>> get formKey => _formKey;
  final Rx<TextEditingController> amt = TextEditingController().obs;
  final Rx<TextEditingController> transaction = TextEditingController().obs;
  Future<void> fetchQrImage() async  {
    final baseController = BaseController();
    // baseController.showLoading('Fetching slider data...');

    loginLoading.value = false;
    const apiUrl = ApiEndPoints.mainBaseURL + ApiEndPoints.gpayImage;
    const apiToken = ApiEndPoints.apiToken;
    final requestData = {
      "api_key": apiToken,
    };


    try {
      final baseClient = BaseClient();
      var response = await baseClient.postMethod(apiUrl, requestData);

      if (response.statusCode == 200) {
        final responseData = json.decode(response.body);
        qrImageModel(QrImageModel.fromJson(responseData));

        if (qrImageModel.value.status == true) {
          print("fetch  success ");
          loginLoading.value = true;
        } else {
          throw Exception('Status is not true');
        }
      } else if (response.statusCode == 401) {
        final responseData = json.decode(response.body);
        qrImageModel(QrImageModel.fromJson(responseData));
        if (qrImageModel.value.status == false) {
          loginLoading.value = true;
          print("failed");
          CustomSnackBar.showCustomErrorSnackBar(
              title: "Failed",
              message: '${qrImageModel.value.message}');
          print("failed to fetch category Item");
        } else {
          throw Exception('Status is not true');
        }
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
      loginLoading.value = true;
    }
  }
}
