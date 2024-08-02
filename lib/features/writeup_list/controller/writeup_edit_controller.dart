import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../../core/helpers/cache_helper/cache_helper.dart';
import '../../../core/helpers/network/helpers/api_endpoints.dart';
import '../../../core/helpers/network/helpers/app_exceptions.dart';
import '../../../core/helpers/network/helpers/base_client.dart';
import '../../../core/helpers/network/helpers/base_controller.dart';
import '../../../core/helpers/network/helpers/dialog_helper.dart';
import '../../../core/utils/shared/components/widgets/custom_snackbar.dart';
import '../model/write_up_edit_model.dart';

class WriteUpEditController extends GetxController{
  var writeUpEditModel = WriteUpEditModel().obs;
  var loading = true.obs;
  final Rx<GlobalKey<FormState>> _formKey = GlobalKey<FormState>().obs;

  Rx<GlobalKey<FormState>> get formKey => _formKey;
  final Rx<TextEditingController> edit = TextEditingController().obs;



  Future<void> editWriteUpList({required String writeup}) async{
    loading.value = false;
    final baseController = BaseController();
    const apiUrl = ApiEndPoints.mainBaseURL + ApiEndPoints.writeupEdit;
    print("Url $apiUrl");
    print("apiUrl $apiUrl");
    var empId = await CacheHelper.getData('empId');

    var writeUpId = await CacheHelper.getData('writeUpId');
    const apiToken = ApiEndPoints.apiToken;
    final requestData = {
      "api_key": apiToken,
      "me_id": empId,
      "writeup_id": writeUpId,
      "writeup": writeup
    };
    print("empId $writeup");

    try {
      final baseClient = BaseClient();
      var response = await baseClient.postMethod(apiUrl, requestData);

      if (response.statusCode == 200) {
        final responseData = json.decode(response.body);
        writeUpEditModel(WriteUpEditModel.fromJson(responseData));

        print("status: ${writeUpEditModel.value.status}");
        if (writeUpEditModel.value.status == "Success") {
          loading.value = true;
          CacheHelper.saveData("writeUpId",
              (writeUpEditModel.value.data!.first.writeupId.toString()));
          print(" Success");
          CustomSnackBar.showCustomSnackBar(
              message: "Success", title: '${writeUpEditModel.value.message}');
        } else {
          throw Exception('Status is neither true nor false');
        }
      } else if (response.statusCode == 401) {
        final responseData = json.decode(response.body);
        writeUpEditModel(WriteUpEditModel.fromJson(responseData));

        print("status: ${writeUpEditModel.value.status}");
        if (writeUpEditModel.value.status == "Failed") {
          loading.value = true;

          CustomSnackBar.showCustomErrorSnackBar(
              message: "Failed", title: '${writeUpEditModel.value.message}');
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
      loading.value = true;
    }
  }
}