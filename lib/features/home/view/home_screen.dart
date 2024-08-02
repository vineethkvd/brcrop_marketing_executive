import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../../core/utils/configs/styles/colors.dart';
import '../../../core/utils/shared/constants/assets_pathes.dart';
import '../../achived_target/controller/achieved_target_controller.dart';
import '../../attendance/controller/live_location_controller.dart';
import '../../attendance/view/attendance_screen.dart';
import '../../expence/view/expense_list_screen.dart';
import '../../monthly_target/controller/monthly_target_controller.dart';
import '../../notification/view/notification_screen.dart';
import '../../slider/view/widget/slider_widget.dart';
import '../../transaction/view/transaction_screen.dart';
import '../../writeup_list/view/writeup_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final MonthlyTargetController monthlyTargetController =
      Get.put(MonthlyTargetController());
  final AchievedTargetController achievedTargetController =
      Get.put(AchievedTargetController());
  final FetchLiveLocationController fetchLiveLocationController =
      Get.put(FetchLiveLocationController());

  @override
  void initState() {
    super.initState();
    _initialize();
  }

  Future<void> _initialize() async {
    await fetchLiveLocationController.trackLiveLocation();
    await monthlyTargetController.monthlyTargets();
    await achievedTargetController.achievedTargets();
  }

  @override
  void dispose() {
    // Stop tracking live location
    fetchLiveLocationController.stopTrackingLiveLocation();

    // Dispose other controllers if necessary
    monthlyTargetController.dispose();
    achievedTargetController.dispose();

    super.dispose();
  }

  // Future<void> _checkUserLogin() async {
  //   await fetchLiveLocationController.checkLoginOrNot();
  //   await Future.delayed(const Duration(seconds: 2));
  //   if (fetchLiveLocationController.checkAttendance.value.status == "Success") {
  //     print("yer not marked attendance yet");
  //   } else if (fetchLiveLocationController.checkAttendance.value.status == "Failed") {
  //
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColor.primarycolor,
      child: SafeArea(
        child: Scaffold(
          extendBodyBehindAppBar: false,
          body: Container(
              color: Colors.white,
              width: Get.width,
              height: Get.height,
              child: ListView(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        color: const Color(0xFF134005),
                        width: double.infinity,
                        height: 100.h,
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(
                                width: Get.width * 0.20.w,
                                height: 100.h,
                                child: Padding(
                                  padding: EdgeInsets.only(left: 10.sp),
                                  child: SvgPicture.asset(
                                      AssetsPathes.smallapplogo),
                                )),
                            Expanded(
                                child: Center(
                                    child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SizedBox(
                                    child:
                                        SvgPicture.asset(AssetsPathes.appName)),
                              ],
                            ))),
                            SizedBox(
                              width: Get.width * 0.20.sp,
                              height: 100.sp,
                              child: IconButton(
                                onPressed: () {
                                  Get.to(const NotificationScreen(),
                                      transition: Transition.cupertino);
                                },
                                icon: const Icon(
                                  Icons.notifications,
                                  color: Colors.white,
                                  size: 30,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                          alignment: Alignment.center,
                          padding: EdgeInsets.only(
                            top: 20.w,
                            bottom: 10.w,
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.symmetric(vertical: 5.sp),
                                child: SizedBox(
                                  height: 180.h,
                                  child: const SliderWidget(),
                                ),
                              ),
                              Container(
                                  height: 50.h,
                                  width: double.infinity,
                                  color: Colors.grey.shade300,
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      GestureDetector(
                                        onTap: () =>
                                            _launchURL('https://www.web.com'),
                                        child: Container(
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                          ),
                                          child: Image.asset(
                                            "assets/icons/www.png",
                                            fit: BoxFit.contain,
                                            width: 34.w,
                                            height: 34.h,
                                          ),
                                        ),
                                      ),
                                      SizedBox(width: 10.w),
                                      GestureDetector(
                                        onTap: () => _launchURL(
                                            'https://www.instagram.com'),
                                        child: Container(
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius:
                                                BorderRadius.circular(10),
                                          ),
                                          child: Image.asset(
                                              "assets/icons/instagram.png",
                                              fit: BoxFit.contain,
                                              width: 34,
                                              height: 34),
                                        ),
                                      ),
                                      SizedBox(width: 10.w),
                                      GestureDetector(
                                        onTap: () => _launchURL(
                                            'https://www.facebook.com'),
                                        child: Image.asset(
                                          "assets/icons/facebook.png",
                                          fit: BoxFit.contain,
                                          width: 34.w,
                                          height: 34.h,
                                        ),
                                      ),
                                      SizedBox(width: 10.w),
                                      GestureDetector(
                                        onTap: () => _launchURL(
                                            'https://www.linkedin.com'),
                                        child: Container(
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius:
                                                BorderRadius.circular(10),
                                          ),
                                          child: Image.asset(
                                            "assets/icons/linkedin.png",
                                            fit: BoxFit.contain,
                                            width: 34,
                                            height: 34,
                                          ),
                                        ),
                                      ),
                                      SizedBox(width: 10.w),
                                      GestureDetector(
                                        onTap: () =>
                                            _launchURL('https://www.x.com'),
                                        child: Container(
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius:
                                                BorderRadius.circular(10),
                                          ),
                                          child: Image.asset(
                                            "assets/icons/x.png",
                                            fit: BoxFit.contain,
                                            width: 34,
                                            height: 34,
                                          ),
                                        ),
                                      ),
                                    ],
                                  )),
                              Padding(
                                padding: EdgeInsets.symmetric(
                                    vertical: 10.h, horizontal: 10.w),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(10),
                                      child: Container(
                                        width: Get.width * 0.43.sp,
                                        height: 108.sp,
                                        color: Colors.green,
                                        child: Column(
                                          children: [
                                            Expanded(
                                              child: Container(
                                                color: const Color(0xff4cb050),
                                                alignment: Alignment.center,
                                                child: Padding(
                                                  padding: EdgeInsets.only(
                                                      left: 8.sp),
                                                  child: Text(
                                                    "Monthly Target",
                                                    style: TextStyle(
                                                        fontSize: 16.sp,
                                                        color: Colors.white,
                                                        fontFamily:
                                                            "poppinsSemiBold"),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Container(
                                              alignment: Alignment.center,
                                              height: 54.sp,
                                              color: Color(0xff3e8e41),
                                              child: Obx(
                                                () => Text(
                                                  monthlyTargetController
                                                          .monthlyTargetModel
                                                          .value
                                                          .monthTarget ??
                                                      '0',
                                                  style: TextStyle(
                                                      fontSize: 22.sp,
                                                      color: Colors.white,
                                                      fontFamily:
                                                          "poppinsBold"),
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(10),
                                      child: Container(
                                        width: Get.width * 0.43.sp,
                                        height: 108.sp,
                                        color: Colors.green,
                                        child: Column(
                                          children: [
                                            Expanded(
                                              child: Container(
                                                color: const Color(0xffff5353),
                                                alignment: Alignment.center,
                                                child: Padding(
                                                  padding: EdgeInsets.only(
                                                      left: 8.sp),
                                                  child: Text(
                                                    "Achieved Target",
                                                    style: TextStyle(
                                                        fontSize: 16.sp,
                                                        color: Colors.white,
                                                        fontFamily:
                                                            "poppinsSemiBold"),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Container(
                                              alignment: Alignment.center,
                                              height: 54.sp,
                                              color: const Color(0xffcc0000),
                                              child: Obx(
                                                () => Text(
                                                  achievedTargetController
                                                          .achievedTargetModel
                                                          .value
                                                          .achievedCount ??
                                                      '0',
                                                  style: TextStyle(
                                                      fontSize: 22.sp,
                                                      color: Colors.white,
                                                      fontFamily:
                                                          "poppinsBold"),
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(
                                    vertical: 5.h, horizontal: 10.w),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(10),
                                      child: GestureDetector(
                                        onTap: () {
                                          Get.to(const AttendanceScreen(),
                                              transition: Transition
                                                  .leftToRightWithFade);
                                        },
                                        child: Container(
                                          width: Get.width * 0.43.sp,
                                          height: 108.sp,
                                          color: Colors.deepPurple,
                                          child: Center(
                                            child: Text(
                                              "View Attendance",
                                              style: TextStyle(
                                                  fontSize: 16.sp,
                                                  color: Colors.white,
                                                  fontFamily:
                                                      "poppinsSemiBold"),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(10),
                                      child: InkWell(
                                        onTap: () {
                                          Get.to(const TransactionScreen(),
                                              transition: Transition
                                                  .leftToRightWithFade);
                                        },
                                        child: Container(
                                          alignment: Alignment.center,
                                          width: Get.width * 0.43.sp,
                                          height: 108.sp,
                                          color: Colors.blueGrey,
                                          child: Padding(
                                            padding:
                                                EdgeInsets.only(left: 5.sp),
                                            child: Text(
                                              // maxLines: 2,
                                              "Statement of accounts",
                                              style: TextStyle(
                                                  fontSize: 16.sp,
                                                  color: Colors.white,
                                                  fontFamily:
                                                      "poppinsSemiBold"),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(
                                    vertical: 5.h, horizontal: 10.w),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(10),
                                      child: GestureDetector(
                                        onTap: () {
                                          Get.to(const ExpenseListScreen(),
                                              transition: Transition
                                                  .leftToRightWithFade);
                                        },
                                        child: Container(
                                          alignment: Alignment.center,
                                          width: Get.width * 0.43.sp,
                                          height: 108.sp,
                                          color: Colors.deepOrangeAccent,
                                          child: Padding(
                                            padding:
                                                EdgeInsets.only(left: 5.sp),
                                            child: Text(
                                              "Expenses",
                                              style: TextStyle(
                                                  fontSize: 16.sp,
                                                  color: Colors.white,
                                                  fontFamily:
                                                      "poppinsSemiBold"),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(10),
                                      child: InkWell(
                                        onTap: () {
                                          Get.to(const WriteUpListScreen(),
                                              transition: Transition
                                                  .leftToRightWithFade);
                                        },
                                        child: Container(
                                          alignment: Alignment.center,
                                          width: Get.width * 0.43.sp,
                                          height: 108.sp,
                                          color: Colors.blue,
                                          child: Padding(
                                            padding:
                                                EdgeInsets.only(left: 5.sp),
                                            child: Text(
                                              "Report Writeup",
                                              style: TextStyle(
                                                  fontSize: 16.sp,
                                                  color: Colors.white,
                                                  fontFamily:
                                                      "poppinsSemiBold"),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          )),
                    ],
                  )
                ],
              )),
        ),
      ),
    );
  }

  // Function to launch URL
  void _launchURL(String url) async {
    final Uri uri = Uri.parse(url);
    if (!await launchUrl(uri)) {
      print("Could not launch $url");
    }
  }
}
