import 'dart:convert';
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:http/http.dart' as http;

import '../../../core/helpers/cache_helper/cache_helper.dart';
import '../../../core/helpers/network/helpers/api_endpoints.dart';
import '../../../core/helpers/network/helpers/app_exceptions.dart';
import '../../../core/helpers/network/helpers/base_client.dart';
import '../../../core/helpers/network/helpers/base_controller.dart';
import '../../../core/helpers/network/helpers/dialog_helper.dart';
import '../model/profile_model.dart';

class ProfileController extends GetxController {
  var profileModel = ProfileModel().obs;
var empId=''.obs;
  // var empUniqueId = ''.obs;
  // var empName = ''.obs;
  // var empMobile = ''.obs;
  // var empEmail = ''.obs;
  // var empState = ''.obs;
  // var empDistrict = ''.obs;
  // var empDistrictCode = ''.obs;
  // var empUserName = ''.obs;
  // var empPass = ''.obs;
  // var empAreaManager = ''.obs;
  // var empType = ''.obs;
  // var empDesignation = ''.obs;
  // var empStatus = ''.obs;
  // var empCreateDt = ''.obs;
  // var desName=''.obs;

  Future<void> profileDetails() async {
    final baseController = BaseController();
    // baseController.showLoading('Fetching slider data...');

    // loading.value = false;
    const apiUrl = ApiEndPoints.mainBaseURL + ApiEndPoints.profile;
    print(apiUrl);
    const apiToken = ApiEndPoints.apiToken;
    var empId = await CacheHelper.getData('empId');
    final requestData = {"api_key": apiToken, "me_id": empId.toString()};

    try {
      final baseClient = BaseClient();
      var response = await baseClient
          .postMethod(apiUrl, requestData)
          .catchError(baseController.handleError);
      final responseData = json.decode(response.body);
      print(responseData);
      if (response.statusCode == 200) {
        final responseData = json.decode(response.body);
        profileModel(ProfileModel.fromJson(responseData));

        if (profileModel.value.status == true) {
          print("fetch profile");
        } else {
          throw Exception('Status is not true');
        }
      } else if (response.statusCode == 401) {
        final responseData = json.decode(response.body);
        profileModel(ProfileModel.fromJson(responseData));
        if (profileModel.value.status == false) {
          print("mark logout");
          print("failed to fetch category Item");
        } else {
          throw Exception('Status is not true');
        }
      } else {
        throw Exception('Failed to fetch slider data');
      }
    } catch (error) {
      if (kDebugMode) {
        print("Error $error");
      }
    } finally {
      // baseController.hideLoading();
      // loading.value = true;
    }
  }
}
