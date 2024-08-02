import 'package:brcrop_marketing_executive/features/soil_test/view/testlist_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../core/helpers/cache_helper/cache_helper.dart';
import '../../../core/utils/configs/styles/colors.dart';

import '../../about/view/about_screen.dart';
import '../../auth/login/view/login_view.dart';
import '../../contact/view/contact_screen.dart';
import '../../order_product/view/order_product_screen.dart';
import '../../profile/view/profile_screen.dart';
import '../../return/view/return_page.dart';
import '../../settings/view/settings_screen.dart';

class UserScreen extends StatefulWidget {
  const UserScreen({super.key});

  @override
  State<UserScreen> createState() => _UserScreenState();
}

class _UserScreenState extends State<UserScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColor.primarycolor,
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            automaticallyImplyLeading: false,
            backgroundColor: AppColor.primarycolor,
            title: Text('Marketing Officer',
                style: TextStyle(
                    fontSize: 18.sp,
                    color: Colors.white,
                    fontFamily: "poppinsBold")),
            centerTitle: true,
          ),
          body: Container(
            color: Colors.white,
            height: double.infinity,
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Color(0xFFE4E5E4),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                children: [
                                  Icon(Icons.person,color: AppColor.txtColorMain,size: 25.sp,),
                                  SizedBox(
                                    width: 10.h,
                                  ),
                                  Text(
                                      'My Profile',
                                      style: TextStyle(
                                          fontSize: 15.sp,
                                          color: AppColor.txtColorMain,
                                          fontFamily: "poppinsRegular")
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        InkWell(
                          onTap: () {
                            Get.to(const ProfileScreen(),
                                transition:
                                Transition.cupertino);
                          },
                          child: Padding(
                            padding:  EdgeInsets.all(8.0),
                            child: Icon(Icons.arrow_forward,color: AppColor.txtColorMain,size: 25.sp,),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Color(0xFFE4E5E4),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                children: [
                                  Icon(Icons.energy_savings_leaf,color: AppColor.txtColorMain,size: 25.sp,),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                      'Soil Test',
                                      style: TextStyle(
                                          fontSize: 15.sp,
                                          color: AppColor.txtColorMain,
                                          fontFamily: "poppinsRegular")
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        InkWell(
                          onTap: () {
                            Get.to(const SoilTestListScreen(),
                                transition: Transition.cupertino);
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Icon(Icons.arrow_forward,color: AppColor.txtColorMain,size: 25.sp,),
                          ),
                        )
                      ],
                    ),
                  ),
                ), Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Color(0xFFE4E5E4),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                children: [
                                  Icon(CupertinoIcons.gift_fill,color: AppColor.txtColorMain,size: 25.sp,),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                      'Return Product',
                                      style: TextStyle(
                                          fontSize: 15.sp,
                                          color: AppColor.txtColorMain,
                                          fontFamily: "poppinsRegular")
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        InkWell(
                          onTap: () {
                            Get.to(ReturnProduct(),transition: Transition.cupertino);
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Icon(Icons.arrow_forward,color: AppColor.txtColorMain,size: 25.sp,),
                          ),
                        )
                      ],
                    ),
                  ),
                ),Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Color(0xFFE4E5E4),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                children: [
                                  Icon(Icons.key,color: AppColor.txtColorMain,size: 25.sp,),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                      'Change password',
                                      style: TextStyle(
                                          fontSize: 15.sp,
                                          color: AppColor.txtColorMain,
                                          fontFamily: "poppinsRegular")
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        InkWell(
                          onTap: () {
                            Get.to(const SettingsScreen(),transition: Transition.cupertino);
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Icon(Icons.arrow_forward,color: AppColor.txtColorMain,size: 25.sp,),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Color(0xFFE4E5E4),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                children: [
                                  Icon(Icons.supervised_user_circle_rounded,color: AppColor.txtColorMain,size: 25.sp,),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                      'About',
                                      style: TextStyle(
                                          fontSize: 15.sp,
                                          color: AppColor.txtColorMain,
                                          fontFamily: "poppinsRegular")
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        InkWell(
                          onTap: () {
                            Get.to(const AboutUsScreen(),
                                transition: Transition.cupertino);
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Icon(Icons.arrow_forward,color: AppColor.txtColorMain,size: 25.sp,),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Color(0xFFE4E5E4),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                children: [
                                  Icon(Icons.newspaper,color: AppColor.txtColorMain,size: 25.sp,),
                                  SizedBox(width: 10,),
                                  Text(
                                      'Order Page',
                                      style: TextStyle(
                                          fontSize: 15.sp,
                                          color: AppColor.txtColorMain,
                                          fontFamily: "poppinsRegular")
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        InkWell(
                          onTap: () {
                            Get.to(const OrderProductPage(),
                                transition: Transition.cupertino);
                          },
                          child: Padding(
                            padding:  const EdgeInsets.all(8.0),
                            child: Icon(Icons.arrow_forward,color: AppColor.txtColorMain,size: 25.sp,),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Color(0xFFE4E5E4),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                children: [
                                  Icon(Icons.account_box_outlined,color: AppColor.txtColorMain,size: 25.sp,),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                      'Contact',
                                      style: TextStyle(
                                          fontSize: 16.sp,
                                          color: AppColor.txtColorMain,
                                          fontFamily: "poppinsRegular")
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        InkWell(
                          onTap: () {
                            Get.to(const ContactScreen(),transition: Transition.cupertino);
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Icon(Icons.arrow_forward,color: AppColor.txtColorMain,size: 25.sp,),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: const Color(0xFFE4E5E4),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Row(
                                children: [
                                  Icon(Icons.logout,color: AppColor.txtColorMain,size: 25.sp,),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                      'Logout',
                                      style: TextStyle(
                                          fontSize: 16.sp,
                                          color: AppColor.txtColorMain,
                                          fontFamily: "poppinsRegular")
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        InkWell(
                          onTap: () {
                            Get.defaultDialog(
                              title: 'Logout',
                              textConfirm: 'Logout',
                              middleTextStyle:TextStyle(
                                  fontSize: 13.sp,
                                  color: AppColor.txtColorMain,
                                  fontFamily: "poppinsRegular"),
                              middleText:
                              'Are you sure you want to logout?',
                              textCancel: 'Cancel',
                              titleStyle:TextStyle(
                                  fontSize: 16.sp,
                                  color: AppColor.txtColorMain,
                                  fontFamily: "poppinsSemiBold"),
                              buttonColor:
                              AppColor.appMainColor, // Set the button color
                              radius: 10.0, // Set the border radius
                              onConfirm: () {
                                CacheHelper.clearData("empId");
                                Get.back();
                                Get.offAll(
                                  const LoginScreen(),
                                  transition:
                                  Transition.leftToRightWithFade,
                                ); // Navigate to login screen
                              },
                              onCancel: () {
                                Get.back(); // Close current screen
                              },
                            );
                          },
                          child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Icon(Icons.arrow_forward,color: AppColor.txtColorMain,size: 25.sp,),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
