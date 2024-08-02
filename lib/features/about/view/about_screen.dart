import 'package:brcrop_marketing_executive/features/about/view/privacy_policy_screen.dart';
import 'package:brcrop_marketing_executive/features/about/view/refund_screen.dart';
import 'package:brcrop_marketing_executive/features/about/view/shopping_policy_screen.dart';
import 'package:brcrop_marketing_executive/features/about/view/term_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_widget_from_html_core/flutter_widget_from_html_core.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

import '../../../core/utils/configs/styles/colors.dart';
import '../controller/privacy_policy_controller.dart';
import 'cancel_policy_screen.dart';

class AboutUsScreen extends StatefulWidget {
  const AboutUsScreen({super.key});

  @override
  State<AboutUsScreen> createState() => _AboutUsScreenState();
}

class _AboutUsScreenState extends State<AboutUsScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColor.appMainColor,
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: AppColor.primarycolor,
          title: Text(
            'About Us',
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
          width: double.infinity,
          height: double.infinity,
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                InkWell(
                  onTap: () {
                    Get.to(const PrivacyPolicyScreen(),
                        transition: Transition.cupertino);
                  },
                  child:  ListTile(
                    titleAlignment: ListTileTitleAlignment.center,
                    title: Text(
                      "Privacy Policy",
                        style: TextStyle(
                            fontSize: 13.sp,
                            color: AppColor.txtColorMain,
                            fontFamily: "poppinsRegular")
                    ),
                    trailing: Icon(
                      Icons.arrow_forward,
                      color: Colors.black54,
                    ),
                  ),
                ),
                const Divider(),
                InkWell(
                  onTap: () {
                    Get.to(const TermScreen(),
                        transition: Transition.cupertino);
                  },
                  child:  ListTile(
                    titleAlignment: ListTileTitleAlignment.center,
                    title: Text(
                      "Terms and condition",
                        style: TextStyle(
                            fontSize: 13.sp,
                            color: AppColor.txtColorMain,
                            fontFamily: "poppinsRegular")
                    ),
                    trailing: Icon(
                      Icons.arrow_forward,
                      color: Colors.black54,
                    ),
                  ),
                ),
                const Divider(),
                InkWell(
                  onTap: () {
                    Get.to(const ShoppingPolicySCreen(),
                        transition: Transition.cupertino);
                  },
                  child:  ListTile(
                    titleAlignment: ListTileTitleAlignment.center,
                    title: Text(
                      "Shipping Policy",
                        style: TextStyle(
                            fontSize: 13.sp,
                            color: AppColor.txtColorMain,
                            fontFamily: "poppinsRegular")
                    ),
                    trailing: Icon(
                      Icons.arrow_forward,
                      color: Colors.black54,
                    ),
                  ),
                ),
                const Divider(),
                InkWell(
                  onTap: () {
                    Get.to(const CancelPolicyScreen(),
                        transition: Transition.leftToRightWithFade);
                  },
                  child:  ListTile(
                    titleAlignment: ListTileTitleAlignment.center,
                    title: Text(
                      "Cancellation Policy",
                        style: TextStyle(
                            fontSize: 13.sp,
                            color: AppColor.txtColorMain,
                            fontFamily: "poppinsRegular")
                    ),
                    trailing: Icon(
                      Icons.arrow_forward,
                      color: Colors.black54,
                    ),
                  ),
                ),
                const Divider(),
                InkWell(
                  onTap: () {
                    Get.to(const RefundScreen(),transition: Transition.cupertino);
                  },
                  child:  ListTile(
                    titleAlignment: ListTileTitleAlignment.center,
                    title: Text(
                      "Return & Refund Policy",
                        style: TextStyle(
                            fontSize: 13.sp,
                            color: AppColor.txtColorMain,
                            fontFamily: "poppinsRegular")
                    ),
                    trailing: Icon(
                      Icons.arrow_forward,
                      color: Colors.black54,
                    ),
                  ),
                ),
                const Divider()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
