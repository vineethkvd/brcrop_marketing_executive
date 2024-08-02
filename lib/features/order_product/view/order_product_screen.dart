import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../core/utils/configs/styles/colors.dart';
import '../../../core/utils/shared/components/widgets/custom_buttons.dart';
import '../../../core/utils/shared/components/widgets/custom_snackbar.dart';
import '../../invoice/view/pdf_screen.dart';
import '../controller/delivery_controller.dart';
import '../controller/order_product_controller.dart';
import 'dispatch_screen.dart';

class OrderProductPage extends StatefulWidget {
  const OrderProductPage({super.key});

  @override
  State<OrderProductPage> createState() => _OrderProductPageState();
}

class _OrderProductPageState extends State<OrderProductPage> {
  final OrderProductController orderProductController =
      Get.put(OrderProductController());
  final DeliveryController deliveryController = Get.put(DeliveryController());
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    orderProductController.fetchOrderedProduct();
  }
  void chk(
      {required String? status,
        required String orderId,
        required String index}) {
    if (status == '6') {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text(
              'Delivery Confirmation',
              style: TextStyle(
                fontSize: 16.sp,
                color: AppColor.txtColorMain,
                fontFamily: "poppinsSemiBold",
              ),
            ),
            content: Text(
              'I hereby acknowledge the ordered products are received',
              style: TextStyle(
                fontSize: 13.sp,
                color: AppColor.txtColorMain,
                fontFamily: "poppinsRegular",
              ),
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            actions: <Widget>[
              TextButton(
                child: Text('No'),
                onPressed: () {
                  Get.to(OrderDispatchScreen(index: index),
                      transition: Transition.cupertino);
                },
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor:
                  AppColor.appMainColor, // Set the button color
                ),
                child: const Text(
                  'Yes',
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () {
                  Get.back();
                  deliveryController.fetchDelivery(orderId: orderId);
                  orderProductController.fetchOrderedProduct();
                  Get.to(OrderDispatchScreen(index: index),
                      transition: Transition.cupertino);
                },
              ),
            ],
          );
        },
      );
    } else if (status == '2') {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text(
              'Delivery Confirmation',
              style: TextStyle(
                fontSize: 16.sp,
                color: AppColor.txtColorMain,
                fontFamily: "poppinsSemiBold",
              ),
            ),
            content: Text(
              'I hereby acknowledge the ordered products are received by dealer',
              style: TextStyle(
                fontSize: 13.sp,
                color: AppColor.txtColorMain,
                fontFamily: "poppinsRegular",
              ),
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            actions: <Widget>[
              TextButton(
                child: Text('No'),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor:
                  AppColor.appMainColor, // Set the button color
                ),
                child: Text(
                  'Yes',
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () {
                  Get.back();
                  Get.to(OrderDispatchScreen(index: index),
                      transition: Transition.cupertino);
                },
              ),
            ],
          );
        },
      );
    } else {
      print("fails");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColor.primarycolor,
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            leading: IconButton(
                onPressed: () {
                  Get.back();
                },
                icon: const Icon(
                  CupertinoIcons.back,
                  color: Colors.white,
                )),
            automaticallyImplyLeading: false,
            backgroundColor: AppColor.primarycolor,
            title: Text('Orders',
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
              child: Obx(() => RefreshIndicator(child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 10.sp),
                    child: Text("Order List",
                        style: TextStyle(
                            fontSize: 14.sp,
                            color: AppColor.txtColorMain,
                            fontFamily: "poppinsSemiBold")),
                  ),
                  orderProductController
                      .orderProductsModel.value.orderList!.isEmpty
                      ? Center(
                        child: Text("No product ordered",
                        style: TextStyle(
                            fontSize: 13.sp,
                            color: AppColor.txtColorMain,
                            fontFamily: "poppinsRegular")),
                      )
                      : Expanded(
                    child: ListView.builder(
                      itemCount: orderProductController
                          .orderProductsModel.value.orderList!.length,
                      itemBuilder: (context, index) {
                        final data = orderProductController
                            .orderProductsModel
                            .value
                            .orderList![index];
                        return Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Container(
                            padding: EdgeInsets.only(
                                left: 10,
                                right: 10,
                                top: 10,
                                bottom: 10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: AppColor.secondarycolor,
                            ),
                            height: 155.h,
                            child: Column(
                              crossAxisAlignment:
                              CrossAxisAlignment.start,
                              mainAxisAlignment:
                              MainAxisAlignment.center,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.symmetric(
                                          vertical: 5.sp),
                                      child: Text(
                                          "Date: ${data.date}",
                                          style: TextStyle(
                                              fontSize: 14.sp,
                                              color: AppColor
                                                  .txtColorMain,
                                              fontFamily:
                                              "poppinsSemiBold")),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.symmetric(
                                          vertical: 5.sp),
                                      child: Text(
                                          "Price: ₹${data.amount}",
                                          style: TextStyle(
                                              fontSize: 14.sp,
                                              color: AppColor
                                                  .txtColorMain,
                                              fontFamily:
                                              "poppinsSemiBold")),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.symmetric(
                                          vertical: 5.sp),
                                      child: Row(
                                        children: [
                                          Text("ID:",
                                              style: TextStyle(
                                                  fontSize: 14.sp,
                                                  color: AppColor
                                                      .txtColorMain,
                                                  fontFamily:
                                                  "poppinsSemiBold")),
                                          Text(" ${data.orderId}",
                                              style: TextStyle(
                                                  fontSize: 14.sp,
                                                  color: AppColor
                                                      .txtColorMain,
                                                  fontFamily:
                                                  "poppinsRegular")),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.symmetric(
                                          vertical: 5.sp),
                                      child: Text(
                                          data.modeOfPay ==
                                              "Pay Online"
                                              ? "Online"
                                              : "${data.modeOfPay}",
                                          style: TextStyle(
                                              fontSize: 14.sp,
                                              color: AppColor
                                                  .appMainColor,
                                              fontFamily:
                                              "poppinsSemiBold")),
                                    ),
                                  ],
                                ),
                                const Divider(
                                  color: AppColor.txtColorMain,
                                  thickness: 1,
                                ),
                                Row(
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.only(
                                              left: 5.sp),
                                          child: SizedBox(
                                            width: 80,
                                            child: Text(
                                                maxLines: 2,
                                                "Current Status:",
                                                style: TextStyle(
                                                    fontSize: 14.sp,
                                                    color: AppColor
                                                        .txtColorMain,
                                                    fontFamily:
                                                    "poppinsSemiBold")),
                                          ),
                                        ),
                                        _statusContainer(
                                            "${data.orderStatus}",
                                            "$index",
                                                () => chk(
                                                orderId:
                                                '${data.orderUniqueId}',
                                                index: index
                                                    .toString(), status: '${data.orderStatus}')),
                                      ],
                                    ),
                                    CustomElevatedBtn(
                                      onPressed: () {
                                        print(
                                            "path ${data.invoicePath.toString()}");
                                        if (data.invoicePath!
                                            .isEmpty) {
                                          CustomSnackBar
                                              .showCustomErrorSnackBar(
                                              message: "Failed",
                                              title:
                                              'Invoice should not be generate this time');
                                        } else {
                                          Get.to(ViewPdfScreen(
                                              url: data.invoicePath
                                                  .toString()));
                                        }
                                      },
                                      backgroundColor:
                                      const Color(0xFF134005),
                                      width: 100.sp,
                                      height: 35.sp,
                                      fontSize: 10.sp,
                                      title: 'View OrderDetails',
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  )
                ],
              ), onRefresh: () => orderProductController.fetchOrderedProduct(),))),
        ),
      ),
    );
  }

  Widget _getStatusText(String? status) {
    Color textColor;
    String statusText;

    switch (status) {
      case '0':
        textColor = Colors.redAccent;
        statusText = 'Pending';
        break;
      case '1':
        textColor = CupertinoColors.activeBlue;
        statusText = 'In-Progress';
        break;
      case '2':
        textColor = Colors.green;
        statusText = 'Complete';
        break;
      case '3':
        textColor = Colors.red;
        statusText = 'Cancelled';
        break;
      case '4':
        textColor = Colors.orange;
        statusText = 'Returned';
        break;
      case '5':
        textColor = Colors.black45;
        statusText = 'Dispatch pending';
        break;
      case '6':
        textColor = Colors.black45;
        statusText = 'Delivery';
        break;
      default:
        textColor = Colors.black; // Default color if status is not recognized
        statusText = 'Unknown';
    }

    return Padding(
      padding: EdgeInsets.only(left: 5.sp),
      child: Center(
        child: Text(
          statusText,
          style: TextStyle(
            fontSize: 12.sp,
            color: textColor,
            fontFamily: "poppinsbold",
          ),
        ),
      ),
    );
  }

  Widget _statusContainer(
      String? status, String? index, VoidCallback? onPressed) {
    if (status == '6') {
      return SizedBox(
          width: 100.sp,
          height: 35.sp,
          child: ElevatedButton(
              onPressed: onPressed,
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.yellow, // this is the background color
              ),
              child: const Text(
                "Dispatched",
                style: TextStyle(color: Colors.white),
              )));
    }
    if (status == '2') {
      return CustomElevatedBtn(
        onPressed: onPressed,
        backgroundColor: Colors.redAccent,
        width: 100.sp,
        height: 35.sp,
        title: 'Delivered',
      );
    } else {
      return Container(
        alignment: Alignment.center,
        width: 100.sp,
        height: 38.sp,
        child: _getStatusText(status),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
          boxShadow: [
            BoxShadow(color: AppColor.appMainColor, spreadRadius: 1),
          ],
        ),
      );
    }
  }
}
