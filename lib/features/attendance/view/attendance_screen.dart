import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/utils.dart';

import '../../../core/utils/configs/styles/colors.dart';
import '../../../core/utils/shared/components/widgets/custom_buttons.dart';
import '../controller/attendance_history_controller.dart';
import '../controller/attendance_login_controller.dart';
import '../controller/attendance_logout_controller.dart';

class AttendanceScreen extends StatefulWidget {
  const AttendanceScreen({super.key});

  @override
  State<AttendanceScreen> createState() => _AttendanceScreenState();
}

class _AttendanceScreenState extends State<AttendanceScreen> {
  final AttendanceLoginController attendanceLoginController =
      AttendanceLoginController();
  final AttendanceLogoutController attendanceLogoutController =
      AttendanceLogoutController();
  final AttendanceHistoryController attendanceHistoryController =
      AttendanceHistoryController();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    attendanceLoginController.determinePosition();
    attendanceHistoryController.attendanceHistory();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColor.primarycolor,
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            automaticallyImplyLeading: false,
            leading: IconButton(
                onPressed: () {
                  Get.back();
                },
                icon: const Icon(
                  CupertinoIcons.back,
                  color: Colors.white,
                )),
            backgroundColor: AppColor.primarycolor,
            title: Text('Attendance',
                style: TextStyle(
                    fontSize: 18.sp,
                    color: Colors.white,
                    fontFamily: "poppinsBold")),
            centerTitle: true,
          ),
          body: SingleChildScrollView(
            child: Container(
                padding: EdgeInsets.only(
                    top: 15.w, bottom: 10.w, right: 10.w, left: 10.w),
                color: Colors.white,
                child: Obx(
                  () => Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CustomElevatedBtn(
                            onPressed: () async {
                              attendanceLoginController.loginLoading.value =
                                  false;
                              await Future.delayed(const Duration(seconds: 5))
                                  .then(
                                (value) async {
                                  if (attendanceLoginController.empLocation.value.isNotEmpty &&
                                      attendanceLoginController
                                          .empLatitude.value.isNotEmpty &&
                                      attendanceLoginController
                                          .empLongtitude.value.isNotEmpty) {
                                    print(
                                        "empty:${attendanceLoginController.empLocation.value}");
                                    await attendanceLoginController
                                        .attendanceLoginUser(
                                            emp_location:
                                                attendanceLoginController
                                                    .empLocation.value
                                                    .toString(),
                                            emp_latitude:
                                                attendanceLoginController
                                                    .empLatitude.value
                                                    .toString(),
                                            emp_longtitude:
                                                attendanceLoginController
                                                    .empLongtitude.value
                                                    .toString());
                                    await attendanceHistoryController
                                        .attendanceHistory();
                                  } else {
                                    print(
                                        "empty:${attendanceLoginController.empLongtitude.value}");
                                  }
                                },
                              );
                            },
                            backgroundColor: Color(0xFF134005),
                            width: 150.w,
                            height: 60.h,
                            child: attendanceLoginController.loginLoading.value
                                ? Text("Login",
                                    style: TextStyle(
                                        fontSize: 14.sp,
                                        color: Colors.white,
                                        fontFamily: "poppinsSemiBold"))
                                : const CupertinoActivityIndicator(
                                    color: Colors.white,
                                  ),
                          ),
                          CustomElevatedBtn(
                            onPressed: () async {
                              await attendanceLogoutController
                                  .attendanceLogoutUser();
                              await attendanceHistoryController
                                  .attendanceHistory();
                            },
                            backgroundColor: Color(0xFF134005),
                            width: 150.w,
                            height: 60.h,
                            child:
                                attendanceLogoutController.logoutLoading.value
                                    ? Text("Logout",
                                        style: TextStyle(
                                            fontSize: 14.sp,
                                            color: Colors.white,
                                            fontFamily: "poppinsSemiBold"))
                                    : const CupertinoActivityIndicator(
                                        color: Colors.white,
                                      ),
                          )
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 20.h),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Container(
                              height: Get.height * 0.65.w,
                              width: Get.width * 0.80,
                              color: Colors.black26,
                              child: attendanceHistoryController
                                      .loginLoading.value
                                  ? attendanceHistoryController
                                          .attendanceList.isEmpty
                                      ? Center(
                                          child: Text(
                                              'No attendance history available'),
                                        )
                                      : ListView.builder(
                                          itemCount: attendanceHistoryController
                                              .attendanceList.length,
                                          itemBuilder: (context, index) {
                                            final attendance =
                                                attendanceHistoryController
                                                    .attendanceList[index];
                                            return Card(
                                                color: Colors.white12,
                                                child: Container(
                                                  height: 110.h,
                                                  padding: const EdgeInsets
                                                      .symmetric(
                                                      vertical: 5,
                                                      horizontal: 5),
                                                  child: Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    children: [
                                                      Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          Text(
                                                              'Total Hrs: ${attendance.totalHrs ?? ""}',
                                                              style: TextStyle(
                                                                  fontSize:
                                                                      11.sp,
                                                                  color: AppColor
                                                                      .txtColorMain,
                                                                  fontFamily:
                                                                      "poppinsSemiBold")),
                                                          Text(
                                                              'Date: ${attendance.date ?? ""}',
                                                              style: TextStyle(
                                                                  fontSize:
                                                                      11.sp,
                                                                  color: AppColor
                                                                      .txtColorMain,
                                                                  fontFamily:
                                                                      "poppinsSemiBold"))
                                                        ],
                                                      ),
                                                      SizedBox(
                                                        height: 5.h,
                                                      ),
                                                      Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          Text(
                                                            'Start time: ${attendance.startTime ?? ""}',
                                                            style: TextStyle(
                                                                fontSize: 11.sp,
                                                                color: AppColor
                                                                    .txtColorMain,
                                                                fontFamily:
                                                                    "poppinsRegular"),
                                                          ),
                                                          Text(
                                                            'End time: ${attendance.endTime ?? ""}',
                                                            style: TextStyle(
                                                                fontSize: 11.sp,
                                                                color: AppColor
                                                                    .txtColorMain,
                                                                fontFamily:
                                                                    "poppinsRegular"),
                                                          )
                                                        ],
                                                      ),
                                                      SizedBox(
                                                        height: 5.h,
                                                      ),
                                                      Align(
                                                        alignment: Alignment
                                                            .centerLeft,
                                                        child: Text(
                                                            'Location: ${attendance.empLocation ?? ""}',
                                                            style: TextStyle(
                                                                fontSize: 11.sp,
                                                                color: AppColor
                                                                    .txtColorMain,
                                                                fontFamily:
                                                                    "poppinsRegular")),
                                                      )
                                                    ],
                                                  ),
                                                ));
                                          },
                                        )
                                  : Center(
                                      child: CircularProgressIndicator(),
                                    )),
                        ),
                      )
                    ],
                  ),
                )),
          ),
        ),
      ),
    );
  }
}
