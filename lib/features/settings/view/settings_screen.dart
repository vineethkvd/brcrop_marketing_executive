import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../core/utils/configs/styles/colors.dart';
import '../../../core/utils/shared/components/widgets/custom_buttons.dart';
import '../../../core/utils/shared/components/widgets/custom_snackbar.dart';
import '../../../core/utils/shared/components/widgets/custom_textfield.dart';
import '../../auth/login/repository/validator.dart';
import '../../order_product/view/order_product_screen.dart';
import '../controller/settings_controller.dart';


class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  final SettingsController settingsController=Get.put(SettingsController());
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

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
            title: Text(
                'Settings',
                style: TextStyle(
                    fontSize: 18.sp,
                    color: Colors.white,
                    fontFamily: "poppinsBold")
            ),
            centerTitle: true,
            leading: IconButton(onPressed: () {
              Get.back();
            }, icon: Icon(CupertinoIcons.back,color: Colors.white,)),
          ),
          body: Container(
            color: Colors.white,
            width: Get.width,
            height: Get.height,
            padding: EdgeInsets.symmetric(vertical: 8.w,horizontal: 26.sp),
            child: Form(
              key: settingsController.formKey.value,
              child: Obx(() => SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 150.h,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 8.w),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text("Current password",style: TextStyle(
                            fontSize: 13.sp,
                            color: AppColor.txtColorMain,
                            fontFamily: "poppinsSemiBold")),
                      ),
                    ),
                    Padding(
                      padding:  EdgeInsets.symmetric(vertical: 7.h),
                      child: CustomTextField1(
                        obscureText: settingsController.currPasswordVisible.value,
                        suffixIcon: IconButton(
                            onPressed: () {
                              settingsController.updateVisibility(value: settingsController.currPasswordVisible);
                            },
                            icon: Icon(settingsController.currPasswordVisible.value
                                ? Icons.visibility_off
                                : Icons.visibility),
                            color: Colors.black),
                        controller: settingsController.currentpass.value,
                        validator: (value) =>
                            Validator.validateInput(input: value),
                        hintText: "Enter your current password",
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 8.w),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text("New password",style: TextStyle(
                            fontSize: 13.sp,
                            color: AppColor.txtColorMain,
                            fontFamily: "poppinsSemiBold")),
                      ),
                    ),
                    Padding(
                      padding:  EdgeInsets.symmetric(vertical: 7.h),
                      child: CustomTextField1(
                        obscureText: settingsController.newPasswordVisible.value,
                        suffixIcon: IconButton(
                            onPressed: () {
                              settingsController.updateVisibility(value: settingsController.newPasswordVisible);
                            },
                            icon: Icon(settingsController.newPasswordVisible.value
                                ? Icons.visibility_off
                                : Icons.visibility),
                            color: Colors.black),
                        controller: settingsController.newpass.value,
                        validator: (value) =>
                            Validator.validateInput(input: value),
                        hintText: "Enter new password",
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 8.w),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text("confirm password",style: TextStyle(
                            fontSize: 13.sp,
                            color: AppColor.txtColorMain,
                            fontFamily: "poppinsSemiBold")),
                      ),
                    ),
                    Padding(
                      padding:  EdgeInsets.symmetric(vertical: 7.h),
                      child: CustomTextField1(
                        obscureText: settingsController.confPasswordVisible.value,
                        suffixIcon: IconButton(
                            onPressed: () {
                              settingsController.updateVisibility(value: settingsController.confPasswordVisible);
                            },
                            icon: Icon(settingsController.confPasswordVisible.value
                                ? Icons.visibility_off
                                : Icons.visibility),
                            color: Colors.black),
                        controller: settingsController.conformpass.value,
                        validator: (value) =>
                            Validator.validateInput(input: value),
                        hintText: "Retype password",
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: 10.w, vertical: 10.h),
                      child: Align(
                        alignment: Alignment.center,
                        child: CustomElevatedBtn(
                          onPressed: () async {
                            if (settingsController.formKey.value.currentState!.validate()) {
                              print("clicked");
                              var currentPass = settingsController.currentpass.value.text;
                              var newPass = settingsController.newpass.value.text;
                              var confirmPass = settingsController.conformpass.value.text;
                              if (currentPass.isNotEmpty && newPass.isNotEmpty && confirmPass.isNotEmpty) {
                                if (newPass == confirmPass) {
                                  await settingsController.changePassword(currentPass: currentPass, newPass: newPass, confPass: confirmPass);
                                } else {
                                  CustomSnackBar.showCustomErrorSnackBar(
                                      title: "Failed", message: 'New password and confirm password should be same');
                                }
                              } else {
                                CustomSnackBar.showCustomErrorSnackBar(
                                    title: "Failed", message: 'Please fill in all fields');
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
              ),)
            ),
          ),
        ),
      ),
    );
  }
}
