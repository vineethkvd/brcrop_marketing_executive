import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_widget_from_html_core/flutter_widget_from_html_core.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

import '../../../core/utils/configs/styles/colors.dart';
import '../controller/cancel_policy_controller.dart';
import '../controller/privacy_policy_controller.dart';

class CancelPolicyScreen extends StatefulWidget {
  const CancelPolicyScreen({super.key});

  @override
  State<CancelPolicyScreen> createState() => _CancelPolicyScreenState();
}

class _CancelPolicyScreenState extends State<CancelPolicyScreen> {
  final CancelPolicyController cancelPolicyController = CancelPolicyController();
  @override
  void initState() {
    // TODO: implement initState
    cancelPolicyController.fetchCancelPolicy();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColor.appMainColor,
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: AppColor.primarycolor,
          title: Text(
            'Cancellation Policy',
            style: TextStyle(
                fontSize: 18.sp,
                color: Colors.white,
                fontFamily: "poppinsBold"),
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
          padding: EdgeInsets.only(left: 10.w, right: 10.w, top: 10.w),
          color: Colors.white,
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Obx(() => cancelPolicyController.data.value.isNotEmpty
                    ? Container(
                    color: Colors.white,
                    height: Get.height.h,
                    width: Get.width.w,
                    child: HtmlWidget(cancelPolicyController.data.value))
                    : Container(
                  color: Colors.white,
                  height: Get.height.h,
                  width: Get.width.w,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: Get.width * 0.3.w,
                      ),
                      Center(child: const Text("No data available"))
                    ],
                  ),
                ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
