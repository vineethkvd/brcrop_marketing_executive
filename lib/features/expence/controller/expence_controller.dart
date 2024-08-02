import 'dart:convert';
import 'dart:io';

import 'package:brcrop_marketing_executive/features/bottom_navbar/view/bottom-navbar_screen.dart';
import 'package:brcrop_marketing_executive/features/expence/controller/convience_controller.dart';
import 'package:brcrop_marketing_executive/features/expence/view/expense_list_screen.dart';
import 'package:brcrop_marketing_executive/features/transaction/view/transaction_screen.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:http/http.dart' as http;
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';

import '../../../core/helpers/cache_helper/cache_helper.dart';
import '../../../core/helpers/network/helpers/api_endpoints.dart';
import '../../../core/helpers/network/helpers/app_exceptions.dart';
import '../../../core/helpers/network/helpers/base_client.dart';
import '../../../core/helpers/network/helpers/base_controller.dart';
import '../../../core/helpers/network/helpers/dialog_helper.dart';
import '../../../core/utils/shared/components/widgets/custom_snackbar.dart';
import '../model/expence_model.dart';

class ExpenceController extends GetxController {
  final ConvienceController convienceController =
      Get.put(ConvienceController());
  var expenceModel = ExpenceModel().obs;
  final picker = ImagePicker();
  RxString imagePath = ''.obs;
  var loading = false.obs;
  var expenseWidgets = <Widget>[].obs;
  DateTime selected = DateTime.now();
  DateTime initial = DateTime(2000);
  DateTime last = DateTime(2025);
  Rx<PlatformFile?> document = Rx<PlatformFile?>(null);
  final Rx<GlobalKey<FormState>> _formKey = GlobalKey<FormState>().obs;

  Rx<GlobalKey<FormState>> get formKey => _formKey;
  final Rx<TextEditingController> name = TextEditingController().obs;
  final Rx<TextEditingController> designation = TextEditingController().obs;
  final Rx<TextEditingController> headQuoters = TextEditingController().obs;
  final Rx<TextEditingController> stNumber = TextEditingController().obs;
  final Rx<TextEditingController> fromDate = TextEditingController().obs;
  final Rx<TextEditingController> toDate = TextEditingController().obs;
  final Rx<TextEditingController> currentDate = TextEditingController().obs;
  final Rx<TextEditingController> deptStation = TextEditingController().obs;
  final Rx<TextEditingController> areaCovered = TextEditingController().obs;
  final Rx<TextEditingController> haltAt = TextEditingController().obs;
  final Rx<TextEditingController> openKm = TextEditingController().obs;
  final Rx<TextEditingController> closingKm = TextEditingController().obs;

  final Rx<TextEditingController> officialKm = TextEditingController().obs;
  final Rx<TextEditingController> personalKm = TextEditingController().obs;

  final Rx<TextEditingController> climedRs = TextEditingController().obs;
  final Rx<TextEditingController> convenienceRs = TextEditingController().obs;

  final Rx<TextEditingController> roomRent = TextEditingController().obs;
  final Rx<TextEditingController> battaRs = TextEditingController().obs;

  final Rx<TextEditingController> remarks = TextEditingController().obs;
  final Rx<TextEditingController> total = TextEditingController().obs;

  final Rx<TextEditingController> petrolNoKm = TextEditingController().obs;
  final Rx<TextEditingController> foodNoDay = TextEditingController().obs;
  final Rx<TextEditingController> battaNoDay = TextEditingController().obs;
  final Rx<TextEditingController> stayNoDay = TextEditingController().obs;
  final Rx<TextEditingController> travelNoDay = TextEditingController().obs;

  final Rx<TextEditingController> claimAmt = TextEditingController().obs;
  final Rx<TextEditingController> claimTxt = TextEditingController().obs;
  final Rx<TextEditingController> advanceRecived = TextEditingController().obs;
  final Rx<TextEditingController> otherDetails = TextEditingController().obs;

  var fromDateError = false.obs;
  var toDateError = false.obs;

  String? validateInput(String input) {
    if (input.isEmpty) {
      return "Can't be empty";
    }
    return null;
  }

  void validateFields() {
    fromDateError.value = fromDate.value.text.isEmpty;
    toDateError.value = toDate.value.text.isEmpty;

    if (fromDateError.value || toDateError.value) {
      Get.snackbar(
        "Validation Error",
        "Please fill out all fields",
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.red,
        colorText: Colors.white,
      );
    }
  }

