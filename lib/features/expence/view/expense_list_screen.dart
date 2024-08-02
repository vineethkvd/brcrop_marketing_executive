import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../core/utils/configs/styles/colors.dart';
import '../controller/expence_list_controller.dart';
import 'expence_screen.dart';
import 'expenceview_screen.dart';

class ExpenseListScreen extends StatefulWidget {
  const ExpenseListScreen({super.key});

  @override
  State<ExpenseListScreen> createState() => _ExpenseListScreenState();
}

class _ExpenseListScreenState extends State<ExpenseListScreen> {
  final ExpenseListController expenseListController = ExpenseListController();
  final Map<int, bool> _isExpanded = {};
  final Map<int, bool> _showReadMore = {};

  @override
  void initState() {
    super.initState();
    expenseListController.fetchExpenseList();
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
            title: Text('Expense List',
                style: TextStyle(
                    fontSize: 18.sp,
                    color: Colors.white,
                    fontFamily: "poppinsBold")),
            centerTitle: true,
            leading: IconButton(
                onPressed: () {
                  Get.back();
                },
                icon: const Icon(
                  CupertinoIcons.back,
                  color: Colors.white,
                )),
          ),
          body: Container(
              padding: EdgeInsets.only(left: 10.w, right: 10.w),
              color: Colors.white,
              width: Get.width.w,
              height: Get.height.h,
              child: RefreshIndicator(
                onRefresh: () => expenseListController.fetchExpenseList(),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Obx(() {
                      if (expenseListController.expenseList.isEmpty) {
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
                              itemCount:
                                  expenseListController.expenseList.length,
                              itemBuilder: (context, index) {
                                final data =
                                    expenseListController.expenseList[index];
                                final isExpanded = _isExpanded[index] ?? false;
                                bool showReadMore =
                                    _showReadMore[index] ?? false;
                                return Padding(
                                  padding: EdgeInsets.symmetric(vertical: 4.h),
                                  child: Card(
                                    elevation: 1.0,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    color: const Color(0xffcedfaa),
                                    child: Padding(
                                      padding: const EdgeInsets.all(12.0),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Expanded(
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          EdgeInsets.symmetric(
                                                              vertical: 2.sp),
                                                      child: Text(
                                                        "${data.exp_statement_no} ",
                                                        style: TextStyle(
                                                          fontSize: 14.sp,
                                                          color: AppColor
                                                              .txtColorMain,
                                                          fontFamily:
                                                              "poppinsBold",
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          EdgeInsets.symmetric(
                                                              vertical: 2.sp),
                                                      child: Text(
                                                        "Amount: ₹${data.total_claim}",
                                                        style: TextStyle(
                                                          fontSize: 14.sp,
                                                          color: AppColor
                                                              .txtColorMain,
                                                          fontFamily:
                                                              "poppinsRegular",
                                                        ),
                                                      ),
                                                    ),
                                                    LayoutBuilder(
                                                      builder: (context, size) {
                                                        final span = TextSpan(
                                                          text:
                                                              data.area_covered ??
                                                                  "No message",
                                                          style: TextStyle(
                                                            fontSize: 14.sp,
                                                            color: Colors.black,
                                                            fontFamily:
                                                                "poppinsRegular",
                                                          ),
                                                        );

                                                        final tp = TextPainter(
                                                          text: span,
                                                          maxLines: isExpanded
                                                              ? null
                                                              : 2,
                                                          textDirection:
                                                              TextDirection.ltr,
                                                        );
                                                        tp.layout(
                                                            maxWidth:
                                                                size.maxWidth);

                                                        WidgetsBinding.instance
                                                            .addPostFrameCallback(
                                                                (_) {
                                                          setState(() {
                                                            _showReadMore[
                                                                    index] =
                                                                tp.didExceedMaxLines;
                                                          });
                                                        });

                                                        return Column(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Text.rich(
                                                              span,
                                                              maxLines:
                                                                  isExpanded
                                                                      ? null
                                                                      : 2,
                                                              overflow: isExpanded
                                                                  ? TextOverflow
                                                                      .visible
                                                                  : TextOverflow
                                                                      .ellipsis,
                                                            ),
                                                            if (showReadMore)
                                                              GestureDetector(
                                                                onTap: () {
                                                                  setState(() {
                                                                    _isExpanded[
                                                                            index] =
                                                                        !isExpanded;
                                                                  });
                                                                },
                                                                child: Text(
                                                                  isExpanded
                                                                      ? 'Read Less..'
                                                                      : 'Read More..',
                                                                  style:
                                                                      TextStyle(
                                                                    fontSize:
                                                                        14.sp,
                                                                    color: AppColor
                                                                        .txtColorMain,
                                                                    fontFamily:
                                                                        "poppinssemibold",
                                                                  ),
                                                                ),
                                                              ),
                                                          ],
                                                        );
                                                      },
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Text(
                                                "${data.date}",
                                                style: TextStyle(
                                                  fontSize: 14.sp,
                                                  color: AppColor.txtColorMain,
                                                  fontFamily: "poppinsRegular",
                                                ),
                                              ),
                                            ],
                                          ),
                                          SizedBox(height: 8.h),
                                          const Divider(
                                            height: 1.0,
                                            color: AppColor.txtColorMain,
                                          ),
                                          SizedBox(height: 8.h),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              _getStatusText(data.status),
                                              ElevatedButton(
                                                onPressed: () {
                                                  Get.to(
                                                      () => ExpenseViewScreen(
                                                          data: data),
                                                      transition: Transition
                                                          .leftToRightWithFade);
                                                },
                                                style: ElevatedButton.styleFrom(
                                                  backgroundColor: AppColor
                                                      .primarycolor, // Change the button color to blue
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0), // Change the border radius to 8.0
                                                  ),
                                                ),
                                                child: Text(
                                                  "View",
                                                  style: TextStyle(
                                                    fontSize: 12.sp,
                                                    color: Colors.white,
                                                    fontFamily: "poppinsbold",
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
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
              )),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              Get.to(() => const ExpenceScreen(),
                  transition: Transition.leftToRightWithFade);
            },
            child: Icon(
              Icons.add,
              color: Colors.white,
            ),
            backgroundColor: AppColor.primarycolor,
          ),
        ),
      ),
    );
  }

  Widget _getStatusText(String? status) {
    Color textColor;
    String statusText;

    switch (status) {
      case '0':
        textColor = Colors.black;
        statusText = 'Pending';
        break;
      case '1':
        textColor = AppColor.primarycolor;
        statusText = 'Approved';
        break;
      case '2':
        textColor = Colors.red;
        statusText = 'Rejected';
        break;
      case '3':
        textColor = Colors.red;
        statusText = 'Paid';
        break;
      default:
        textColor = Colors.black; // Default color if status is not recognized
        statusText = 'Unknown';
    }

    return Text(
      statusText,
      style: TextStyle(
        fontSize: 14.sp,
        color: textColor,
        fontFamily: "poppinsBold",
      ),
    );
  }
}
