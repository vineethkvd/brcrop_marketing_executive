import 'dart:convert';
import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

import '../../../core/helpers/cache_helper/cache_helper.dart';
import '../../../core/helpers/network/helpers/api_endpoints.dart';
import '../../../core/helpers/network/helpers/app_exceptions.dart';
import '../../../core/helpers/network/helpers/base_client.dart';
import '../../../core/helpers/network/helpers/base_controller.dart';
import '../../../core/helpers/network/helpers/dialog_helper.dart';
import '../../../core/utils/shared/components/widgets/custom_snackbar.dart';
import '../model/write_up_edit_model.dart';
import '../model/writeup_list_model.dart';
import 'package:http/http.dart' as http;

class WriteUpListController extends GetxController {
  var writeUpListModel = WriteUpListModel().obs;
  var writeUpEditModel = WriteUpEditModel().obs;

  var loading = true.obs;
  final Rx<GlobalKey<FormState>> _formKey = GlobalKey<FormState>().obs;

  Rx<GlobalKey<FormState>> get formKey => _formKey;
  final Rx<TextEditingController> input = TextEditingController().obs;

  var selectedImages = <File>[].obs;
  var chkImage = false.obs;

  Future<void> pickImage() async {
    final ImagePicker picker = ImagePicker();
    final imageFiles = await picker.pickMultiImage();

    if (imageFiles.isNotEmpty) {
      chkImage.value = true;
      for (final image in imageFiles) {
        selectedImages.add(File(image.path));
      }
    } else {
      chkImage.value = false;
    }
  }

  Future<void> fetchWriteUpList({required String writeup}) async {
    loading.value = true;
    const apiUrl = ApiEndPoints.mainBaseURL + ApiEndPoints.writeUp;
    const apiToken = ApiEndPoints.apiToken;

    try {
      var request = http.MultipartRequest('POST', Uri.parse(apiUrl));

      // Add headers
      request.headers.addAll({'Content-Type': 'multipart/form-data'});
      var empId = await CacheHelper.getData('empId');
      // Add fields
      request.fields['api_key'] = apiToken;
      request.fields['me_id'] = empId!;
      request.fields['writeup'] = writeup;
      if (selectedImages.isNotEmpty) {
        for (var image in selectedImages) {
          request.files.add(await http.MultipartFile.fromPath('images[]', image.path));
        }
      }else{
        CustomSnackBar.showCustomErrorSnackBar(
          title: 'Failed',
          message: 'Selected image is empty',
        );
      }

      // Send request
      var response = await request.send();

      // Check response status
      if (response.statusCode >= 200 && response.statusCode < 300) {
        print("success");
        loading.value = false;
        var responseData = await response.stream.bytesToString();
        writeUpListModel.value =
            WriteUpListModel.fromJson(json.decode(responseData));
        CustomSnackBar.showCustomSnackBar(
          title: 'Success',
          message: '${writeUpListModel.value.message}',
        );
      } else if (response.statusCode == 401) {
        loading.value = false;
        var responseData = await response.stream.bytesToString();
        writeUpListModel.value =
            WriteUpListModel.fromJson(json.decode(responseData));
        CustomSnackBar.showCustomErrorSnackBar(
          title: 'Failed',
          message: '${writeUpListModel.value.message}',
        );
      } else {
        print('Request failed with status: ${response.statusCode}');
        throw Exception('Request failed with status: ${response.statusCode}');
      }
    } catch (e) {
      print('Error: $e');
      throw Exception('Error: $e');
    } finally {
      loading.value = false;
    }
  }
}