  Future<void> fetchDate(
      {required BuildContext context,
      required TextEditingController controller}) async {
    DateTime? date = await showDatePicker(
      context: context,
      initialDate: selected,
      firstDate: initial,
      lastDate: last,
    );
    if (date != null) {
      controller.text = DateFormat('yyyy-MM-dd').format(date.toLocal());
      update(); // Update the state to reflect the changes
    }
  }

  var totalPrices = ''.obs;
  Future<void> calculateTotal({
    required String convience,
    required String roomRent,
    required String bata,
  }) async {
    double convienceAmount = double.parse(convience);
    double roomRentAmount = double.parse(roomRent);
    double bataAmount = double.parse(bata);
    double total = convienceAmount + roomRentAmount + bataAmount;
    print("XXXTentacion $convienceAmount");
    totalPrices.value = total.toString();
    CustomSnackBar.showCustomSnackBar(
        message: "Success", title: 'Total Expense ₹${totalPrices.value}');
  }

  Future<void> fetchCurrentDate({required BuildContext context}) async {
    var date = await showDatePicker(
      context: context,
      initialDate: selected,
      firstDate: initial,
      lastDate: last,
    );
    if (date != null) {
      currentDate.value.text = date.toLocal().toString().split(" ")[0];
      update(); // Update the state to reflect the changes
    }
  }

  DateTime now = DateTime.now();
  var presentDate = ''.obs;
  Future<void> formatDate() async {
    presentDate.value = DateFormat('dd-MM-yyyy').format(now);
  }

  var kmTravel = ''.obs;
  var petrolAllowance = ''.obs;
  Future<void> calculateDistance(
      {required double openingKm,
      required double closingKm,
      required String petrolConviense}) async {
    double distance = closingKm - openingKm;
    double petrolCon = double.parse(petrolConviense);
    double toatalAllowance = distance * petrolCon;
    kmTravel.value = distance.toStringAsFixed(2);
    petrolAllowance.value = toatalAllowance.toStringAsFixed(2);
    CustomSnackBar.showCustomSnackBar(
        message: "Success", title: 'Kilometers traveled ${kmTravel.value}Km');
  }

  var fdAllowancePrice = ''.obs;
  Future<void> calculateFoodAllowance() async {
    double fdNoDays = double.parse(foodNoDay.value.text);
    double fdConFee = double.parse(convienceController.expAmtFood.value);
    double total = fdNoDays * fdConFee;
    fdAllowancePrice.value = total.toStringAsFixed(2);
  }

  var btAllowancePrice = ''.obs;
  Future<void> calculateBattaAllowance() async {
    double fdNoDays = double.parse(battaNoDay.value.text);
    double fdConFee = double.parse(convienceController.expAmtBatta.value);
    double total = fdNoDays * fdConFee;
    btAllowancePrice.value = total.toStringAsFixed(2);
  }

  var stayAllowancePrice = ''.obs;
  Future<void> calculateStayAllowance() async {
    double fdNoDays = double.parse(stayNoDay.value.text);
    double fdConFee = double.parse(convienceController.expAmtStay.value);
    double total = fdNoDays * fdConFee;
    stayAllowancePrice.value = total.toStringAsFixed(2);
  }

  var travelAllowancePrice = ''.obs;
  Future<void> calculateTravelAllowance() async {
    double fdNoDays = double.parse(travelNoDay.value.text);
    double fdConFee = double.parse(convienceController.expAmtTravel.value);
    double total = fdNoDays * fdConFee;
    travelAllowancePrice.value = total.toStringAsFixed(2);
  }

  var allAmtTotal = ''.obs;

  Future<void> calculateTotalConvenience(
      {required String petrol,
      required String food,
      required String batta,
      required String saty,
      required String travel,
      required String claim}) async {
    print("click $claim");
    double petrolAmt = double.parse(petrol);
    double foodAmt = double.parse(food);
    double battaAmt = double.parse(batta);
    double stayAmt = double.parse(saty);
    double travelAMt = double.parse(travel);
    double claimAmt = double.parse(claim);
    double total =
        petrolAmt + foodAmt + battaAmt + stayAmt + travelAMt + claimAmt;
    print("total $total");
    allAmtTotal.value = total.toStringAsFixed(2);
  }

  var rembAmtTotal = ''.obs;

