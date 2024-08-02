import 'dart:ffi';

import 'package:brcrop_marketing_executive/features/expence/controller/convience_controller.dart';
import 'package:brcrop_marketing_executive/features/expence/controller/expence_controller.dart';
import 'package:brcrop_marketing_executive/features/expence/controller/expence_name_controller.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:path/path.dart' as path;
import '../../../core/utils/configs/styles/colors.dart';
import '../../../core/utils/shared/components/widgets/custom_buttons.dart';
import '../../../core/utils/shared/components/widgets/custom_snackbar.dart';
import '../../../core/utils/shared/components/widgets/custom_textfield.dart';
import '../../auth/login/repository/validator.dart';
import '../../profile/controller/profile_controller.dart';

class ExpenceScreen extends StatefulWidget {
  const ExpenceScreen({super.key});

  @override
  State<ExpenceScreen> createState() => _ExpenceScreenState();
}

class _ExpenceScreenState extends State<ExpenceScreen> {
  final ExpenceController expenceController = ExpenceController();
  final ProfileController profileController = Get.put(ProfileController());
  final ExpenceNameController expenceNameController =
      Get.put(ExpenceNameController());
  final ConvienceController convienceController =
      Get.put(ConvienceController());
  var toDate = '';
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    expenceController.formatDate();
    profileController.profileDetails();
    expenceNameController.fetchExpenceName();
    convienceController.fetchConvienceFee();
    expenceController.foodNoDay.value.addListener(() async {
      await expenceController.calculateFoodAllowance();
    });
    expenceController.battaNoDay.value.addListener(() async {
      await expenceController.calculateBattaAllowance();
    });
    expenceController.stayNoDay.value.addListener(() async {
      await expenceController.calculateStayAllowance();
    });
    expenceController.travelNoDay.value.addListener(() async {
      await expenceController.calculateTravelAllowance();
    });

