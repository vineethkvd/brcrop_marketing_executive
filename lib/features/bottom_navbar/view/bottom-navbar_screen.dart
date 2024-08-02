import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../core/utils/configs/styles/colors.dart';
import '../controller/bottom_navbar_controller.dart';


class NavigationScreen extends StatefulWidget {
  const NavigationScreen({Key? key}) : super(key: key);

  @override
  State<NavigationScreen> createState() => _NavigationScreenState();
}

class _NavigationScreenState extends State<NavigationScreen> {
  final BottomNavBarController bottomNavBarController = Get.put(BottomNavBarController());
  var currentindex = 0;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    currentindex = bottomNavBarController.selectedIndex.value;
  }

  @override
  Widget build(BuildContext context) {
    print("current index ${bottomNavBarController.selectedIndex.value}");
    return Container(
      color: AppColor.appMainColor,
      child: SafeArea(
          child: Obx(() => Scaffold(
              extendBodyBehindAppBar: false,
              body: bottomNavBarController
                  .screens[bottomNavBarController.selectedIndex.value],
              bottomNavigationBar: BottomNavigationBar(
                backgroundColor: Colors.white,
                selectedItemColor: AppColor.appMainColor,
                unselectedItemColor: Colors.grey,
                currentIndex: bottomNavBarController.selectedIndex.value,
                onTap: (index) => bottomNavBarController.updateIndex(index: index),
                selectedLabelStyle: TextStyle(
                    fontSize: 13.sp,
                    color: AppColor.txtColorMain,
                    fontFamily: "poppinsSemiBold"),
                unselectedLabelStyle: TextStyle(
                    fontSize: 13.sp,
                    color: AppColor.txtColorMain,
                    fontFamily: "poppinsSemiBold"),
                items: [
                  BottomNavigationBarItem(
                    backgroundColor: Colors.white,
                    icon: Icon(CupertinoIcons.home, size: 25.sp),
                    label: 'Home',
                  ),
                  BottomNavigationBarItem(
                    backgroundColor: Colors.white,
                    icon: Icon(Icons.apps, size: 25.sp),
                    label: 'Products',
                  ),
                  BottomNavigationBarItem(
                    backgroundColor: Colors.white,
                    icon: Icon(CupertinoIcons.cart, size: 25.sp),
                    label: 'Cart',
                  ),
                  BottomNavigationBarItem(
                    backgroundColor: Colors.white,
                    icon: Icon(CupertinoIcons.profile_circled, size: 25.sp),
                    label: 'User',
                  ),
                ],
              )),)
      ),
    );
  }
}