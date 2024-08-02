import 'package:brcrop_marketing_executive/features/soil_test/view/result_screen.dart';
import 'package:brcrop_marketing_executive/features/soil_test/view/soilTest_screen.dart';
import 'package:brcrop_marketing_executive/features/soil_test/view/testResult_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../core/utils/configs/styles/colors.dart';
import '../../../core/utils/shared/components/widgets/custom_buttons.dart';
import '../../invoice/view/pdf_screen.dart';
import '../controller/soilTestList_controller.dart';

class SoilTestListScreen extends StatefulWidget {
  const SoilTestListScreen({super.key});

  @override
  State<SoilTestListScreen> createState() => _SoilTestListScreenState();
}

class _SoilTestListScreenState extends State<SoilTestListScreen> {
  final SoilTestListController soilTestListController =
      Get.put(SoilTestListController());
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    soilTestListController.fetchTestListData();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColor.appMainColor,
      child: SafeArea(
        child: Scaffold(
          extendBodyBehindAppBar: false,
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              Get.to(() => SoilTestScreen(),
                  transition: Transition.leftToRightWithFade);
            },
            child: Icon(
              Icons.add,
              color: Colors.white,
            ),
            backgroundColor: AppColor.primarycolor,
          ),
          appBar: AppBar(
            backgroundColor: AppColor.primarycolor,
            centerTitle: true,
            title: Text(
              'Soil test list',
              style:
                  TextStyle(fontFamily: 'poppinsSemiBold', color: Colors.white),
            ),
            leading: IconButton(
              icon: Icon(Icons.arrow_back_ios_new_rounded),
              color: Colors.white,          
              onPressed: () {
                Get.back();
              },
            ),
          ),
          body: Container(
            padding: EdgeInsets.only(left: 10.w, right: 10.w),
            color: Colors.white,
            width: Get.width.w,
            height: Get.height.h,
            child: RefreshIndicator(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Obx(() {
                    if (soilTestListController
                        .soilListModel.value.soillist!.isEmpty) {
                      return Expanded(
                        child: Center(
                            child: Text("No notifications available",
                                style: TextStyle(
                                    fontSize: 14.sp,
                                    color: AppColor.txtColorMain,
                                    fontFamily: "poppinsRegular"))),
                      );
                    } else {
                      return Expanded(
                        child: Padding(
                          padding: EdgeInsets.symmetric(vertical: 8.h),
                          child: ListView.builder(
                            itemCount: soilTestListController
                                .soilListModel.value.soillist!.length,
                            itemBuilder: (context, index) {
                              final testList = soilTestListController
                                  .soilListModel.value.soillist![index];
                              return Padding(
                                  padding: EdgeInsets.symmetric(vertical: 4.h),
                                  child: Card(
                                    elevation: 1,
                                    shadowColor: Colors.grey,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: ListTile(
                                      tileColor: AppColor.primarycolor,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      title: Text(
                                        testList.name ?? '',
                                        style: TextStyle(
                                          fontSize: 14.0.sp,
                                          fontFamily: "poppinsMedium",
                                          color: Colors.white,
                                        ),
                                      ),
                                      trailing: CustomElevatedBtn(
                                        onPressed: () {
                                          if (testList.result!.isEmpty) {
                                            print(
                                                'Result is pending ${testList.result!}');
                                            Get.to(
                                              () => const TestResultScreen(),
                                              arguments: testList,
                                            );
                                          } else {
                                            Get.to(ResultScreen(
                                                url:
                                                    "https://baruchgera.com/${testList.result}"));
                                          }
                                        },
                                        child: Text(
                                          testList.result!.isEmpty
                                              ? 'Result Pending'
                                              : 'View',
                                          style: TextStyle(color: Colors.black),
                                        ),
                                        backgroundColor: testList.result == null
                                            ? (Colors.white)
                                            : const Color(0xffD2D60A),
                                        width: 80.w,
                                        height: 30.h,
                                        title: 'Attach',
                                      ),
                                    ),
                                  ));
                            },
                          ),
                        ),
                      );
                    }
                  }),
                ],
              ),
              onRefresh: () => soilTestListController.fetchTestListData(),
            ),
          ),
        ),
      ),
    );
  }
}
