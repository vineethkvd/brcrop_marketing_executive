import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:readmore/readmore.dart';
import 'package:shimmer/shimmer.dart';

import '../../../core/utils/configs/styles/colors.dart';
import '../../add_to_cart/controller/add_to_cart_controller.dart';
import '../../category_list/model/category_list_model.dart';
import '../../product_details/view/product_details.dart';
import '../controller/category_list_controller.dart';

class CategoryListScreen extends StatefulWidget {
  final String categoryId;
  final String categoryName;
  const CategoryListScreen(
      {super.key, required this.categoryId, required this.categoryName});

  @override
  State<CategoryListScreen> createState() => _CategoryListScreenState();
}

class _CategoryListScreenState extends State<CategoryListScreen> {
  final CategoryListController categoryListController =
  Get.put(CategoryListController());
  final AddToCartController addToCartController =
  Get.put(AddToCartController());
  TextEditingController searchController = TextEditingController();
  List<Data>? allProduct = [];
  List<Data>? filteredProduct = [];

  @override
  void initState() {
    super.initState();
    call();
  }

  void call() {
    categoryListController
        .fetchCategoryProducts(categoryId: widget.categoryId)
        .then((_) {
      allProduct = categoryListController.categoryListModel.value.data;
      filteredProduct = allProduct;
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColor.appMainColor,
      child: SafeArea(
        child: Scaffold(
          extendBodyBehindAppBar: false,
          appBar: AppBar(
            backgroundColor: AppColor.appMainColor,
            leading: IconButton(
                onPressed: () {
                  Get.back();
                },
                icon: const Icon(
                  CupertinoIcons.back,
                  color: Colors.white,
                )),
            centerTitle: true,
            title: Text('${widget.categoryName}',
                style: TextStyle(
                    fontSize: 18.sp,
                    color: Colors.white,
                    fontFamily: "poppinsBold")),
          ),
          body: RefreshIndicator(
            onRefresh: () => categoryListController.fetchCategoryProducts(
                categoryId: widget.categoryId),
            child: Container(
                color: Colors.white,
                height: Get.height,
                width: Get.width,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: TextField(
                        controller: searchController,
                        onChanged: (value) {
                          filterCategories(value);
                        },
                        decoration: InputDecoration(
                          hintText: 'Search products...',
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
                    Expanded(
                      child: Obx(() {
                        if (categoryListController.isLoading.value) {
                          return buildShimmerEffect();
                        } else {
                          return buildSubCategoryList();
                        }
                      }),
                    )
                  ],
                )),
          ),
        ),
      ),
    );
  }

  Widget buildShimmerEffect() {
    return ListView.builder(
      padding: EdgeInsets.all(8.0),
      itemCount: 6,
      itemBuilder: (context, index) {
        return Shimmer.fromColors(
          baseColor: Colors.grey[300]!,
          highlightColor: Colors.grey[100]!,
          child: Container(
            margin: EdgeInsets.symmetric(vertical: 8.0),
            height: 100.h,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10.0),
            ),
          ),
        );
      },
    );
  }

  Widget buildSubCategoryList() {
    final subCategories = filteredProduct;

    if (subCategories == null || subCategories.isEmpty) {
      return Center(
        child: Text(
          "No product available",
          style: TextStyle(
            fontSize: 16.sp,
            color: Colors.grey,
          ),
        ),
      );
    }

    return ListView.builder(
      padding: const EdgeInsets.all(8.0),
      itemCount: subCategories.length,
      itemBuilder: (context, index) {
        final subCategory = subCategories[index];
        return InkWell(
          onTap: () {
            Get.to(
                ProductDetailScreen(
                  dose: '${subCategory.proPacking}',
                  weight: '${subCategory.proPackingSize}',
                  categoryName:
                  '${widget.categoryName}',
                  proImg1: '${subCategory.proImg1}',
                  price: '${subCategory.proPrice}',
                  productName:
                  '${subCategory.productName}',
                  category_id: '${subCategory.creditDays}',
                  description:
                  '${subCategory.description}',
                  proId: '${subCategory.proId}',
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
                        ReadMoreText(
                          "Dose: ${subCategory.proPacking}" ?? '',
                          trimLines: 1,
                          colorClickableText: Colors.blue,
                          trimMode: TrimMode.Line,
                          trimCollapsedText: '...Read more',
                          trimExpandedText: ' Show less',
                          style: TextStyle(
                            fontSize: 12.sp, // Convert this as well
                            color: Colors.black,
                            fontFamily: "poppinsRegular",
                          ),
                          moreStyle: TextStyle(
                            fontSize: 12.sp, // Convert this as well
                            color: Colors.blue,
                            fontFamily: "poppinsRegular",
                          ),
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

  void filterCategories(String query) {
    if (query.isEmpty) {
      filteredProduct = allProduct;
    } else {
      filteredProduct = allProduct?.where((category) {
        return category.productName
            ?.toLowerCase()
            .contains(query.toLowerCase()) ??
            false;
      }).toList();
    }
    setState(() {});
  }
}