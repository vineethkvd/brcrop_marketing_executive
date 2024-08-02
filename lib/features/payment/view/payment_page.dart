import 'package:brcrop_marketing_executive/features/payment/controller/payonline_controller.dart';
import 'package:brcrop_marketing_executive/features/payment/view/showqr_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../core/utils/configs/styles/colors.dart';
import '../../../core/utils/shared/components/widgets/custom_buttons.dart';
import '../controller/merchant_payment_controller.dart';
import '../controller/payment_controller.dart';
import 'cashon_delivery_screen.dart';
import 'credit_term.dart';

class PaymentPage extends StatefulWidget {
  final String amount;
  const PaymentPage({super.key, required this.amount});

  @override
  State<PaymentPage> createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  final MerchantPaymentController merchantPaymentController =
      MerchantPaymentController();
  final PayOnlineController payOnlineController =
      Get.put(PayOnlineController());
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        child: Scaffold(
          appBar: AppBar(
            automaticallyImplyLeading: false,
            backgroundColor: AppColor.primarycolor,
            title: Text('Payment',
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
            padding: EdgeInsets.only(top: 10, right: 15, left: 15),
            color: Colors.white,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 15.h),
                  child: CustomElevatedBtn(
                    onPressed: () {
                      // payOnlineController.payOnline(order_amount: int.parse(widget.amount));
                      Get.to(
                          ShowQRScreen(
                            amt: widget.amount,
                          ),
                          transition: Transition.cupertino);
                    },
                    backgroundColor: const Color(0xFF134005),
                    width: Get.width.w,
                    height: 45.0.h,
                    title: 'Pay Online',
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 15.h),
                  child: CustomElevatedBtn(
                    onPressed: () {
                      // merchantPaymentController.payMerchant(
                      //     order_amount: int.parse(widget.amount),
                      //     payment_type: 'Cash on Delivery',
                      //     dealer_id: "");
                      Get.to(CashOnDeliveryPage(amt: widget.amount),
                          transition: Transition.leftToRightWithFade);
                    },
                    backgroundColor: const Color(0xFF134005),
                    width: Get.width.w,
                    height: 45.0.h,
                    title: 'Cash on delivery',
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 15.h),
                  child: CustomElevatedBtn(
                    onPressed: () {
                      Get.to(CreditTermScreen(amount: widget.amount),
                          transition: Transition.leftToRightWithFade);
                    },
                    backgroundColor: Color(0xFF134005),
                    width: Get.width.w,
                    height: 45.0.h,
                    title: 'Credit Terms',
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
