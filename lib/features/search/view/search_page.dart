import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../core/utils/configs/styles/colors.dart';
import '../../../core/utils/shared/components/widgets/custom_textfield.dart';
import '../../product_details/view/product_details.dart';
import '../controller/search_controller.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  final SearchProductsController searchProductsController =
      SearchProductsController();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // searchProductsController.searchProduct(query: query);
    searchProductsController.searchProduct(
        query: searchProductsController.searchItems.value.text);
    searchProductsController.searchItems.value.addListener(() async {
      await searchProductsController.searchProduct(
          query: searchProductsController.searchItems.value.text);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColor.appMainColor,
      child: SafeArea(
        child: Scaffold(
          extendBodyBehindAppBar: false,
          body: Container(
            color: Colors.white,
            width: Get.width.w,
            height: Get.height.h,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Obx(
                  () => Container(
                    color: AppColor.appMainColor,
                    padding: EdgeInsets.only(
                        left: 10.w, right: 10.w, top: 10.sp, bottom: 10.sp),
                    child: Row(
                      children: [
                        InkWell(
                          onTap: () {
                            Get.back();
                          },
                          child: SizedBox(
                            width: 35.sp,
                            child: const Icon(
                              Icons.arrow_back,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Expanded(
                          child: SizedBox(
                            height: 50.h,
                            width: Get.width.w,
                            child: CustomTextField2(
                              prefixIcon: CupertinoIcons.search,
                              keyboardType: TextInputType.text,
                              controller:
                                  searchProductsController.searchItems.value,
                              // validator: (value) =>
                              //     Validator.validateInput(input: value),
                              hintText: "Search products",
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Obx(() {
                  if (searchProductsController
                      .searchModel.value.searchResult!.isEmpty) {
                    return Expanded(
                      child: Center(
                          child: Text("No result available",
                              style: TextStyle(
                                  fontSize: 14.sp,
                                  color: AppColor.txtColorMain,
                                  fontFamily: "poppinsRegular"))),
                    );
                  } else {
                    return Expanded(
                      child: Padding(
                        padding: EdgeInsets.symmetric(vertical: 8.h),
                        child: ListView.builder(
                          dragStartBehavior: DragStartBehavior.start,
                          physics: const BouncingScrollPhysics(),
                          itemCount: searchProductsController
                              .searchModel.value.searchResult!.length,
                          itemBuilder: (context, index) {
                            final result = searchProductsController
                                .searchModel.value.searchResult![index];
                            return InkWell(
                              onTap: () {
                                Get.to(ProductDetailScreen(
                                  categoryName: "${result.categoryName}",
                                  proImg1: "${result.proImg}",
                                  price: "${result.proPrice}",
                                  productName: "${result.productName}",
                                  category_id: "${result.categoryId}",
                                  description: "${result.description}",
                                  proId: "${result.proId}",
                                  dose: '${result.proPacking}',
                                  weight: '${result.proPackingSize}',
                                ));
                              },
                              child: Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: AppColor.secondarycolor,
                                  ),
                                  height: 80,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 10.w),
                                        child: SizedBox(
                                          width: 70,
                                          height: 70,
                                          child: CachedNetworkImage(
                                            fit: BoxFit.fill,
                                            imageUrl: "${result.proImg}",
                                            placeholder: (context, url) =>
                                                const CupertinoActivityIndicator(),
                                            errorWidget:
                                                (context, url, error) =>
                                                    const Icon(Icons.error),
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        child: Padding(
                                          padding: EdgeInsets.only(left: 8.sp),
                                          child: Text(
                                            "${result.productName}",
                                            maxLines: 1,
                                            overflow: TextOverflow.ellipsis,
                                            softWrap: false,
                                            style: TextStyle(
                                                fontSize: 12.sp,
                                                color: AppColor.txtColorMain,
                                                fontFamily: "poppinsSemiBold"),
                                          ),
                                        ),
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
                }),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
