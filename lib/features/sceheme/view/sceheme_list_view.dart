import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:shimmer/shimmer.dart';

import '../../../core/utils/configs/styles/colors.dart';
import '../../product_details/controller/product_detail_controller.dart';
import '../../product_details/view/product_details.dart';
import '../controller/sceheme_controller.dart';

class SchemeListScreen extends StatefulWidget {
  final String index;
  const SchemeListScreen({super.key, required this.index});

  @override
  State<SchemeListScreen> createState() => _SchemeListScreenState();
}

class _SchemeListScreenState extends State<SchemeListScreen> {
  final SchemeController scehemeController = SchemeController();
  final ProductDetailController productDetailController = Get.put(ProductDetailController());

  @override
  void initState() {
    super.initState();
    scehemeController.fetchScheme();
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
              'Scheme Products',
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
              icon: Icon(
                CupertinoIcons.back,
                color: Colors.white,
              ),
            ),
          ),
          body: Container(
            padding: EdgeInsets.symmetric(horizontal: 10.w),
            color: Colors.white,
            width: Get.width,
            height: Get.height,
            child: RefreshIndicator(
              onRefresh: () => scehemeController.fetchScheme(),
              child: Obx(() {
                if (scehemeController.schemeModel.value.data == null ||
                    scehemeController.schemeModel.value.data!.isEmpty) {
                  return Center(
                    child: Text(
                      "No data available",
                      style: TextStyle(
                        fontSize: 14.sp,
                        color: AppColor.txtColorMain,
                        fontFamily: "poppinsRegular",
                      ),
                    ),
                  );
                } else {
                  final schemeIndex = int.tryParse(widget.index);
                  if (schemeIndex == null || schemeIndex >= scehemeController.schemeModel.value.data!.length) {
                    return Center(
                      child: Text(
                        "Invalid index",
                        style: TextStyle(
                          fontSize: 14.sp,
                          color: AppColor.txtColorMain,
                          fontFamily: "poppinsRegular",
                        ),
                      ),
                    );
                  }

                  final scheme = scehemeController.schemeModel.value.data![schemeIndex];
                  return ListView.builder(
                    itemCount: scheme.productDetails!.length,
                    itemBuilder: (context, index) {
                      final subCategory =  scheme.productDetails![index];
                      return InkWell(
                        onTap: () {
                          Get.to(
                              ProductDetailScreen(
                                dose: '${subCategory.proPacking}',
                                weight: '${subCategory.proPackingSize}',
                                categoryName:
                                '${subCategory.categoryName}',
                                proImg1: '${subCategory.proImg1}',
                                price: '${subCategory.proPrice}',
                                productName:
                                '${subCategory.productName}',
                                category_id: '${subCategory.creditDays}',
                                description:
                                '${subCategory.description}',
                                proId: '${subCategory.proId}',
                                schemeStatus:'${subCategory.schemeStatus}' ,
                              ),
                              transition:
                              Transition.leftToRightWithFade);
                        },
                        child: Container(
                          margin: const EdgeInsets.symmetric(vertical: 8.0),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10.0),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.3),
                                spreadRadius: 2,
                                blurRadius: 5,
                                offset: const Offset(0, 3),
                              ),
                            ],
                          ),
                          child: Row(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(10.0),
                                child: CachedNetworkImage(
                                  imageUrl: subCategory.proImg1 ?? '',
                                  width: 100.w,
                                  height: 100.h,
                                  fit: BoxFit.cover,
                                  errorWidget: (context, url, error) => Shimmer.fromColors(
                                    baseColor: Colors.grey[300]!,
                                    highlightColor: Colors.grey[100]!,
                                    child: Container(
                                      width: 100.w,
                                      height: 100.h,
                                      color: Colors.white,
                                    ),
                                  ),
                                  placeholder: (context, url) => Shimmer.fromColors(
                                    baseColor: Colors.grey[300]!,
                                    highlightColor: Colors.grey[100]!,
                                    child: Container(
                                      width: 100.w,
                                      height: 100.h,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(width: 10.w),
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        subCategory.productName ?? '',
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16.sp,
                                        ),
                                      ),
                                      SizedBox(height: 5.h),
                                      Text(
                                        "Dose: ${subCategory.proPacking}" ?? '',
                                        style: TextStyle(
                                          fontSize: 14.sp,
                                          color: Colors.grey,
                                        ),
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  );
                }
              }),
            ),
          ),
        ),
      ),
    );
  }
}