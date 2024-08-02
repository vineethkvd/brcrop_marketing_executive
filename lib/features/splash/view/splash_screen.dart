import 'package:brcrop_marketing_executive/features/home/view/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';


import '../../../core/helpers/cache_helper/cache_helper.dart';
import '../../../core/utils/shared/constants/assets_pathes.dart';
import '../../auth/login/view/login_view.dart';
import '../../bottom_navbar/view/bottom-navbar_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _MyAppState();
}

class _MyAppState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(const Duration(seconds: 2), () {
      checkLoginStatus();
    });
  }

  void checkLoginStatus() async {
    final storedValue = await CacheHelper.getData('empId');
    if (storedValue != null && storedValue.isNotEmpty) {
      Get.offAll( const NavigationScreen());
    } else {
      Get.offAll(const LoginScreen());
    }
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child:Scaffold(
        backgroundColor: Colors.white,
        body:  Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              width: Get.width.w,
              height: 300.h,
              child: Image.asset(AssetsPathes.applogo).animate().fade().slideY(
                  duration: const Duration(milliseconds: 500),
                  begin: 1,
                  curve: Curves.easeInSine),
            ),
            20.verticalSpace,
          ],
        ),
      ),
    );
  }
}
