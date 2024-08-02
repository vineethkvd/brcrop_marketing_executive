import 'dart:convert';
import 'dart:io';

import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:url_launcher/url_launcher.dart';

import '../../../core/helpers/network/helpers/api_endpoints.dart';
import '../../../core/helpers/network/helpers/app_exceptions.dart';
import '../../../core/helpers/network/helpers/base_client.dart';
import '../../../core/helpers/network/helpers/base_controller.dart';
import '../../../core/helpers/network/helpers/dialog_helper.dart';
import '../model/slider_model.dart';

class SliderController extends GetxController {
  var sliderModel = const SliderModel().obs;
  var dataList = <Data>[].obs;
  var currentIndex = 0.obs;

  Future<void> launUrl(String url) async {
    final Uri uri = Uri.parse(url);
    if (!await launchUrl(uri)) {
      throw Exception("Could not launch $uri");
    }
  }

  Future<void> fetchSliderData() async {
    final baseController = BaseController();
    // baseController.showLoading('Fetching slider data...');

    const apiUrl = ApiEndPoints.baseURL + ApiEndPoints.slider;
    const apiToken = ApiEndPoints.apiToken;
    var requestData = {"api_key": apiToken};

    try {
      final baseClient = BaseClient();
      var response = await baseClient.postMethod(apiUrl, requestData);

      if (response.statusCode == 200) {
        final responseData = json.decode(response.body);
        sliderModel(SliderModel.fromJson(responseData));

        if (sliderModel.value.status == true) {
          print("Success to fetch slider data");

          dataList.assignAll(sliderModel.value.data ?? []);
        } else {
          throw Exception('Status is not true');
        }
      } else if (response.statusCode == 400) {
        final responseData = json.decode(response.body);
        sliderModel(SliderModel.fromJson(responseData));

        if (sliderModel.value.status == false) {
          print("Failed to fetch slider data: ${responseData['message']}");
        } else {
          throw Exception('Status is not false');
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
    }
  }
}
