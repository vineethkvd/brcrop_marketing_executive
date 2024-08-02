import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

import '../../../core/utils/configs/styles/colors.dart';
import '../controller/order_product_controller.dart';

class OrderDispatchScreen extends StatefulWidget {
  final String index;

  const OrderDispatchScreen({Key? key, required this.index}) : super(key: key);

  @override
  _OrderDispatchScreenState createState() => _OrderDispatchScreenState();
}

class _OrderDispatchScreenState extends State<OrderDispatchScreen> {
  final OrderProductController orderProductController =
  Get.put(OrderProductController());

  @override
  void initState() {
    super.initState();
    orderProductController.fetchOrderedProduct();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColor.primarycolor,
      child: SafeArea(
        child: Scaffold(
          extendBodyBehindAppBar: false,
          appBar: AppBar(
            automaticallyImplyLeading: false,
            backgroundColor: AppColor.primarycolor,
            title: Text(
              'Delivery invoice',
              style: TextStyle(
                fontSize: 18.sp,
                color: Colors.white,
                fontFamily: "poppinsBold",
              ),
            ),
            centerTitle: true,
            leading: IconButton(
              onPressed: () {
                Get.back();
              },
              icon: Icon(
                CupertinoIcons.back,
                color: Colors.white,
              ),
            ),
          ),
          body: Container(
            padding: EdgeInsets.symmetric(horizontal: 10.w),
            color: Colors.white,
            width: Get.width.w,
            height: Get.height.h,
            child: Obx(
                  () => Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  if (orderProductController
                      .orderProductsModel.value.orderList!.isEmpty)
                    const Text("No Data available")
                  else
                    Expanded(
                      child: ListView.builder(
                        itemCount: orderProductController
                            .orderProductsModel.value.orderList!.length,
                        itemBuilder: (context, index) {
                          final data = orderProductController
                              .orderProductsModel.value.orderList![index];
                          if (widget.index == index.toString()) {
                            return Column(
                              children: [
                                SizedBox(
                                  width: Get.width.w,
                                  height: Get.height * 0.45.sp,
                                  child: Column(
                                    children: [
                                      Text("Invoice",
                                          style: TextStyle(
                                              fontSize: 16.sp,
                                              color: AppColor.txtColorMain,
                                              fontFamily: "poppinsSemiBold")),
                                      SizedBox(
                                        height: 5.sp,
                                      ),
                                      data.dispatchImg!.isNotEmpty
                                          ? SizedBox(
                                        width: Get.width.w,
                                        height: Get.height * 0.38.sp,
                                        child: SfPdfViewer.network(
                                          "${data.dispatchImg}",
                                          onDocumentLoadFailed:
                                              (details) {
                                            print(
                                                "Failed to load PDF: ${details.error}");
                                            ScaffoldMessenger.of(context)
                                                .showSnackBar(
                                              SnackBar(
                                                content: Text(
                                                    "Failed to load PDF"),
                                              ),
                                            );
                                          },
                                        ),
                                      )
                                          : Padding(
                                        padding: EdgeInsets.symmetric(
                                            vertical: 15.sp),
                                        child: Text("No data available",
                                            style: TextStyle(
                                                fontSize: 12.sp,
                                                color: AppColor
                                                    .txtColorMain,
                                                fontFamily:
                                                "poppinsRegular")),
                                      ),
                                    ],
                                  ),
                                ),
                                const Divider(),
                                SizedBox(
                                  width: Get.width.w,
                                  height: Get.height * 0.45.sp,
                                  child: Column(
                                    children: [
                                      Text("Lorry receipt copy",
                                          style: TextStyle(
                                              fontSize: 16.sp,
                                              color: AppColor.txtColorMain,
                                              fontFamily: "poppinsSemiBold")),
                                      SizedBox(
                                        height: 5.sp,
                                      ),
                                      data.dispatchImgTwo!.isNotEmpty
                                          ? SizedBox(
                                        width: Get.width.w,
                                        height: Get.height * 0.38.sp,
                                        child: SfPdfViewer.network(
                                          "${data.dispatchImgTwo}",
                                          onDocumentLoadFailed:
                                              (details) {
                                            print(
                                                "Failed to load PDF: ${details.error}");
                                            ScaffoldMessenger.of(context)
                                                .showSnackBar(
                                              SnackBar(
                                                content: Text(
                                                    "Failed to load PDF"),
                                              ),
                                            );
                                          },
                                        ),
                                      )
                                          : Padding(
                                        padding: EdgeInsets.symmetric(
                                            vertical: 15.sp),
                                        child: Text("No data available",
                                            style: TextStyle(
                                                fontSize: 12.sp,
                                                color: AppColor
                                                    .txtColorMain,
                                                fontFamily:
                                                "poppinsRegular")),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            );
                          }
                          return const SizedBox.shrink();
                        },
                      ),
                    ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
