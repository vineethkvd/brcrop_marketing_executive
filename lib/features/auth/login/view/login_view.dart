import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../../core/utils/shared/components/widgets/custom_buttons.dart';
import '../../../../core/utils/shared/components/widgets/custom_textfield.dart';
import '../../../../core/utils/shared/constants/assets_pathes.dart';
import '../controller/login_controller.dart';
import '../repository/validator.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    final LoginController loginController = Get.put(LoginController());
    return Container(
      color: Colors.white,
      child: SafeArea(
        child: Scaffold(
            body: Container(
          padding:
              EdgeInsets.only(left: 20.w, right: 20.w, bottom: 10.w, top: 10.w),
          width: double.infinity,
          height: double.infinity,
          color: Colors.white,
          child: Form(
            key: loginController.formKey.value,
            child: Obx(() => SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: Get.width,
                        alignment: Alignment.center,
                        child: Image.asset(
                          AssetsPathes.applogo,
                          height: 200.h,
                          width: 200,
                        ),
                      ),
                      SizedBox(
                        height: 80.h,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 10.w, vertical: 10.h),
                        child: CustomTextField1(
                          keyboardType: TextInputType.number,
                          controller: loginController.phone.value,
                          validator: (value) =>
                              Validator.validateInput(input: value),
                          prefixIcon: Icons.phone_android,
                          hintText: "Enter your Phone",
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 10.w, vertical: 10.h),
                        child: CustomTextField1(
                          obscureText: loginController.passwordVisible.value,
                          suffixIcon: IconButton(
                              onPressed: () {
                                loginController.updateVisibility();
                              },
                              icon: Icon(loginController.passwordVisible.value
                                  ? Icons.visibility_off
                                  : Icons.visibility),
                              color: Colors.black),
                          controller: loginController.password.value,
                          validator: (value) =>
                              Validator.validateInput(input: value),
                          prefixIcon: Icons.lock,
                          hintText: "Enter your Password",
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 10.w, vertical: 10.h),
                        child: Align(
                          alignment: Alignment.center,
                          child: CustomElevatedBtn(
                            onPressed: () async {
                              if (loginController.formKey.value.currentState!
                                  .validate()) {
                                await loginController.loginUser(
                                    phone: loginController.phone.value.text,
                                    password:
                                        loginController.password.value.text);
                              }
                            },
                            backgroundColor: Color(0xFF134005),
                            width: 100.w,
                            height: 40.h,
                            child: loginController.loading.value
                                ? const Text("Login",style: TextStyle(color: Colors.white),)
                                : const CupertinoActivityIndicator(color: Colors.white,),
                          ),
                        ),
                      ),
                    ],
                  ),
                )),
          ),
        )),
      ),
    );
  }
}