    expenceController.advanceRecived.value.addListener(() async {
      await expenceController.calculateRemburseTotal();
    });
  }

  List<Widget> expenseWidgets = [];
  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColor.primarycolor,
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            automaticallyImplyLeading: false,
            backgroundColor: AppColor.primarycolor,
            title: Text('Reimbursement',
                style: TextStyle(
                    fontSize: 18.sp,
                    color: Colors.white,
                    fontFamily: "poppinsBold")),
            leading: IconButton(
                onPressed: () {
                  Get.back();
                },
                icon: Icon(
                  CupertinoIcons.back,
                  color: Colors.white,
                )),
            centerTitle: true,
          ),
          body: Container(
              width: double.infinity,
              height: double.infinity,
              padding:
                  EdgeInsets.only(top: 10, right: 15, left: 15, bottom: 15),
              color: Colors.white,
              child: SingleChildScrollView(
                child: Form(
                  key: expenceController.formKey.value,
                  child: Obx(() => Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 8.h),
                            child: Container(
                              height: 50.h,
                              width: Get.width.w,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.0),
                                  border: Border.all(color: Colors.black54)),
                              child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                      padding: const EdgeInsets.only(left: 15),
                                      child: Obx(
                                        () => Text(
                                            expenceController.presentDate.value,
                                            style: TextStyle(
                                                fontSize: 13.sp,
                                                color: AppColor.txtColorMain,
                                                fontFamily: "poppinsRegular")),
                                      ))),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 10.sp),
                            child: Align(
                              alignment: Alignment.topLeft,
                              child: Text("Period",
                                  style: TextStyle(
                                      fontSize: 14.sp,
                                      color: AppColor.txtColorMain,
                                      fontFamily: "poppinsSemiBold")),
                            ),
                          ),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(
                                height: 50.h,
                                width: Get.width * 0.40.w,
                                child: CustomTextField2(
                                  keyboardType: TextInputType.datetime,
                                  controller: expenceController.fromDate.value,
                                  // validator: (value) =>
                                  //     Validator.validateInput(input: value),
                                  hintText: "From date",
                                  suffixIcon: IconButton(
                                      onPressed: () {
                                        expenceController.fetchDate(
                                            context: context,
                                            controller: expenceController
                                                .fromDate.value);
                                      },
                                      icon: const Icon(Icons.calendar_month)),
                                ),
                              ),
                              SizedBox(
                                height: 50.h,
                                width: Get.width * 0.40.w,
                                child: CustomTextField2(
                                  keyboardType: TextInputType.datetime,
                                  controller: expenceController.toDate.value,
                                  // validator: (value) =>
                                  //     Validator.validateInput(input: value),
                                  hintText: "To date",
                                  suffixIcon: IconButton(
                                      onPressed: () {
                                        expenceController.fetchDate(
                                            context: context,
                                            controller:
                                                expenceController.toDate.value);
                                      },
                                      icon: Icon(Icons.calendar_month)),
                                ),
                              ),
                            ],
                          ),

                          Padding(
                            padding: EdgeInsets.only(top: 20.w, bottom: 8.w),
                            child: Text("Location",
                                style: TextStyle(
                                    fontSize: 14.sp,
                                    color: AppColor.txtColorMain,
                                    fontFamily: "poppinsSemiBold")),
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: SizedBox(
                                  height: 50.h,
                                  child: CustomTextField2(
                                    controller:
                                        expenceController.deptStation.value,
                                    // validator: (value) =>
                                    //     Validator.validateInput(input: value),
                                    hintText: "Start",
                                  ),
                                ),
                              ),
                              const SizedBox(
                                  width:
                                      10), // Adjust the spacing between fields
                              Expanded(
                                child: SizedBox(
                                  height: 50.h,
                                  child: CustomTextField2(
                                    controller: expenceController.haltAt.value,
                                    // validator: (value) =>
                                    //     Validator.validateInput(input: value),
                                    hintText: "Stop",
                                  ),
                                ),
                              ),
                              const SizedBox(
                                  width:
                                      10), // Adjust the spacing between fields
                              Expanded(
                                child: SizedBox(
                                  height: 50.h,
                                  child: CustomTextField2(
                                    controller:
                                        expenceController.areaCovered.value,
                                    // validator: (value) =>
                                    //     Validator.validateInput(input: value),
                                    hintText: "Area covered",
                                  ),
                                ),
                              ),
                            ],
                          ),
                          // Continue with any additional widgets or fields as needed

                          Padding(
                            padding: EdgeInsets.only(
                              top: 20.w,
                            ),
                            child: Align(
                              alignment: Alignment.topLeft,
                              child: Text("Kilometer Reading",
                                  style: TextStyle(
                                      fontSize: 14.sp,
                                      color: AppColor.txtColorMain,
                                      fontFamily: "poppinsSemiBold")),
                            ),
                          ),

                          Row(
                            children: [
                              Expanded(
                                child: Container(
                                  height: 50.h,
                                  child: CustomTextField2(
                                    controller: expenceController.openKm.value,
                                    keyboardType: TextInputType.number,
                                    // validator: (value) =>
                                    //     Validator.validateInput(input: value),
                                    hintText: "Opening Km",
                                  ),
                                ),
                              ),
                              const SizedBox(width: 10),
                              Expanded(
                                child: SizedBox(
                                  height: 50.h,
                                  child: CustomTextField1(
                                    keyboardType: TextInputType.number,
                                    controller:
                                        expenceController.closingKm.value,
                                    // validator: (value) =>
                                    //     Validator.validateInput(input: value),
                                    hintText: "Closing Km",
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 10.w, vertical: 10.h),
                                child: Align(
                                  alignment: Alignment.center,
                                  child: CustomElevatedBtn(
                                      onPressed: () async {
                                        if (expenceController
                                                .openKm.value.text.isNotEmpty &&
                                            expenceController.closingKm.value
                                                .text.isNotEmpty) {
                                          expenceController.calculateDistance(
                                              openingKm: double.parse(
                                                  expenceController
                                                      .openKm.value.text),
                                              closingKm: double.parse(
                                                  expenceController
                                                      .closingKm.value.text),
                                              petrolConviense:
                                                  convienceController
                                                      .expAmtPetrol.value);
                                        } else {
                                          expenceController.kmTravel.value = "";
                                          CustomSnackBar.showCustomErrorSnackBar(
                                              message: "Failed",
                                              title:
                                                  'open km & closing km should not be empty');
                                        }
                                      },
                                      backgroundColor: Colors.black54,
                                      width: 100.w,
                                      height: 50.h,
                                      fontSize: 12,
                                      title: "Calculate"),
                                ),
                              ),
                            ],
                          ),

                          Padding(
                            padding: EdgeInsets.only(top: 10.w, bottom: 10.w),
                            child: Text("Expenses",
                                style: TextStyle(
                                    fontSize: 14.sp,
                                    color: AppColor.txtColorMain,
                                    fontFamily: "poppinsSemiBold")),
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: Container(
                                    height: 50.h,
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                        border:
                                            Border.all(color: Colors.black54)),
                                    child: Align(
                                      child: Text(
                                        "Mileage",
                                        style: TextStyle(
                                            fontFamily: "poppinsRegular",
                                            fontSize: 13.sp),
                                      ),
                                    )),
                              ),
                              const SizedBox(
                                  width:
                                      5), // Adjust the spacing between fields
                              Expanded(
                                child: Container(
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                        border:
                                            Border.all(color: Colors.black54)),
                                    height: 50.h,
                                    child: Align(
                                        alignment: Alignment.center,
                                        child: Text(
                                            "${convienceController.expAmtPetrol.value}"))),
                              ),
                              const SizedBox(
                                  width:
                                      5), // Adjust the spacing between fields
                              Expanded(
                                child: Container(
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                        border:
                                            Border.all(color: Colors.black54)),
                                    height: 50.h,
                                    child: expenceController
                                            .kmTravel.value.isEmpty
                                        ? Align(
                                            alignment: Alignment.centerLeft,
                                            child: Padding(
                                              padding:
                                                  EdgeInsets.only(left: 2.sp),
                                              child: Text("No of km"),
                                            ))
                                        : Align(
                                            alignment: Alignment.centerLeft,
                                            child: Padding(
                                              padding:
                                                  EdgeInsets.only(left: 2.sp),
                                              child: Text(expenceController
                                                  .kmTravel.value),
                                            ))),
                              ),
                              const SizedBox(
                                  width:
                                      5), // Adjust the spacing between fields
                              Expanded(
                                child: Container(
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                        border:
                                            Border.all(color: Colors.black54)),
                                    height: 50.h,
                                    child: expenceController
                                            .petrolAllowance.value.isEmpty
                                        ? const Align(
                                            alignment: Alignment.center,
                                            child: Text(
                                              overflow: TextOverflow.ellipsis,
                                              "Allowance",
                                              style: TextStyle(
                                                  color: AppColor.txtColorMain),
                                            ),
                                          )
                                        : Align(
                                            alignment: Alignment.center,
                                            child: Text(
                                                "${expenceController.petrolAllowance.value}"))),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: Container(
                                    height: 50.h,
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                        border:
                                            Border.all(color: Colors.black54)),
                                    child: Align(
                                      child: Text(
                                        "Food",
                                        style: TextStyle(
                                            fontFamily: "poppinsRegular",
                                            fontSize: 13.sp),
                                      ),
                                    )),
                              ),
                              const SizedBox(
                                  width:
                                      5), // Adjust the spacing between fields
                              Expanded(
                                child: Container(
                                    height: 50.h,
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                        border:
                                            Border.all(color: Colors.black54)),
                                    child: Align(
                                      child: Text(
                                          convienceController.expAmtFood.value),
                                    )),
                              ),
                              const SizedBox(
                                  width:
                                      5), // Adjust the spacing between fields
                              Expanded(
                                child: SizedBox(
                                  height: 50.h,
                                  child: CustomTextField2(
                                      keyboardType: TextInputType.number,
                                      controller:
                                          expenceController.foodNoDay.value,
                                      hintText: "No.of Days"),
                                ),
                              ),
                              const SizedBox(
                                  width:
                                      5), // Adjust the spacing between fields
                              Expanded(
                                child: Container(
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                        border:
                                            Border.all(color: Colors.black54)),
                                    height: 50.h,
                                    child: Align(
                                        alignment: Alignment.center,
                                        child: expenceController
                                                .fdAllowancePrice
                                                .value
                                                .isNotEmpty
                                            ? Text(
                                                "${expenceController.fdAllowancePrice.value}")
                                            : Text("Allowance"))),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: Container(
                                    height: 50.h,
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                        border:
                                            Border.all(color: Colors.black54)),
                                    child: Align(
                                      child: Text(
                                        "DA",
                                        style: TextStyle(
                                            fontFamily: "poppinsRegular",
                                            fontSize: 13.sp),
                                      ),
                                    )),
                              ),
                              const SizedBox(
                                  width:
                                      5), // Adjust the spacing between fields
                              Expanded(
                                child: Container(
                                    height: 50.h,
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                        border:
                                            Border.all(color: Colors.black54)),
                                    child: Align(
                                        alignment: Alignment.center,
                                        child: Text(
                                            "${convienceController.expAmtBatta.value}"))),
                              ),
                              const SizedBox(
                                  width:
                                      5), // Adjust the spacing between fields
                              Expanded(
                                child: Container(
                                  height: 50.h,
                                  child: CustomTextField2(
                                      keyboardType: TextInputType.number,
                                      controller:
                                          expenceController.battaNoDay.value,
                                      hintText: "No.of Days"),
                                ),
                              ),
                              const SizedBox(
                                  width:
                                      5), // Adjust the spacing between fields
                              Expanded(
                                child: Container(
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                        border:
                                            Border.all(color: Colors.black54)),
                                    height: 50.h,
                                    child: Align(
                                        alignment: Alignment.center,
                                        child: expenceController
                                                .btAllowancePrice
                                                .value
                                                .isNotEmpty
                                            ? Text(
                                                "${expenceController.btAllowancePrice.value}")
                                            : Text("Allowance"))),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: Container(
                                    height: 50.h,
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                        border:
                                            Border.all(color: Colors.black54)),
                                    child: Align(
                                      child: Text(
                                        "Stay",
                                        style: TextStyle(
                                            fontFamily: "poppinsRegular",
                                            fontSize: 13.sp),
                                      ),
                                    )),
                              ),
                              const SizedBox(
                                  width:
                                      5), // Adjust the spacing between fields
                              Expanded(
                                child: Container(
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                        border:
                                            Border.all(color: Colors.black54)),
                                    height: 50.h,
                                    child: Align(
                                        alignment: Alignment.center,
                                        child: Text(
                                            "${convienceController.expAmtStay.value}"))),
                              ),
                              const SizedBox(
                                  width:
                                      5), // Adjust the spacing between fields
                              Expanded(
                                child: Container(
                                  height: 50.h,
                                  child: CustomTextField2(
                                      keyboardType: TextInputType.number,
                                      controller:
                                          expenceController.stayNoDay.value,
                                      hintText: "No.of Days"),
                                ),
                              ),
                              const SizedBox(
                                  width:
                                      5), // Adjust the spacing between fields
                              Expanded(
                                child: Container(
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                        border:
                                            Border.all(color: Colors.black54)),
                                    height: 50.h,
                                    child: Align(
                                        alignment: Alignment.center,
                                        child: expenceController
                                                .stayAllowancePrice
                                                .value
                                                .isNotEmpty
                                            ? Text(
                                                "${expenceController.stayAllowancePrice.value}")
                                            : Text("Allowance"))),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: Container(
                                    height: 50.h,
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                        border:
                                            Border.all(color: Colors.black54)),
                                    child: Align(
                                      child: Text(
                                        "Travel",
                                        style: TextStyle(
                                            fontFamily: "poppinsRegular",
                                            fontSize: 13.sp),
                                      ),
                                    )),
                              ),
                              const SizedBox(
                                  width:
                                      5), // Adjust the spacing between fields
                              Expanded(
                                child: Container(
                                    height: 50.h,
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                        border:
                                            Border.all(color: Colors.black54)),
                                    child: Align(
                                      alignment: Alignment.center,
                                      child: Text(convienceController
                                          .expAmtTravel.value),
                                    )),
                              ),
                              const SizedBox(width: 5),
                              Expanded(
                                child: Container(
                                  height: 50.h,
                                  child: CustomTextField2(
                                      keyboardType: TextInputType.number,
                                      controller:
                                          expenceController.travelNoDay.value,
                                      hintText: "No.of Days"),
                                ),
                              ),
                              const SizedBox(width: 5),
                              Expanded(
                                child: Container(
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                        border:
                                            Border.all(color: Colors.black54)),
                                    height: 50.h,
                                    child: Align(
                                        alignment: Alignment.center,
                                        child: expenceController
                                                .travelAllowancePrice
                                                .value
                                                .isNotEmpty
                                            ? Text(
                                                "${expenceController.travelAllowancePrice.value}")
                                            : Text("Allowance"))),
                              ),
                            ],
                          ),

                          // addExpense(context),

                          Padding(
                            padding: EdgeInsets.only(top: 20.w, bottom: 8.w),
                            child: Text("others",
                                style: TextStyle(
                                    fontSize: 14.sp,
                                    color: AppColor.txtColorMain,
                                    fontFamily: "poppinsSemiBold")),
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: Container(
                                  height: 50.h,
                                  width: 200,
                                  child: CustomTextField1(
                                      controller:
                                          expenceController.otherDetails.value,
                                      // validator: (value) =>
                                      //     Validator.validateInput(input: value),
                                      hintText: "Details"),
                                ),
                              ),
                              const SizedBox(width: 5),
                              Container(
                                height: 50.h,
                                width: 100,
                                child: CustomTextField1(
                                  keyboardType: TextInputType.number,
                                  controller: expenceController.claimAmt.value,
                                  hintText: "Claim",
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 10.w, vertical: 10.h),
                            child: Align(
                              alignment: Alignment.center,
                              child: CustomElevatedBtn(
                                onPressed: () async {
                                  print(
                                      "data ${expenceController.claimAmt.value.text}");
                                  expenceController.calculateTotalConvenience(
                                      petrol:
                                          expenceController.petrolAllowance.value.isNotEmpty
                                              ? expenceController
                                                  .petrolAllowance.value
                                              : "0",
                                      food: expenceController.fdAllowancePrice.value.isNotEmpty
                                          ? expenceController
                                              .fdAllowancePrice.value
                                          : "0",
                                      batta: expenceController.btAllowancePrice.value.isNotEmpty
                                          ? expenceController
                                              .btAllowancePrice.value
                                          : "0",
                                      saty: expenceController.stayAllowancePrice
                                              .value.isNotEmpty
                                          ? expenceController
                                              .stayAllowancePrice.value
                                          : "0",
                                      travel: expenceController
                                              .travelAllowancePrice
                                              .value
                                              .isNotEmpty
                                          ? expenceController
                                              .travelAllowancePrice.value
                                          : "0",
                                      claim: expenceController.claimAmt.value.text.isNotEmpty
                                          ? expenceController.claimAmt.value.text
                                          : "0");
                                },
                                backgroundColor: Colors.black54,
                                width: 100.w,
                                height: 40.h,
                                fontSize: 10,
                                title: 'Calculate total amount',
                              ),
                            ),
                          ),
                          Row(
                            children: [
                              Expanded(
                                  child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding:
                                        EdgeInsets.symmetric(vertical: 8.h),
                                    child: Text("Total Claim",
                                        style: TextStyle(
                                            fontSize: 14.sp,
                                            color: AppColor.txtColorMain,
                                            fontFamily: "poppinsSemiBold")),
                                  ),
                                  Container(
                                      height: 50.h,
                                      width: 140.w,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                          border: Border.all(
                                              color: Colors.black54)),
                                      child: Align(
                                        alignment: Alignment.center,
                                        child: Text(
                                            "${expenceController.allAmtTotal.value.isNotEmpty ? expenceController.allAmtTotal.value : "0"}"),
                                      )),
                                ],
                              )),
                              const SizedBox(
                                width: 10,
                              ),
                              Expanded(
                                  child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding:
                                        EdgeInsets.symmetric(vertical: 8.h),
                                    child: Text("Advance Received",
                                        style: TextStyle(
                                            fontSize: 14.sp,
                                            color: AppColor.txtColorMain,
                                            fontFamily: "poppinsSemiBold")),
                                  ),
                                  SizedBox(
                                    height: 50.h,
                                    child: CustomTextField1(
                                      keyboardType: TextInputType.number,
                                      controller: expenceController
                                          .advanceRecived.value,
                                      hintText: "Amount",
                                    ),
                                  ),
                                ],
                              ))
                            ],
                          ),
                          /* Padding(
                            padding: EdgeInsets.symmetric(vertical: 8.h),
                            child: Text("Total",
                                style: TextStyle(
                                    fontSize: 13.sp,
                                    color: AppColor.txtColorMain,
                                    fontFamily: "poppinsSemiBold")),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 5.h),
                            child: Container(
                              height: 60.h,
                              width: Get.width.w,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.0),
                                  border: Border.all(color: Colors.black54)),
                              child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                      padding: const EdgeInsets.only(left: 15),
                                      child: Obx(
                                        () => Text(
                                            expenceController
                                                    .totalPrices.value.isEmpty
                                                ? "0"
                                                : expenceController
                                                    .totalPrices.value,
                                            style: TextStyle(
                                                fontSize: 13.sp,
                                                color: AppColor.txtColorMain,
                                                fontFamily: "poppinsRegular")),
                                      ))),
                            ),
                          ),*/
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 8.h),
                            child: Text("Reimbursement Total",
                                style: TextStyle(
                                    fontSize: 13.sp,
                                    color: AppColor.txtColorMain,
                                    fontFamily: "poppinsSemiBold")),
                          ),
                          Container(
                              height: 50.h,
                              width: Get.width,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.0),
                                  border: Border.all(color: Colors.black54)),
                              child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 8.sp),
                                    child: Text(
                                        "${expenceController.rembAmtTotal.value.isNotEmpty ? expenceController.rembAmtTotal.value : "0"}"),
                                  ))),
                          Padding(
                            padding:  EdgeInsets.symmetric(vertical: 20.sp),
                            child: GestureDetector(
                              onTap: () {
                                expenceController.pickImage();
                              },
                              child: Container(
                                width: Get.width,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(10.0) //                 <--- border radius here
                                    ),
                                    border: Border.all(color: Colors.black)
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    children: [
                                      Icon(
                                        Icons.attach_file,
                                        size: 40,
                                        color: AppColor.txtColorMain,
                                      ),
                                      Text(
                                        expenceController.chkImage.value?"Image selected":"Attach Image",
                                        textAlign: TextAlign.center,
                                        style: const TextStyle(
                                          color: AppColor.txtColorMain,
                                          fontFamily: 'poppinsSemiBold',
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 10.w, vertical: 10.h),
                            child: Align(
                              alignment: Alignment.center,
                              child:  expenceController.loading.value?const CircularProgressIndicator():CustomElevatedBtn(
                                onPressed: () async {
                                  if (expenceController
                                      .formKey.value.currentState!
                                      .validate()) {
                                    // Call fetchExpence method with all the necessary parameters
                                    if (expenceController
                                            .fromDate.value.text.isNotEmpty &&
                                        expenceController
                                            .toDate.value.text.isNotEmpty &&
                                        expenceController.deptStation.value.text
                                            .isNotEmpty &&
                                        expenceController.areaCovered.value.text
                                            .isNotEmpty) {
                                      await expenceController.fetchExpence(
                                          name: profileController
                                              .profileModel.value.data!.empName
                                              .toString(),
                                          designation: profileController
                                              .profileModel
                                              .value
                                              .data!
                                              .empDesignation
                                              .toString(),
                                          head_quarters: profileController
                                              .profileModel
                                              .value
                                              .data!
                                              .empDistrict
                                              .toString(),
                                          period_from: expenceController
                                              .fromDate.value.text,
                                          period_to: expenceController
                                              .toDate.value.text,
                                          date: expenceController
                                              .getCurrentDate(),
                                          departure_station: expenceController
                                              .deptStation.value.text,
                                          area_covered:
                                              expenceController.areaCovered.value.text,
                                          opening_kms: expenceController.openKm.value.text,
                                          closing_kms: expenceController.closingKm.value.text,
                                          totalKm: expenceController.kmTravel.value,
                                          petrol_chrg_per_km: convienceController.expAmtPetrol.value,
                                          no_of_kms: expenceController.kmTravel.value,
                                          total_petrol_charges: expenceController.petrolAllowance.value,
                                          food_charges_per_day: convienceController.expAmtFood.value,
                                          food_charge_days: expenceController.foodNoDay.value.text,
                                          total_food_charges: expenceController.fdAllowancePrice.value,
                                          beta_charges_per_day: convienceController.expAmtBatta.value,
                                          beta_charge_days: expenceController.battaNoDay.value.text,
                                          total_beta_charges: expenceController.btAllowancePrice.value,
                                          stay_chrg_per_day: convienceController.expAmtStay.value,
                                          stay_charges_days: expenceController.stayNoDay.value.text,
                                          total_stay_charges: expenceController.stayAllowancePrice.value,
                                          travel_chrg_per_day: convienceController.expAmtTravel.value,
                                          travel_charges_days: expenceController.travelNoDay.value.text,
                                          total_travel_charges: expenceController.travelAllowancePrice.value,
                                          others_details: expenceController.otherDetails.value.text,
                                          other_chrg: expenceController.claimAmt.value.text,
                                          total_claim: expenceController.allAmtTotal.value,
                                          advance_received: expenceController.advanceRecived.value.text,
                                          reim_amt: expenceController.rembAmtTotal.value);
                                    } else {
                                      CustomSnackBar.showCustomErrorSnackBar(
                                          message: "Failed",
                                          title:
                                              'Please enter all mandatory fields');
                                    }
                                  }
                                },
                                backgroundColor: const Color(0xFF134005),
                                width: 100.w,
                                height: 40.h,
                                title:'Submit',
                              ),
                            ),
                          ),
                        ],
                      )),
                ),
              )),
        ),
      ),
    );
  }
}
