import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';

import '../../../core/utils/configs/styles/colors.dart';
import '../controller/return_controller.dart';

class ReasonPage extends StatefulWidget {
  final orderId;
  const ReasonPage({super.key, required this.orderId});

  @override
  State<ReasonPage> createState() => _ReasonPageState();
}

class _ReasonPageState extends State<ReasonPage> {
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
            'Return Reason',
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
          child: Column(
            children: [
              Container(
                height: 200,
                child: _customTextField(
                  labelTxt: "Return Reason",
                  hintTxt: "Enter return reason",
                  controller: returnController.reason.value,
                  keyboardType: TextInputType.multiline,
                  maxLines: null,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  ClipRRect(
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
                            if (returnController.reason.value.text.isEmpty) {
                              Fluttertoast.showToast(msg: "Enter return reason",backgroundColor: Colors.red);
                            } else {
                              returnController.fetchReturnReason(
                                  reason:
                                      returnController.reason.value.text.trim(),
                                  orderId: widget.orderId.toString());
                            }
                          },
                          child: Container(
                            alignment: Alignment.center,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 10, horizontal: 15),
                              child: Text(
                                'Submit',
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
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _customTextField({
    required String labelTxt,
    required String hintTxt,
    required TextEditingController controller,
    required TextInputType keyboardType,
    bool obscureText = false,
    int? maxLines,
    IconButton? suffixIcon,
  }) {
    return TextFormField(
      minLines: 15,
      maxLines: maxLines,
      obscureText: obscureText,
      controller: controller,
      keyboardType: keyboardType,
      decoration: InputDecoration(
        suffixIcon: suffixIcon,
        filled: true,
        fillColor: const Color(0xfff5f5f5),
        hintText: hintTxt,
        hintStyle: const TextStyle(
          fontSize: 12,
          fontFamily: "poppinsRegular",
          color: Colors.black,
        ),
        contentPadding:
            const EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0),
        labelText: labelTxt,
        labelStyle: const TextStyle(
          fontSize: 16,
          fontFamily: "poppinsRegular",
          color: Colors.black,
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15.0),
          borderSide: const BorderSide(color: Color(0xffd9d9d9)),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15.0),
          borderSide: const BorderSide(color: Color(0xffd9d9d9)),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15.0),
          borderSide: const BorderSide(color: Colors.red),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
      ),
    );
  }
}
