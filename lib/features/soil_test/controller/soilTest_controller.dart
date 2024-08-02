import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';

import '../../../core/helpers/cache_helper/cache_helper.dart';
import '../../../core/helpers/network/helpers/api_endpoints.dart';
import '../../../core/utils/shared/components/widgets/custom_snackbar.dart';
import '../model/soilTest_model/soilTest_model.dart';

class SoilTestController extends GetxController {
  var soilTestModel = SoilTestModel().obs;
  var loading = false.obs;

  final Rx<GlobalKey<FormState>> formKey = GlobalKey<FormState>().obs;

  final Rx<TextEditingController> SampleNameController =
      TextEditingController().obs;
  final Rx<TextEditingController> DateController = TextEditingController().obs;

  final Rx<TextEditingController> nameController = TextEditingController().obs;
  final Rx<TextEditingController> addressController =
      TextEditingController().obs;
  final Rx<TextEditingController> phoneController = TextEditingController().obs;
  final Rx<TextEditingController> sampleLocationController =
      TextEditingController().obs;
  final Rx<TextEditingController> revenueController =
      TextEditingController().obs;
  final Rx<TextEditingController> regionController =
      TextEditingController().obs;
  final Rx<TextEditingController> districtController =
      TextEditingController().obs;
  final Rx<TextEditingController> surveyNumController =
      TextEditingController().obs;
  final Rx<TextEditingController> serviceNumController =
      TextEditingController().obs;
  final Rx<TextEditingController> fertilizerController =
      TextEditingController().obs;
  final Rx<TextEditingController> cropController = TextEditingController().obs;
  final Rx<TextEditingController> cropNameController =
      TextEditingController().obs;
  final Rx<TextEditingController> examinerNameController =
      TextEditingController().obs;
  final Rx<TextEditingController> testTypeController =
      TextEditingController().obs;
  final Rx<TextEditingController> sampleSentController =
      TextEditingController().obs;
  final Rx<TextEditingController> remarkController =
      TextEditingController().obs;

  // File pick fields
  Rx<XFile?> sampleImage = Rx<XFile?>(null);

  // Variable to store selected test type
  final RxString selectedTestType = 'soil'.obs;

  DateTime now = DateTime.now();
  var presentDate = ''.obs;
  Future<void> formatDate() async {
    presentDate.value = DateFormat('yyyy-dd-MM').format(now);
  }

  Future<void> registerTest({
    required String name,
    required String date,
    required String address,
    required String phone,
    required String sampleName,
    required String sampleLocation,
    required String revenue,
    required String region,
    required String district,
    required String surveyNumber,
    required String serviceNumber,
    required String fertilizer,
    required String stableCrop,
    required String cropName,
    required String examinerName,
    required String testType,
    required String sampleSent,
    required String remark,
    PickedFile? sampleImage,
  }) async {
    const apiUrl = ApiEndPoints.mainBaseURL + ApiEndPoints.soilTest;
    const apiToken = ApiEndPoints.apiToken;
    var empId = await CacheHelper.getData('empId');
    loading.value = true;

    try {
      var request = http.MultipartRequest('POST', Uri.parse(apiUrl));

      // Add fields
      request.fields['api_key'] = apiToken;
      request.fields['user_id'] = empId!;
      request.fields['sample_name'] = sampleName;
      request.fields['sample_date'] = date;
      request.fields['farmer_name'] = name;
      request.fields['address'] = address;
      request.fields['mobile'] = phone;
      request.fields['sample_location'] = sampleLocation;
      request.fields['revenue'] = revenue;
      request.fields['region'] = region;
      request.fields['district'] = district;
      request.fields['survey_number'] = surveyNumber;
      request.fields['service_number'] = serviceNumber;
      request.fields['fertillzer_well'] = fertilizer;
      request.fields['stable_crop'] = stableCrop;
      request.fields['crop_name'] = cropName;
      request.fields['examiner_name'] = examinerName;
      request.fields['test_type'] = testType;
      request.fields['sample_sent'] = sampleSent;
      request.fields['sample_remarks'] = remark;

      // Add files if present
      if (sampleImage != null) {
        request.files.add(await http.MultipartFile.fromPath(
            'sample_image', sampleImage.path!));
      }

// Print the data being sent to the backend
      print('Register Request Data: ${request.fields}');
      // Send request
      var response = await request.send();

      // Check response status
      if (response.statusCode >= 200 && response.statusCode < 300) {
        var responseData = await response.stream.bytesToString();
        soilTestModel.value = SoilTestModel.fromJson(json.decode(responseData));
        loading.value = false;

        // Navigate back to the login screen and show success message
        Get.back();
        CustomSnackBar.showCustomSnackBar(
          title: 'Registration successful',
          message: 'Your Test Sample id Register Successful.',
        );
      } else {
        var responseData = await response.stream.bytesToString();
        loading.value = false;
        CustomSnackBar.showCustomErrorSnackBar(
          title: 'Registration failed',
          message:
              'Request failed with status: ${response.statusCode}, Response: $responseData',
        );
      }
    } catch (e) {
      loading.value = false;
      CustomSnackBar.showCustomErrorSnackBar(
        title: 'Registration failed',
        message: e.toString(),
      );
    }
  }

  // Function to get the current date in the desired format
  String getCurrentDate() {
    var now = DateTime.now();
    var formatter = DateFormat('yyyy-MM-dd');
    return formatter.format(now);
  }
}
