import 'package:brcrop_marketing_executive/features/transaction/view/transaction_pdf.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../../core/utils/configs/styles/colors.dart';
import '../controller/transaction_controller.dart';

class TransactionScreen extends StatefulWidget {
  const TransactionScreen({super.key});

  @override
  State<TransactionScreen> createState() => _TransactionScreenState();
}

class _TransactionScreenState extends State<TransactionScreen> {
  final TransactionController transactionController = TransactionController();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    transactionController.fetchTransactions();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColor.appMainColor,
      child: SafeArea(
        child: Scaffold(
          extendBodyBehindAppBar: false,
          appBar: AppBar(
              backgroundColor: AppColor.appMainColor,
              leading: IconButton(
                  onPressed: () {
                    Get.back();
                  },
                  icon: const Icon(
                    CupertinoIcons.back,
                    color: Colors.white,
                  )),
              centerTitle: true,
              title: Text(
                "Statement of Account",
                style: TextStyle(
                    fontSize: 18.sp,
                    color: Colors.white,
                    fontFamily: "poppinsBold"),
              )),
          body: Container(
            padding: EdgeInsets.only(left: 10.w, right: 10.w),
            color: Colors.white,
            width: Get.width.w,
            height: Get.height.h,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Obx(() {
                  if (transactionController
                      .transactionModel.value.data!.isEmpty) {
                    return Expanded(
                      child: Center(
                          child: Text("No data available",
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
                          itemCount: transactionController
                              .transactionModel.value.data!.length,
                          itemBuilder: (context, index) {
                            final data = transactionController
                                .transactionModel.value.data![index];
                            return Padding(
                              padding: EdgeInsets.symmetric(vertical: 4.h),
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.0),
                                  color: AppColor.secondarycolor,
                                ),
                                height: 72.h,
                                child: Padding(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 8.w),
                                  child: InkWell(
                                    onTap: () {
                                      Get.to(ViewTransactionPdfScreen(
                                          url: "${data.ledgPdf}"));
                                    },
                                    child: SizedBox(
                                      height: 150.sp,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Row(
                                                children: [
                                                  Icon(
                                                    Icons.picture_as_pdf,
                                                    size: 30.sp,
                                                    color: Colors.redAccent,
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsets.symmetric(
                                                            horizontal: 10.sp),
                                                    child: Text("${data.dName}",
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        maxLines: 2,
                                                        style: TextStyle(
                                                            fontSize: 14.sp,
                                                            color: AppColor
                                                                .txtColorMain,
                                                            fontFamily:
                                                                "poppinsRegular")),
                                                  ),
                                                ],
                                              ),
                                              Text("${data.createDate}",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  maxLines: 2,
                                                  style: TextStyle(
                                                      fontSize: 14.sp,
                                                      color:
                                                          AppColor.txtColorMain,
                                                      fontFamily:
                                                          "poppinsRegular"))
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
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
          ),
        ),
      ),
    );
  }
}