  // Function to get the current date in the desired format
  String getCurrentDate() {
    var now = DateTime.now();
    var formatter = DateFormat('yyyy-MM-dd');
    return formatter.format(now);
  }

  Future<void> pickImageFromGallery() async {
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      imagePath.value = pickedFile.path;
      print("success ");
    } else {
      print("Fail to pick image");
    }
  }

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



  Future<void> calculateRemburseTotal() async {
    double adAmt = double.parse(
        advanceRecived.value.text.isNotEmpty ? advanceRecived.value.text : "0");
    double currentTotal =
    double.parse(allAmtTotal.value.isNotEmpty ? allAmtTotal.value : "0");
    double total = adAmt - currentTotal;
    total = total.abs();
    rembAmtTotal.value = total.toStringAsFixed(2);
  }

  Future<void> fetchExpence({
    required String name,
    required String designation,
    required String head_quarters,
    required String period_from,
    required String period_to,
    required String date,
    required String departure_station,
    required String area_covered,
    required String opening_kms,
    required String closing_kms,
    required String totalKm,
    required String petrol_chrg_per_km,
    required String no_of_kms,
    required String total_petrol_charges,
    required String food_charges_per_day,
    required String food_charge_days,
    required String total_food_charges,
    required String beta_charges_per_day,
    required String beta_charge_days,
    required String total_beta_charges,
    required String stay_chrg_per_day,
    required String stay_charges_days,
    required String total_stay_charges,
    required String travel_chrg_per_day,
    required String travel_charges_days,
    required String total_travel_charges,
    required String others_details,
    required String other_chrg,
    required String total_claim,
    required String advance_received,
    required String reim_amt,
  }) async {
    loading.value = true;
    const apiUrl = ApiEndPoints.mainBaseURL + ApiEndPoints.expenses;
    const apiToken = ApiEndPoints.apiToken;

    try {
      var request = http.MultipartRequest('POST', Uri.parse(apiUrl));

      // Add headers
      request.headers.addAll({'Content-Type': 'multipart/form-data'});
      var empId = await CacheHelper.getData('empId');
      // Add fields
      request.fields['api_key'] = apiToken;
      request.fields['me_id'] = empId!;
      request.fields['name'] = name;
      request.fields['designation'] = designation;
      request.fields['head_quarters'] = head_quarters;
      request.fields['period_from'] = period_from;
      request.fields['period_to'] = period_to;
      request.fields['date'] = date;
      request.fields['departure_station'] = departure_station;
      request.fields['area_covered'] = area_covered;
      request.fields['opening_kms'] = opening_kms;
      request.fields['closing_kms'] = closing_kms;
      request.fields['total_kms'] = totalKm;
      request.fields['petrol_chrg_per_km'] = petrol_chrg_per_km;
      request.fields['no_of_kms'] = no_of_kms;
      request.fields['total_petrol_charges'] = total_petrol_charges;
      request.fields['food_charges_per_day'] = food_charges_per_day;
      request.fields['food_charge_days'] = food_charge_days;
      request.fields['total_food_charges'] = total_food_charges;
      request.fields['beta_charges_per_day'] = beta_charges_per_day;
      request.fields['beta_charge_days'] = beta_charge_days;
      request.fields['total_beta_charges'] = total_beta_charges;
      request.fields['stay_chrg_per_day'] = stay_chrg_per_day;
      request.fields['stay_charges_days'] = stay_charges_days;
      request.fields['total_stay_charges'] = total_stay_charges;
      request.fields['travel_chrg_per_day'] = travel_chrg_per_day;
      request.fields['travel_charges_days'] = travel_charges_days;
      request.fields['total_travel_charges'] = total_travel_charges;
      request.fields['others_details'] = others_details;
      request.fields['other_chrg'] = other_chrg;
      request.fields['total_claim'] = total_claim;
      request.fields['advance_received'] = advance_received;
      request.fields['reim_amt'] = reim_amt;
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
        expenceModel.value = ExpenceModel.fromJson(json.decode(responseData));
        CustomSnackBar.showCustomSnackBar(
          title: 'Success',
          message: '${expenceModel.value.message}',
        );
        Get.to(const ExpenseListScreen(), transition: Transition.cupertino);
      } else if (response.statusCode == 401) {
        var responseData = await response.stream.bytesToString();
        expenceModel.value = ExpenceModel.fromJson(json.decode(responseData));
        CustomSnackBar.showCustomErrorSnackBar(
          title: 'Failed',
          message: '${expenceModel.value.message}',
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
