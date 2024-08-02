import 'package:brcrop_marketing_executive/features/invoice/view/pdf_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../core/utils/configs/styles/colors.dart';
import '../../order_product/controller/order_product_controller.dart';
class InvoiceScreen extends StatefulWidget {
  const InvoiceScreen({Key? key});

  @override
  State<InvoiceScreen> createState() => _InvoiceScreenState();
}

class _InvoiceScreenState extends State<InvoiceScreen> {
  final OrderProductController orderProductController =
    Get.put(  OrderProductController());
  bool invoicesAvailable = false;

  @override
  void initState() {
    super.initState();
    orderProductController.fetchOrderedProduct().then((_) {
      setState(() {
        invoicesAvailable = orderProductController.orderList.isNotEmpty;
      });
    });
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
              ),
            ),
            automaticallyImplyLeading: false,
            backgroundColor: AppColor.primarycolor,
            title:  Text(
              'Invoice',
              style: TextStyle(
                fontSize: 18.sp,
                color: Colors.white,
                fontFamily: "poppinsBold"),
            ),
            centerTitle: true,
          ),
          body: Container(
            color: Colors.white,
            height: double.infinity,
            width: double.infinity,
            child: invoicesAvailable
                ? Obx(() => Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: ListView.builder(
                            itemCount: orderProductController.orderList.length,
                            itemBuilder: (context, index) {
                              final data =
                                  orderProductController.orderList[index];
                              return data.invoicePath!.isNotEmpty
                                  ? Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Container(
                                        padding: const EdgeInsets.all(10),
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          color: AppColor.secondarycolor,
                                        ),
                                        height: 165.sp,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Padding(
                                              padding: EdgeInsets.symmetric(
                                                  vertical: 5.sp),
                                              child: Text(
                                                  "Order status: ${data.payStatus}", style: TextStyle(
                                                  fontSize: 13.sp,
                                                  color: AppColor.txtColorMain,
                                                  fontFamily: "poppinsRegular")),
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsets.symmetric(
                                                      vertical: 5.sp),
                                                  child: Text(
                                                      "Quantity: ${data.quantity}",style: TextStyle(
                                                      fontSize: 13.sp,
                                                      color: AppColor.txtColorMain,
                                                      fontFamily: "poppinsRegular")),
                                                ),
                                                IconButton(
                                                    onPressed: () {
                                                      Get.to(ViewPdfScreen(url: data.invoicePath.toString()));
                                                    },
                                                    icon: const Icon(
                                                      Icons.picture_as_pdf,
                                                      size: 30,
                                                      color: Colors.black54,
                                                    ))
                                              ],
                                            ),
                                            Padding(
                                              padding: EdgeInsets.symmetric(
                                                  vertical: 5.sp),
                                              child: Text(
                                                  "Product name: ${data.product}",style: TextStyle(
                                                  fontSize: 13.sp,
                                                  color: AppColor.txtColorMain,
                                                  fontFamily: "poppinsRegular"),
                                                  maxLines: 2),
                                            ),
                                            Padding(
                                              padding: EdgeInsets.symmetric(
                                                  vertical: 8.sp),
                                              child: Text("Price: ₹${data.amount}",style: TextStyle(
                                                  fontSize: 13.sp,
                                                  color: AppColor.txtColorMain,
                                                  fontFamily: "poppinsRegular")),
                                            )
                                          ],
                                        ),
                                      ),
                                    )
                                  : const SizedBox();
                            },
                          ),
                        )
                      ],
                    ))
                : const Center(
                    child: Text("No invoices available"),
                  ),
          ),
        ),
      ),
    );
  }
}
