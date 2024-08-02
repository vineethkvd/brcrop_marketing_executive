import 'package:brcrop_marketing_executive/features/sceheme/view/sceheme_list_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../core/utils/configs/styles/colors.dart';
import '../controller/sceheme_controller.dart';

class SchemeScreen extends StatefulWidget {
  const SchemeScreen({super.key});

  @override
  State<SchemeScreen> createState() => _SchemeScreenState();
}

class _SchemeScreenState extends State<SchemeScreen> {
  final SchemeController scehemeController = SchemeController();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    scehemeController.fetchScheme();
  }

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Obx(() {
            if ( scehemeController.schemeModel.value.data!.isEmpty) {
              return  SizedBox(
                height: 120.sp,
                width: Get.width.w,
                child:  Center(child: Text("No scheme announce shortly", style: TextStyle(
                    fontSize: 12.sp,
                    color: AppColor.txtColorMain,
                    fontFamily: "poppinsRegular"))),
              );
            } else {
              return Padding(
                padding: EdgeInsets.symmetric(vertical: 8.h),
                child: SizedBox(
                  height: 120.h,
                  width: Get.width.w,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: scehemeController.schemeModel.value.data!.length,
                    itemBuilder: (context, index) {
                      final data =  scehemeController.schemeModel.value.data![index];
                      // scehemeController.productDetails.clear();
                      // scehemeController.productDetails.assignAll(
                      //     scehemeController.dataList![index].productDetails!);
                      var curIndex = index;

                      return Padding(
                        padding: EdgeInsets.symmetric(horizontal: 5.h),
                        child: InkWell(
                          onTap: () {
                            Get.to(SchemeListScreen(index: curIndex.toString()),
                                transition: Transition.leftToRightWithFade);
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.black54,
                                style: BorderStyle.solid,
                                width: 1.0,
                              ),
                              color: AppColor.appMainColor,
                              borderRadius: BorderRadius.circular(25.0),
                            ),
                            height: 10.h,
                            width: 120.w,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(left: 5.h),
                                  child: Text("${data.schName}",
                                      overflow: TextOverflow.ellipsis,
                                      maxLines: 2,
                                      style: TextStyle(
                                          fontSize: 14.sp,
                                          color: Colors.white,
                                          fontFamily: "poppinsSemiBold")),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 5.h, top: 5),
                                  child: Text("Offer: ${data.schOffer}",
                                      overflow: TextOverflow.ellipsis,
                                      maxLines: 2,
                                      style: TextStyle(
                                          fontSize: 12.sp,
                                          color: Colors.white,
                                          fontFamily: "poppinsRegular")),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 5.h, top: 5),
                                  child: Text("Start: ${data.schStDt}",
                                      overflow: TextOverflow.ellipsis,
                                      maxLines: 1,
                                      style: TextStyle(
                                          fontSize: 10.sp,
                                          color: Colors.white,
                                          fontFamily: "poppinsRegular")),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 5.h, top: 5),
                                  child: Text("Expire: ${data.schEndDt}",
                                      overflow: TextOverflow.ellipsis,
                                      maxLines: 1,
                                      style: TextStyle(
                                          fontSize: 10.sp,
                                          color: Colors.white,
                                          fontFamily: "poppinsRegular")),
                                )
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              );
            }
          }),
        ],
      ),
      onRefresh: () => scehemeController.fetchScheme(),
    );
  }
}