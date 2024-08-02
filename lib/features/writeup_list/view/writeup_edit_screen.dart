import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../core/utils/configs/styles/colors.dart';
import '../../../core/utils/shared/components/widgets/custom_buttons.dart';
import '../../../core/utils/shared/components/widgets/custom_textfield.dart';
import '../../auth/login/repository/validator.dart';
import '../controller/writeup_edit_controller.dart';
import '../controller/writeup_list_controller.dart';

class WriteUpEditScreen extends StatefulWidget {
  final String writeup;
  const WriteUpEditScreen({super.key, required this.writeup});

  @override
  State<WriteUpEditScreen> createState() => _WriteUpEditScreenState();
}

class _WriteUpEditScreenState extends State<WriteUpEditScreen> {
  final WriteUpListController writeUpListController = WriteUpListController();
  final WriteUpEditController writeUpEditController = WriteUpEditController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    writeUpEditController.edit.value.text = widget.writeup;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColor.primarycolor,
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            automaticallyImplyLeading: false,
            backgroundColor: AppColor.primarycolor,
            title:  Text(
              'Edit Writeuplist',
                style: TextStyle(
                    fontSize: 18.sp,
                    color: Colors.white,
                    fontFamily: "poppinsBold")
            ),
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
              width: double.infinity,
              height: double.infinity,
              padding:
                  EdgeInsets.only(top: 10, right: 15, left: 15, bottom: 15),
              color: Colors.white,
              child: SingleChildScrollView(
                child: Form(
                  key: writeUpListController.formKey.value,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        height: Get.height * 0.70.h,
                        // color: Colors.yellow,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            TextFormField(
                              controller: writeUpEditController.edit.value,
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
                            Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 10.w, vertical: 10.h),
                              child: Align(
                                alignment: Alignment.center,
                                child: CustomElevatedBtn(
                                  onPressed: () async {
                                    if (writeUpListController
                                        .formKey.value.currentState!
                                        .validate()) {
                                      if (writeUpEditController
                                          .edit.value.text.isNotEmpty) {
                                        await writeUpEditController
                                            .editWriteUpList(
                                                writeup: writeUpEditController
                                                    .edit.value.text
                                                    .toString());
                                      }
                                    }
                                  },
                                  backgroundColor: Color(0xFF134005),
                                  width: 100.w,
                                  height: 40.h,
                                  title: 'Submit',
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              )),
        ),
      ),
    );
  }
}
