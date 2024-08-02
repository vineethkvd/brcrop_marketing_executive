import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../../core/utils/configs/styles/colors.dart';
import '../controller/profile_controller.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  final ProfileController profileController = Get.put(ProfileController());

  @override
  void initState() {
    super.initState();
    profileController.profileDetails();
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
              'Profile',
              style: TextStyle(
                fontSize: 18.sp,
                color: Colors.white,
                fontFamily: "poppinsBold",
              ),
            ),
            centerTitle: true,
            leading: IconButton(
              onPressed: () {
                Get.back();
              },
              icon: const Icon(
                Icons.arrow_back_ios_new,
                color: Colors.white,
              ),
            ),
          ),
          body: SingleChildScrollView(
            child: Obx(
                  () => Container(
                color: Colors.white,
                padding: EdgeInsets.symmetric(vertical: 8.w, horizontal: 15.sp),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 16.w),
                    _buildProfileDetail(
                      label: "Employee name",
                      value:
                      profileController.profileModel.value.data!.empName!,
                    ),
                    SizedBox(height: 16.w),
                    _buildProfileDetail(
                      label: "Employee ID",
                      value: profileController
                          .profileModel.value.data!.empUniqueId!,
                    ),
                    SizedBox(height: 16.w),
                    _buildProfileDetail(
                      label: "Employee Designation",
                      value:
                      profileController.profileModel.value.data!.desName!,
                    ),
                    SizedBox(height: 16.w),
                    _buildProfileDetail(
                      label: "Employee AreaManager",
                      value: profileController
                          .profileModel.value.data!.empAreaManager!,
                    ),
                    SizedBox(height: 16.w),
                    _buildProfileDetail(
                      label: "Mobile",
                      value:
                      profileController.profileModel.value.data!.empMobile!,
                    ),
                    SizedBox(height: 16.w),
                    _buildProfileDetail(
                      label: "Email",
                      value:
                      profileController.profileModel.value.data!.empEmail!,
                    ),
                    SizedBox(height: 16.w),
                    _buildProfileDetail(
                      label: "State",
                      value:
                      profileController.profileModel.value.data!.empState!,
                    ),
                    SizedBox(height: 16.w),
                    _buildProfileDetail(
                      label: "District",
                      value: profileController
                          .profileModel.value.data!.empDistrict!,
                    ),
                    SizedBox(height: 16.w),
                    _buildProfileDetail(
                      label: "District code",
                      value: profileController
                          .profileModel.value.data!.empDistrictCode!,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildProfileDetail({required String label, required String value}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(
              label,
              style: TextStyle(
                fontSize: 13.sp,
                color: AppColor.txtColorMain,
                fontFamily: "poppinsRegular",
              ),
            ),
          ],
        ),
        SizedBox(height: 8.w),
        Text(
          value,
          style: TextStyle(
            fontSize: 13.sp,
            color: AppColor.txtColorMain,
            fontFamily: "poppinsSemiBold",
          ),
        ),
        const Divider(
          thickness: 1,
          color: AppColor.secondarycolor,
        ),
      ],
    );
  }
}