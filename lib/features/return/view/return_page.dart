import 'package:brcrop_marketing_executive/features/return/view/reason_page.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:shimmer/shimmer.dart';

import '../../../core/utils/configs/styles/colors.dart';
import '../../../core/utils/shared/components/widgets/custom_buttons.dart';
import '../controller/return_controller.dart';

class ReturnProduct extends StatefulWidget {
  const ReturnProduct({super.key});

  @override
  State<ReturnProduct> createState() => _ReturnProductState();
}

class _ReturnProductState extends State<ReturnProduct> {
  final ReturnController returnController = Get.put(ReturnController());

  @override
  void initState() {
    super.initState();
    returnController.fetchReturnProducts();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: AppColor.primarycolor,
          title: Text(
            'Return Product',
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
            ),
          ),
          centerTitle: true,
        ),
        body: Container(
          height: Get.height,
          width: Get.width,
          color: Colors.white,
          padding: const EdgeInsets.all(15),
          child: Obx(() => Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  returnController
                      .returnModel.value.orderList?.isNotEmpty ??false?Expanded(
                    child: returnController
                                .returnModel.value.orderList?.isNotEmpty ??
                            false
                        ? buildUpcomingList()
                        : buildSquareListShimmerEffect(),
                  ):Expanded(child:  Center(
                    child: Text(
                      "No data available",
                      style: TextStyle(
                        fontSize: 16.sp,
                        color: Colors.grey,
                      ),
                    ),
                  )),
                ],
              )),
        ),
      ),
    );
  }

  Widget buildSquareListShimmerEffect() {
    return ListView.builder(
      itemCount: 6,
      itemBuilder: (context, index) {
        return Shimmer.fromColors(
          baseColor: Colors.grey[300]!,
          highlightColor: Colors.grey[100]!,
          child: Container(
            height: 100.h,
            margin: const EdgeInsets.symmetric(vertical: 8.0),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10.0),
            ),
          ),
        );
      },
    );
  }

  Widget buildUpcomingList() {
    final data = returnController.returnModel.value.orderList;

    if (data == null || data.isEmpty) {
      return Center(
        child: Text(
          "No data available",
          style: TextStyle(
            fontSize: 16.sp,
            color: Colors.grey,
          ),
        ),
      );
    }

    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: Text(
                "Return Products",
                style: TextStyle(
                  fontSize: 14.sp,
                  color: Colors.black,
                  fontFamily: "poppinsSemiBold",
                ),
              ),
            ),
            Spacer(),
          ],
        ),
        Expanded(
          child: ListView.builder(
            itemCount: data.length,
            itemBuilder: (context, index) {
              final dataItem = data[index];
              return InkWell(
                onTap: () {},
                child: Container(
                  margin: const EdgeInsets.symmetric(vertical: 8.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10.0),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.3),
                        spreadRadius: 2,
                        blurRadius: 5,
                        offset: const Offset(0, 3),
                      ),
                    ],
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      ClipRRect(
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(10.0),
                            bottomLeft: Radius.circular(10.0),
                          ),
                          child: Center(
                              child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                                decoration: BoxDecoration(
                                    color: Colors.black54,
                                    borderRadius: BorderRadius.circular(15)),
                                child: Icon(
                                  CupertinoIcons.cube_box,
                                  color: Colors.white,
                                  size: 50,
                                )),
                          ))),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Order Id: ${dataItem.orderUniqueId ?? ''}",
                                style: TextStyle(
                                  fontFamily: "poppinsSemiBold",
                                  fontSize: 14.sp,
                                ),
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                              SizedBox(height: 4.h),
                              Text(
                                dataItem.modeOfPay ?? '',
                                style: TextStyle(
                                  fontSize: 12.sp,
                                  color: Colors.grey,
                                  fontFamily: "poppinsRegular",
                                ),
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                              ),
                              SizedBox(height: 4.h),
                              Text(
                                "Amount: Rs ${dataItem.amount ?? ''}",
                                style: TextStyle(
                                  fontSize: 12.sp,
                                  color: Colors.grey,
                                  fontFamily: "poppinsRegular",
                                ),
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                              ),
                              SizedBox(height: 4.h),
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Spacer(),
                                  showBtn(
                                      returnStatus: dataItem.retrunStatus ?? '',
                                      orderId: dataItem.orderId ?? ''),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }

  Widget showBtn({required String returnStatus, required String orderId}) {
    switch (returnStatus) {
      case '':
        return ClipRRect(
          borderRadius: BorderRadius.circular(30.0),
          child: Material(
            color: Colors.transparent,
            borderRadius: BorderRadius.circular(30.0),
            elevation: 5.0,
            child: Ink(
              decoration: BoxDecoration(
                color: AppColor.primarycolor,
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: Colors.black12),
              ),
              child: InkWell(
                onTap: () async {
                  Get.to(
                      ReasonPage(
                        orderId: orderId,
                      ),
                      transition: Transition.cupertino);
                },
                child: Container(
                  alignment: Alignment.center,
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                    child: Text(
                      'Return',
                      style: TextStyle(
                        fontSize: 12.sp,
                        fontFamily: "poppinsRegular",
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        );
      case "0":
        return Text(
          "Pending",
          style: TextStyle(
            fontSize: 12.sp,
            color: Colors.grey,
            fontFamily: "poppinsRegular",
          ),
        );
      case "1":
        return Text(
          "Approve",
          style: TextStyle(
            fontSize: 12.sp,
            color: Colors.green,
            fontFamily: "poppinsRegular",
          ),
        );
      default:
        return Text(
          "Reject",
          style: TextStyle(
            fontSize: 12.sp,
            color: Colors.green,
            fontFamily: "poppinsRegular",
          ),
        );
    }
  }
}
