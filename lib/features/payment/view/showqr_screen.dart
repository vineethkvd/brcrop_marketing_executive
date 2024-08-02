import 'package:brcrop_marketing_executive/features/payment/controller/fetch_qr_controller.dart';
import 'package:brcrop_marketing_executive/features/payment/controller/payonline_controller.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../core/utils/configs/styles/colors.dart';
import '../../../core/utils/shared/components/widgets/custom_buttons.dart';
import '../../../core/utils/shared/components/widgets/custom_textfield.dart';
import '../../auth/login/repository/validator.dart';
import '../controller/dealer_list_controller.dart';
import '../controller/fetch_credit_controller.dart';
import '../controller/merchant_payment_controller.dart';
import '../controller/payment_controller.dart';
import 'credit_term.dart';

class ShowQRScreen extends StatefulWidget {
  final String amt;
  const ShowQRScreen({super.key, required this.amt});

  @override
  State<ShowQRScreen> createState() => _ShowQRScreenState();
}

class _ShowQRScreenState extends State<ShowQRScreen> {
  final FetchQRImageController fetchQRImageController =
      Get.put(FetchQRImageController());
  final FetchCreditController fetchCreditController = FetchCreditController();
  final PayOnlineController payOnlineController = PayOnlineController();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    fetchQRImageController.fetchQrImage();
    driverListController.fetchDriverList();
  }

  final MerchantPaymentController merchantPaymentController =
      MerchantPaymentController();
  final DealerListController driverListController = DealerListController();
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        child: Scaffold(
          appBar: AppBar(
            automaticallyImplyLeading: false,
            backgroundColor: AppColor.primarycolor,
            title: const Text(
              'Payment',
              style: TextStyle(color: Colors.white),
            ),
            leading: IconButton(
                onPressed: () {
                  Get.back();
                },
                icon: const Icon(
                  CupertinoIcons.back,
                  color: Colors.white,
                )),
            centerTitle: true,
          ),
          body: Container(
              width: Get.width,
              height: Get.height,
              padding: const EdgeInsets.only(
                  top: 10, right: 15, left: 15, bottom: 15),
              color: Colors.white,
              child: Obx(
                () => SingleChildScrollView(
                  child: Form(
                    key: fetchQRImageController.formKey.value,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                            child: SizedBox(
                              width: Get.width * 0.85.w,
                              height: Get.height * 0.50.w,
                              child: CachedNetworkImage(
                                fit: BoxFit.fill,
                                imageUrl: fetchQRImageController
                                    .qrImageModel.value.gpayImage!,
                                placeholder: (context, url) =>
                                    const CupertinoActivityIndicator(),
                                errorWidget: (context, url, error) =>
                                    const Icon(Icons.error),
                              ),
                            ),
                          ),
                        ),
                        Text("Payable amount",
                            style: TextStyle(
                                fontSize: 13.sp,
                                color: AppColor.txtColorMain,
                                fontFamily: "poppinsSemiBold")),
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 10.h),
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
                                  child: Text("Rs ${widget.amt}",
                                      style: TextStyle(
                                          fontSize: 13.sp,
                                          color: AppColor.txtColorMain,
                                          fontFamily: "poppinsRegular")),
                                )),
                          ),
                        ),
                        Text("Select Dealer",
                            style: TextStyle(
                                fontSize: 13.sp,
                                color: AppColor.txtColorMain,
                                fontFamily: "poppinsSemiBold")),
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 5.h),
                          child: Container(
                            height: 60.h,
                            width: Get.width.w,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.0),
                                border: Border.all(color: Colors.black54)),
                            child: DropdownButton<String>(
                              dropdownColor: Colors.white,
                              underline: Container(),
                              hint: driverListController
                                      .selectedItem.value.isEmpty
                                  ? Row(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.only(left: 10.w),
                                          child: Text('Select Dealer',
                                              style: TextStyle(
                                                  fontSize: 13.sp,
                                                  color: AppColor.txtColorMain,
                                                  fontFamily:
                                                      "poppinsRegular")),
                                        ),
                                      ],
                                    )
                                  : Row(
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.only(left: 10.w),
                                          child: Text(
                                              driverListController
                                                  .selectedItem.value!,
                                              style: TextStyle(
                                                  fontSize: 13.sp,
                                                  color: AppColor.txtColorMain,
                                                  fontFamily:
                                                      "poppinsRegular")),
                                        ),
                                      ],
                                    ),
                              isExpanded: true,
                              iconSize: 30.0,
                              style: TextStyle(
                                  fontSize: 13.sp,
                                  color: AppColor.txtColorMain,
                                  fontFamily: "poppinsRegular"),
                              items: driverListController.dealerList.value.map(
                                (val) {
                                  driverListController.selectedItem.value =
                                      val.dName!;
                                  // driverListController.selectedId.value =
                                  //     val.dealerId!;
                                  return DropdownMenuItem<String>(
                                    value: val.dealerId,
                                    child: Padding(
                                      padding: EdgeInsets.only(left: 10.w),
                                      child: Text("${val.dName}"),
                                    ),
                                  );
                                },
                              ).toList(),
                              onChanged: (val) {
                                setState(() {
                                  driverListController.selectedId.value = val!;
                                  driverListController.selectedItem.value =
                                      driverListController.dealerList.value
                                          .firstWhere((element) =>
                                              element.dealerId == val)
                                          .dName!;
                                  fetchCreditController.fetchCreditLimit(
                                      dealerId:
                                          "${driverListController.selectedId.value}");
                                  print(
                                      "dealer :${driverListController.selectedItem.value} id:${driverListController.selectedId.value}");
                                });
                              },
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 5.h),
                          child: Text("Amount",
                              style: TextStyle(
                                  fontSize: 13.sp,
                                  color: AppColor.txtColorMain,
                                  fontFamily: "poppinsSemiBold")),
                        ),
                        CustomTextField1(
                          keyboardType: TextInputType.number,
                          controller: fetchQRImageController.amt.value,
                          validator: (value) =>
                              Validator.validateInput(input: value),
                          hintText: "Enter amount",
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 5.h),
                          child: Text("Transaction Id",
                              style: TextStyle(
                                  fontSize: 13.sp,
                                  color: AppColor.txtColorMain,
                                  fontFamily: "poppinsSemiBold")),
                        ),
                        CustomTextField1(
                          keyboardType: TextInputType.text,
                          controller: fetchQRImageController.transaction.value,
                          validator: (value) =>
                              Validator.validateInput(input: value),
                          hintText: "Enter transaction Id",
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 10.w, vertical: 10.h),
                          child: Align(
                            alignment: Alignment.center,
                            child: CustomElevatedBtn(
                              onPressed: () async {
                                if (fetchQRImageController
                                    .formKey.value.currentState!
                                    .validate()) {
                                  payOnlineController.payOnline(
                                    order_amount: int.parse(widget.amt),
                                    dealer_id:
                                        driverListController.selectedId.value,
                                    paid_amount: int.parse(
                                        fetchQRImageController.amt.value.text),
                                    transfer_id: fetchQRImageController
                                        .transaction.value.text,
                                  );
                                }
                              },
                              backgroundColor: const Color(0xFF134005),
                              width: 100.w,
                              height: 40.h,
                              title: 'Submit',
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              )),
        ));
  }
}
