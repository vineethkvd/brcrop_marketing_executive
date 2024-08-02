import 'package:brcrop_marketing_executive/features/writeup_list/controller/fetch_writeup_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../../../core/utils/configs/styles/colors.dart';
import '../../../core/utils/shared/components/widgets/custom_buttons.dart';
import '../controller/writeup_list_controller.dart';

class WriteUpListScreen extends StatefulWidget {
  const WriteUpListScreen({super.key});

  @override
  State<WriteUpListScreen> createState() => _WriteUpListScreenState();
}

class _WriteUpListScreenState extends State<WriteUpListScreen> {
  final FetchWriteUpController fetchWriteUpController =
      Get.put(FetchWriteUpController());
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    fetchWriteUpController.fetchWriteup();
    Future.delayed(Duration(seconds: 1), () {
      // Assign the value using Rx variable after the delay
      writeUpListController.input.value = TextEditingController(
          text: fetchWriteUpController.currentWriteup.value);
    });
  }

  final WriteUpListController writeUpListController = WriteUpListController();

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColor.primarycolor,
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            automaticallyImplyLeading: false,
            backgroundColor: AppColor.primarycolor,
            title: Text('Report Writeup',
                style: TextStyle(
                    fontSize: 18.sp,
                    color: Colors.white,
                    fontFamily: "poppinsBold")),
            leading: IconButton(
                onPressed: () {
                  Get.back();
                },
                icon: Icon(
                  CupertinoIcons.back,
                  color: Colors.white,
                )),
            centerTitle: true,
          ),
          body: Container(
              width: Get.width.w,
              height: Get.height.h,
              padding: const EdgeInsets.only(
                  top: 10, right: 15, left: 15, bottom: 15),
              color: Colors.white,
              child: SingleChildScrollView(
                  child: Obx(
                () => Form(
                  key: writeUpListController.formKey.value,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: 15.h,
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "Today's report",
                              style: TextStyle(
                                  fontSize: 16.sp,
                                  color: Colors.black,
                                  fontFamily: "poppinsSemiBold"),
                            ),
                          ),
                          SizedBox(
                            height: 15.h,
                          ),
                          TextFormField(
                            controller: writeUpListController.input.value,
                            minLines: 6,
                            maxLines: null,
                            keyboardType: TextInputType.multiline,
                            decoration: InputDecoration(
                              alignLabelWithHint: true,
                              border: OutlineInputBorder(),
                              // labelText: 'Enter text',
                              hintText: "Today's update",
                            ),
                            style: TextStyle(
                              // You can customize text style here
                              fontSize: 16.0,
                              color: Colors.black,
                              fontWeight: FontWeight.normal,
                              fontStyle: FontStyle.normal,
                              letterSpacing: 0.5,
                              // You can add more text styling properties as needed
                            ),
                          ),
                          SizedBox(
                            height: 30.h,
                          ),
                          GestureDetector(
                            onTap: () {
                              writeUpListController.pickImage();
                            },
                            child: Container(
                              width: Get.width,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(
                                      Radius.circular(
                                          10.0) //                 <--- border radius here
                                      ),
                                  border: Border.all(color: Colors.black)),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  children: [
                                    Icon(
                                      Icons.attach_file,
                                      size: 40,
                                      color: AppColor.txtColorMain,
                                    ),
                                    Text(
                                      writeUpListController.chkImage.value
                                          ? "Image selected"
                                          : "Attach Image",
                                      textAlign: TextAlign.center,
                                      style: const TextStyle(
                                        color: AppColor.txtColorMain,
                                        fontFamily: 'poppinsSemiBold',
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                          writeUpListController.loading.value
                              ? Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 10.w, vertical: 10.h),
                                  child: Align(
                                    alignment: Alignment.center,
                                    child: CustomElevatedBtn(
                                      onPressed: () async {
                                        print("clicked");
                                        if (writeUpListController
                                            .formKey.value.currentState!
                                            .validate()) {
                                          if (writeUpListController
                                              .input.value.text.isNotEmpty) {
                                            writeUpListController
                                                .fetchWriteUpList(
                                                    writeup:
                                                        writeUpListController
                                                            .input.value.text
                                                            .toString());
                                          }
                                        }
                                      },
                                      backgroundColor: const Color(0xFF134005),
                                      width: 100.w,
                                      height: 40.h,
                                      title: 'Submit',
                                    ),
                                  ),
                                )
                              : const CircularProgressIndicator(),
                          SizedBox(
                            height: 10.h,
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              'Writeup History',
                              style: TextStyle(
                                  fontSize: 16.sp,
                                  color: Colors.black,
                                  fontFamily: "poppinsSemiBold"),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 20.h),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Container(
                                height: 260.h,
                                color: Colors.black26,
                                child: fetchWriteUpController.dataList.isEmpty
                                    ? const Center(
                                        child: Text('No history available'),
                                      )
                                    : ListView.builder(
                                        itemCount: fetchWriteUpController
                                            .dataList.length,
                                        itemBuilder: (context, index) {
                                          final attendance =
                                              fetchWriteUpController
                                                  .dataList[index];
                                          return Card(
                                            color: Colors.white12,
                                            child: Container(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                vertical: 10,
                                                horizontal: 15,
                                              ),
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    '${attendance.writeUp}',
                                                    style: TextStyle(
                                                      fontSize: 11.sp,
                                                      color:
                                                          AppColor.txtColorMain,
                                                      fontFamily:
                                                          "poppinsSemiBold",
                                                    ),
                                                  ),
                                                  SizedBox(height: 5.h),
                                                  Text(
                                                    '${attendance.creatDt}',
                                                    style: TextStyle(
                                                      fontSize: 11.sp,
                                                      color:
                                                          AppColor.txtColorMain,
                                                      fontFamily:
                                                          "poppinsSemiBold",
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          );
                                        },
                                      ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ))),
        ),
      ),
    );
  }
}
