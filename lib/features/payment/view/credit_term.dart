import 'package:brcrop_marketing_executive/features/payment/controller/dealer_list_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../core/utils/configs/styles/colors.dart';
import '../../../core/utils/shared/components/widgets/custom_buttons.dart';
import '../../../core/utils/shared/components/widgets/custom_textfield.dart';
import '../../auth/login/repository/validator.dart';
import '../controller/fetch_credit_controller.dart';
import '../controller/merchant_payment_controller.dart';
import '../controller/payment_controller.dart';

class CreditTermScreen extends StatefulWidget {
  final String amount;
  const CreditTermScreen({super.key, required this.amount});

  @override
  State<CreditTermScreen> createState() => _CreditTermScreenState();
}

class _CreditTermScreenState extends State<CreditTermScreen> {
  final DealerListController dealerListController = DealerListController();
  final FetchCreditController fetchCreditController = FetchCreditController();

  final MerchantPaymentController merchantPaymentController =
      MerchantPaymentController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    dealerListController.fetchDriverList();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColor.primarycolor,
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            automaticallyImplyLeading: false,
            backgroundColor: AppColor.primarycolor,
            title:  Text(
              'Credit Term',
                style: TextStyle(
                    fontSize: 18.sp,
                    color: Colors.white,
                    fontFamily: "poppinsBold")
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
            padding: EdgeInsets.only(top: 10, right: 15, left: 15),
            color: Colors.white,
            child: Obx(() => Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                     Text(
                      "Select Dealer",
                        style: TextStyle(
                            fontSize: 13.sp,
                            color: AppColor.txtColorMain,
                            fontFamily: "poppinsSemiBold")
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 10.h),
                      child: Container(
                        height: 60.h,
                        width: Get.width.w,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            border: Border.all(color: Colors.black54)),
                        child: DropdownButton<String>(
                          dropdownColor: Colors.white,
                          underline: Container(),
                          hint: dealerListController.selectedItem.value.isEmpty
                              ? Row(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(left: 10.w),
                                      child:  Text('Select Dealer',
                                          style: TextStyle(
                                              fontSize: 13.sp,
                                              color: AppColor.txtColorMain,
                                              fontFamily: "poppinsRegular")),
                                    ),
                                  ],
                                )
                              : Row(
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(left: 10.w),
                                      child: Text(
                                        dealerListController
                                            .selectedItem.value!,
                                          style: TextStyle(
                                              fontSize: 13.sp,
                                              color: AppColor.txtColorMain,
                                              fontFamily: "poppinsRegular")
                                      ),
                                    ),
                                  ],
                                ),
                          isExpanded: true,
                          iconSize: 30.0,
                           style: TextStyle(
                            fontSize: 13.sp,
                            color: AppColor.txtColorMain,
                            fontFamily: "poppinsRegular"),
                          items: dealerListController.dealerList.value.map(
                            (val) {
                              dealerListController.selectedItem.value =
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
                              dealerListController.selectedId.value = val!;
                              dealerListController.selectedItem.value =
                                  dealerListController.dealerList.value
                                      .firstWhere(
                                          (element) => element.dealerId == val)
                                      .dName!;
                              fetchCreditController.fetchCreditLimit(
                                  dealerId:
                                      "${dealerListController.selectedId.value}");
                              print(
                                  "dealer :${dealerListController.selectedItem.value} id:${dealerListController.selectedId.value}");
                            });
                          },
                        ),
                      ),
                    ),
                     Text(
                      "Credit Limit",
                        style: TextStyle(
                            fontSize: 13.sp,
                            color: AppColor.txtColorMain,
                            fontFamily: "poppinsSemiBold")
                    ),
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
                              child: fetchCreditController
                                      .creditLimit.value.isNotEmpty
                                  ? Text(
                                      "${fetchCreditController.creditLimit.value}",style: TextStyle(
                                  fontSize: 13.sp,
                                  color: AppColor.txtColorMain,
                                  fontFamily: "poppinsRegular"))
                                  : Text("choose dealer first",style: TextStyle(
                                  fontSize: 13.sp,
                                  color: AppColor.txtColorMain,
                                  fontFamily: "poppinsRegular")),
                            )),
                      ),
                    ),
                     Text(
                      "Payable amount",
                        style: TextStyle(
                            fontSize: 13.sp,
                            color: AppColor.txtColorMain,
                            fontFamily: "poppinsSemiBold")
                    ),
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
                              child: Text("Rs ${widget.amount}",style: TextStyle(
                                  fontSize: 13.sp,
                                  color: AppColor.txtColorMain,
                                  fontFamily: "poppinsRegular")),
                            )),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 15.h),
                      child: Center(
                        child: CustomElevatedBtn(
                          onPressed: () async {
                            await merchantPaymentController.payMerchant(
                                order_amount: int.parse(widget.amount),
                                payment_type: "Credit Term",
                                dealer_id:
                                    dealerListController.selectedId.value);
                          },
                          backgroundColor: Color(0xFF134005),
                          width: Get.width * 0.5.w,
                          height: 45.0.h,
                          title: 'Pay',
                        ),
                      ),
                    ),
                  ],
                )),
          ),
        ),
      ),
    );
  }
}
