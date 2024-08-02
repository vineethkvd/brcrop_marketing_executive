import 'package:brcrop_marketing_executive/features/notification/controller/deleteNtf_controller.dart';
import 'package:brcrop_marketing_executive/features/notification/controller/notifiCount_controller.dart';
import 'package:brcrop_marketing_executive/features/notification/controller/notification_controller.dart';
import 'package:brcrop_marketing_executive/features/notification/controller/viewNtf_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../../core/utils/configs/styles/colors.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  final NotificationController notificationController =
      Get.put(NotificationController());
  final ViewNotificationController viewNotificationController =
      Get.put(ViewNotificationController());
  final NotificationCountController notificationCountController =
      Get.put(NotificationCountController());
  final deleteNotificationController = Get.put(DeleteNotificationController());
  final Map<int, bool> _isExpanded = {};
  final Map<int, bool> _showReadMore = {};

  @override
  void initState() {
    super.initState();
    notificationController.fetchNotifications().then((_) {
      for (var notification
          in notificationController.notificationModel.value.data!) {
        viewNotificationController.markNotificationAsViewed(
            notifiId: notification.notifiId.toString());
      }
    });
    // Listen to changes in notificationModel
    notificationController.notificationModel.listen((model) {
      // Update unseen count whenever notificationModel changes
      //updateUnseenCount();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColor.primarycolor,
      child: SafeArea(
        child: Scaffold(
          extendBodyBehindAppBar: false,
          appBar: AppBar(
            backgroundColor: AppColor.primarycolor,
            leading: IconButton(
              onPressed: () {
                notificationCountController.fetchNotificationsCount();
                Get.back();
              },
              icon: const Icon(
                CupertinoIcons.back,
                color: Colors.white,
              ),
            ),
            centerTitle: true,
            title: Text(
              "Notifications",
              style: TextStyle(
                fontSize: 18.sp,
                color: Colors.white,
                fontFamily: "poppinsBold",
              ),
            ),
          ),
          body: RefreshIndicator(
            onRefresh: () => notificationController.fetchNotifications(),
            child: Container(
              padding: EdgeInsets.only(left: 10.w, right: 10.w),
              color: Colors.white,
              width: Get.width.w,
              height: Get.height.h,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Obx(() {
                    if (notificationController
                        .notificationModel.value.data!.isEmpty) {
                      return Expanded(
                        child: Center(
                          child: Text(
                            "No notifications available",
                            style: TextStyle(
                              fontSize: 14.sp,
                              color: AppColor.txtColorMain,
                              fontFamily: "poppinsRegular",
                            ),
                          ),
                        ),
                      );
                    } else {
                      return Expanded(
                        child: Padding(
                          padding: EdgeInsets.symmetric(vertical: 8.h),
                          child: ListView.builder(
                            itemCount: notificationController
                                .notificationModel.value.data!.length,
                            itemBuilder: (context, index) {
                              final data = notificationController
                                  .notificationModel.value.data![index];
                              List<String> dateTimeParts =
                                  data.msgSentTime!.split(" ");
                              String date = dateTimeParts[0];
                              String time = dateTimeParts[1].split(".")[0];

                              bool isExpanded = _isExpanded[index] ?? false;
                              bool showReadMore = _showReadMore[index] ?? false;

                              return Padding(
                                padding: EdgeInsets.symmetric(vertical: 4.h),
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10.0),
                                    color: Colors.grey,
                                  ),
                                  child: Padding(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 8.w, vertical: 8.h),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          children: [
                                            Expanded(
                                              child: LayoutBuilder(
                                                builder: (context, size) {
                                                  final span = TextSpan(
                                                    text: data.notifiMsg ??
                                                        "No message",
                                                    style: TextStyle(
                                                      fontSize: 15.sp,
                                                      color: Colors.white,
                                                      fontFamily:
                                                          "poppinsRegular",
                                                    ),
                                                  );

                                                  final tp = TextPainter(
                                                    text: span,
                                                    maxLines:
                                                        isExpanded ? null : 2,
                                                    textDirection:
                                                        TextDirection.ltr,
                                                  );
                                                  tp.layout(
                                                      maxWidth: size.maxWidth);

                                                  // Update the _showReadMore map based on the text height
                                                  WidgetsBinding.instance
                                                      .addPostFrameCallback(
                                                          (_) {
                                                    setState(() {
                                                      _showReadMore[index] =
                                                          tp.didExceedMaxLines;
                                                    });
                                                  });

                                                  return GestureDetector(
                                                    onTap: () {
                                                      setState(() {
                                                        _isExpanded[index] =
                                                            !isExpanded;
                                                      });
                                                    },
                                                    child: Text.rich(
                                                      span,
                                                      maxLines:
                                                          isExpanded ? null : 2,
                                                      overflow: isExpanded
                                                          ? TextOverflow.visible
                                                          : TextOverflow
                                                              .ellipsis,
                                                    ),
                                                  );
                                                },
                                              ),
                                            ),
                                            PopupMenuButton<String>(
                                              icon: const Icon(Icons.more_vert,
                                                  color: Colors.white),
                                              onSelected: (String value) {
                                                if (value == 'delete') {
                                                  deleteNotificationController
                                                      .fetchDeleteData(
                                                          notifiId: data
                                                              .notifiId
                                                              .toString());
                                                }
                                              },
                                              itemBuilder:
                                                  (BuildContext context) {
                                                return [
                                                  PopupMenuItem(
                                                    value: 'delete',
                                                    child: Text('Delete'),
                                                    height: 30.h,
                                                  ),
                                                ];
                                              },
                                            ),
                                          ],
                                        ),
                                        if (!isExpanded && showReadMore)
                                          GestureDetector(
                                            onTap: () {
                                              setState(() {
                                                _isExpanded[index] = true;
                                              });
                                            },
                                            child: Text(
                                              'Read More',
                                              style: TextStyle(
                                                fontSize: 14.sp,
                                                color: AppColor.primarycolor,
                                                fontFamily: "poppinssemibold",
                                              ),
                                            ),
                                          ),
                                        SizedBox(height: 4.h),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            SizedBox(
                                              width: 120.w,
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    date,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    maxLines: 1,
                                                    style: TextStyle(
                                                      fontSize: 11.sp,
                                                      color: Colors.white,
                                                      fontFamily:
                                                          "poppinsRegular",
                                                    ),
                                                  ),
                                                  Text(
                                                    time,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    maxLines: 1,
                                                    style: TextStyle(
                                                      fontSize: 11.sp,
                                                      color: Colors.white,
                                                      fontFamily:
                                                          "poppinsRegular",
                                                    ),
                                                  ),
                                                ],
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
            ),
          ),
        ),
      ),
    );
  }
}
