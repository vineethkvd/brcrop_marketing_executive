import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:shimmer/shimmer.dart';

import '../../../core/utils/configs/styles/colors.dart';
import '../../category/controller/category_controller.dart';
import '../../category/model/category_model.dart';
import '../../category_list/view/category_list_screen.dart';
import '../../sceheme/controller/sceheme_controller.dart';
import '../../sceheme/view/sceheme_list_view.dart';
import '../../sceheme/view/sceheme_view.dart';

class ProductScreen extends StatefulWidget {
  const ProductScreen({super.key});

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  final CategoryController _controller = Get.put(CategoryController());
  final SchemeController _scehemeController = Get.put(SchemeController());
  TextEditingController searchController = TextEditingController();
  List<Data>? allCategories = [];
  List<Data>? filteredCategories = [];

  @override
  void initState() {
    super.initState();
    call();
    _scehemeController.fetchScheme();
  }

  void call() {
    _controller.fetchCategoryData().then((_) {
      allCategories = _controller.categoryModel.value.data;
      filteredCategories = allCategories;
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColor.primarycolor,
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: AppColor.primarycolor,
            title: Text('Products',
                style: TextStyle(
                    fontSize: 18.sp,
                    color: Colors.white,
                    fontFamily: "poppinsBold")),
            centerTitle: true,
            automaticallyImplyLeading: false,
          ),
          body: Container(
            padding: const EdgeInsets.only(left: 10, right: 10),
            color: Colors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: TextField(
                    controller: searchController,
                    onChanged: (value) {
                      filterCategories(value);
                    },
                    decoration: InputDecoration(
                      hintText: 'Search categories...',
                      fillColor: const Color(0xfff5f5f5),
                      hintStyle: const TextStyle(
                        fontSize: 12,
                        fontFamily: "poppinsRegular",
                        color: Colors.black,
                      ),
                      prefixIcon: Icon(Icons.search),
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
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 5.sp),
                  child: Text("Scheme",
                      style: TextStyle(
                          fontSize: 16.sp,
                          color: AppColor.txtColorMain,
                          fontFamily: "poppinsSemiBold")),
                ),
                Container(
                  height: 180.0, // Adjust the height to fit your design
                  child: Obx(() {
                    if (_scehemeController.isLoading.value) {
                      return buildShimmerEffect();
                    } else {
                      return buildSchemeListView();
                    }
                  }),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 5.sp),
                  child: Text("Category",
                      style: TextStyle(
                          fontSize: 16.sp,
                          color: AppColor.txtColorMain,
                          fontFamily: "poppinsSemiBold")),
                ),
                Expanded(
                  child: Obx(() {
                    if (_controller.isLoading.value) {
                      return buildCategoryShimmerEffect();
                    } else {
                      return buildCategoryGrid();
                    }
                  }),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildShimmerEffect() {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      padding: const EdgeInsets.all(8.0),
      itemCount: 4,
      itemBuilder: (context, index) {
        return Shimmer.fromColors(
          baseColor: Colors.grey[300]!,
          highlightColor: Colors.grey[100]!,
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 8.0),
            width: 150.0,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10.0),
            ),
          ),
        );
      },
    );
  }

  Widget buildSchemeListView() {
    final schemes = _scehemeController.schemeModel.value.data ?? [];
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8.h),
      child: SizedBox(
        height: 120.h,
        width: Get.width.w,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: schemes.length,
          itemBuilder: (context, index) {
            final data = schemes[index];
            var curIndex = index;

            return Padding(
              padding: EdgeInsets.symmetric(horizontal: 5.h),
              child: InkWell(
                onTap: () {
                  Get.to(SchemeListScreen(index: curIndex.toString()),
                      transition: Transition.leftToRightWithFade);
                },
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black54,
                      style: BorderStyle.solid,
                      width: 1.0,
                    ),
                    color: AppColor.appMainColor,
                    borderRadius: BorderRadius.circular(25.0),
                  ),
                  height: 10.h,
                  width: 120.w,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 5.h),
                        child: Text("${data.schName}",
                            overflow: TextOverflow.ellipsis,
                            maxLines: 2,
                            style: TextStyle(
                                fontSize: 14.sp,
                                color: Colors.white,
                                fontFamily: "poppinsSemiBold")),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 5.h, top: 5),
                        child: Text("Offer: ${data.schOffer}",
                            overflow: TextOverflow.ellipsis,
                            maxLines: 2,
                            style: TextStyle(
                                fontSize: 12.sp,
                                color: Colors.white,
                                fontFamily: "poppinsRegular")),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 5.h, top: 5),
                        child: Text("Start: ${data.schStDt}",
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1,
                            style: TextStyle(
                                fontSize: 10.sp,
                                color: Colors.white,
                                fontFamily: "poppinsRegular")),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 5.h, top: 5),
                        child: Text("Expire: ${data.schEndDt}",
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1,
                            style: TextStyle(
                                fontSize: 10.sp,
                                color: Colors.white,
                                fontFamily: "poppinsRegular")),
                      )
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

  Widget buildCategoryShimmerEffect() {
    return GridView.builder(
      padding: const EdgeInsets.all(8.0),
      itemCount: 6,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 8.0,
        crossAxisSpacing: 8.0,
        childAspectRatio: 3 / 2,
      ),
      itemBuilder: (context, index) {
        return Shimmer.fromColors(
          baseColor: Colors.grey[300]!,
          highlightColor: Colors.grey[100]!,
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10.0),
            ),
          ),
        );
      },
    );
  }

  Widget buildCategoryGrid() {
    final categories = filteredCategories ?? [];

    if (categories.isEmpty) {
      return Center(
        child: Text(
          "No categories found",
          style: TextStyle(
            fontSize: 16.sp,
            color: Colors.grey,
          ),
        ),
      );
    }

    return GridView.builder(
      padding: const EdgeInsets.all(8.0),
      itemCount: categories.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 8.0,
        crossAxisSpacing: 8.0,
        childAspectRatio:
        1.0, // Adjust the aspect ratio for Flipkart-like appearance
      ),
      itemBuilder: (context, index) {
        final category = categories[index];
        return Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: () {
              Get.to(
                  CategoryListScreen(
                      categoryId: category.catId.toString(),
                      categoryName: category.categoryName.toString()),
                  transition: Transition.cupertino);
            },
            borderRadius: BorderRadius.circular(10.0),
            child: Container(
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
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Expanded(
                    flex: 7, // Adjust flex to control the image height
                    child: ClipRRect(
                      borderRadius:
                      BorderRadius.vertical(top: Radius.circular(10.0)),
                      child: CachedNetworkImage(
                        imageUrl: category.catImg ?? '',
                        fit: BoxFit.fill,
                        errorWidget: (context, url, error) => Icon(Icons.error),
                        placeholder: (context, url) => Shimmer.fromColors(
                          baseColor: Colors.grey[300]!,
                          highlightColor: Colors.grey[100]!,
                          child: Container(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 3, // Adjust flex to control the text height
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        category.categoryName ?? '',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 12.sp,
                          fontFamily: "poppinsRegular",
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  void filterCategories(String query) {
    if (query.isEmpty) {
      filteredCategories = allCategories;
    } else {
      filteredCategories = allCategories?.where((category) {
        return category.categoryName
            ?.toLowerCase()
            .contains(query.toLowerCase()) ??
            false;
      }).toList();
    }
    setState(() {});
  }
}