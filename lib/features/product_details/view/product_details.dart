import 'package:brcrop_marketing_executive/features/auth/login/repository/validator.dart';
import 'package:brcrop_marketing_executive/features/cart/view/cart_screen.dart';
import 'package:brcrop_marketing_executive/features/varient/controller/varient_controller.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:readmore/readmore.dart';
import '../../../core/utils/configs/styles/colors.dart';
import '../../../core/utils/shared/components/widgets/custom_buttons.dart';
import '../../../core/utils/shared/components/widgets/custom_snackbar.dart';
import '../../../core/utils/shared/components/widgets/custom_textfield.dart';
import '../../../core/utils/shared/constants/assets_pathes.dart';
import '../../add_to_cart/controller/add_to_cart_controller.dart';
import '../controller/product_detail_controller.dart';
import '../../bottom_navbar/controller/bottom_navbar_controller.dart';
import '../../bottom_navbar/view/bottom-navbar_screen.dart';

class ProductDetailScreen extends StatefulWidget {
  final String dose;
  final String weight;
  final String proId;
  final String categoryName;
  final String proImg1;
  final String price;
  final String productName;
  final String category_id;
  final String description;
  final String schemeStatus;
  const ProductDetailScreen(
      {super.key,
      required this.categoryName,
      required this.proImg1,
      required this.price,
      required this.productName,
      required this.category_id,
      required this.description,
      required this.proId,
      required this.dose,
      required this.weight,
        this.schemeStatus = '',});

  @override
  State<ProductDetailScreen> createState() => _ProductDetailScreenState();
}

class _ProductDetailScreenState extends State<ProductDetailScreen> {
  final ProductDetailController productDetailController =
      Get.put(ProductDetailController());
  final AddToCartController addToCartController =
      Get.put(AddToCartController());
  final BottomNavBarController bottomNavBarController =
      Get.put(BottomNavBarController());
  final VarientController varientController = Get.put(VarientController());
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    varientController.proctVarient(productID: widget.proId);
    varientController.searchItems.value.text = "1";
    setState(() {});
    chk();
  }

  void chk() {
    if (varientController.varientsModel.value.status == true) {
      varientController.selectedItem.value =
          varientController.dataList.value.first.proPackingSize!;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColor.primarycolor,
      child: SafeArea(
        child: Scaffold(
          bottomNavigationBar: SizedBox(
            height: 50.0.h,
            width: 100.0.w,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius:
                    BorderRadius.circular(60.0), // Adjust the radius as needed
              ),
              child: CustomElevatedBtn(
                onPressed: () {
                  if (varientController.selectedItem.value.isEmpty) {
                    CustomSnackBar.showCustomErrorSnackBar(
                        title: "Failed", message: "select size of package");
                  } else {
                    addToCartController.addToCart(
                        product_id: varientController.productId.value,
                        quantity:
                        varientController.searchItems.value.text,
                        price: varientController.price.value,
                        verId: varientController.selectedId.value, schemeStatus:widget.schemeStatus.toString());

                    // Resetting the values after adding to cart
                    varientController.selectedItem.value = '';
                    varientController.selectedId.value = '';
                    varientController.price.value = '';
                    varientController.productId.value = '';
                    varientController.searchItems.value.text = "1";
                  }
                },
                backgroundColor: Color(0xFF134005),
                width: 100.0.w,
                height: 40.0.h,
                title: 'Add to cart',
              ),
            ),
          ),
          appBar: AppBar(
            automaticallyImplyLeading: false,
            backgroundColor: AppColor.primarycolor,
            title: Text('Details',
                style: TextStyle(
                    fontSize: 18.sp,
                    color: Colors.white,
                    fontFamily: "poppinsBold")),
            actions: [
              IconButton(
                  onPressed: () {
                    bottomNavBarController.selectedIndex.value = 2;
                    Get.to(const NavigationScreen(),
                        transition: Transition.leftToRightWithFade);
                  },
                  icon: const Icon(
                    CupertinoIcons.cart,
                    color: Colors.white,
                  ))
            ],
            leading: IconButton(
                onPressed: () {
                  Get.back();
                },
                icon: const Icon(
                  CupertinoIcons.back,
                  color: Colors.white,
                )),
            centerTitle: true,
          ),
          body:  Container(
            color: Colors.white,
            width: double.infinity,
            height: double.infinity,
            child: SingleChildScrollView(
                child: Obx(
                      () => Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 6.sp),
                        child: SizedBox(
                          width: Get.width,
                          height: 50.sp,
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Expanded(child: SizedBox()),
                              InkWell(
                                onTap: () {
                                  bottomNavBarController.selectedIndex.value = 1;
                                  Get.to(const NavigationScreen(),
                                      transition: Transition.leftToRightWithFade);
                                },
                                child: Container(
                                  width: 100.sp,
                                  height: 50.sp,
                                  decoration: BoxDecoration(
                                    color: AppColor.appMainColor,
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(10),
                                      bottomLeft: Radius.circular(10),
                                    ),
                                  ),
                                  child: Padding(
                                    padding: EdgeInsets.symmetric(vertical: 4.sp),
                                    child: SvgPicture.asset(
                                        "assets/images/add_product.svg"),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(
                            left: 20.w, right: 20.w, bottom: 10.w, top: 10.w),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.symmetric(vertical: 8.h),
                              child: Text('${widget.categoryName}',
                                  style: TextStyle(
                                      fontSize: 16.sp,
                                      color: AppColor.txtColorMain,
                                      fontFamily: "poppinsSemiBold")),
                            ),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: SizedBox(
                                width: 350.w,
                                height: 300.h,
                                child: CachedNetworkImage(
                                  fit: BoxFit.fill,
                                  imageUrl: "${widget.proImg1}",
                                  placeholder: (context, url) =>
                                  const CupertinoActivityIndicator(),
                                  errorWidget: (context, url, error) =>
                                  const Icon(Icons.error),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(vertical: 8.h),
                              child: Text(
                                  maxLines: 2,
                                  '${widget.productName}',
                                  style: TextStyle(
                                      fontSize: 14.sp,
                                      color: AppColor.txtColorMain,
                                      fontFamily: "poppinsSemiBold")),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 8),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('Category ID: ${widget.category_id}',
                                      style: TextStyle(
                                          fontSize: 12.sp,
                                          color: AppColor.txtColorMain,
                                          fontFamily: "poppinsSemiBold")),
                                  Text(
                                    'Price: ${varientController.price.value.isEmpty ? varientController.firstPrice.value : varientController.price.value}',
                                    style: TextStyle(
                                        fontSize: 12.sp,
                                        color: AppColor.txtColorMain,
                                        fontFamily: "poppinsSemiBold"),
                                  ),
                                ],
                              ),
                            ),
                            Divider(),
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 8),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.symmetric(vertical: 10.sp),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        Text(
                                          'Quantity:   ',
                                          style: TextStyle(
                                              fontSize: 12.sp,
                                              color: AppColor.txtColorMain,
                                              fontFamily: "poppinsSemiBold"),
                                        ),
                                        SizedBox(
                                          height: 40.sp,
                                          width: 60.sp,
                                          child: CustomTextField2(
                                            keyboardType: TextInputType.number,
                                            controller:
                                            varientController.searchItems.value,
                                            // validator: (value) =>
                                            //     Validator.validateInput(input: value),
                                            // hintText: "Quantity"
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        'Size: ${widget.weight}',
                                        style: TextStyle(
                                            fontSize: 12.sp,
                                            color: AppColor.txtColorMain,
                                            fontFamily: "poppinsSemiBold"),
                                      ),
                                      SizedBox(
                                        width: 10.sp,
                                      ),
                                      Container(
                                        height: 40.sp,
                                        width: 100.sp,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                          BorderRadius.circular(10.0.r),
                                          border: Border.all(color: Colors.black54),
                                        ),
                                        child:varientController.dataList.value!.isEmpty? Center(child: Text("Empty")):DropdownButton<String>(
                                          dropdownColor: Colors.white,
                                          underline: Container(),
                                          hint: varientController
                                              .selectedItem.value.isEmpty
                                              ? Padding(
                                            padding:
                                            const EdgeInsets.all(8.0),
                                            child: Text(
                                              'Size',
                                              style: TextStyle(
                                                fontSize: 13.sp,
                                                color: AppColor.txtColorMain,
                                                fontFamily: "poppinsRegular",
                                              ),
                                            ),
                                          )
                                              : Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Text(
                                              varientController
                                                  .selectedItem.value!,
                                              style: TextStyle(
                                                fontSize: 13.sp,
                                                color: AppColor.txtColorMain,
                                                fontFamily: "poppinsRegular",
                                              ),
                                            ),
                                          ),
                                          isExpanded: true,
                                          iconSize: 30.0.sp,
                                          style: TextStyle(
                                            fontSize: 13.sp,
                                            color: AppColor.txtColorMain,
                                            fontFamily: "poppinsRegular",
                                          ),
                                          value: varientController
                                              .selectedId.value.isEmpty
                                              ? null
                                              : varientController.selectedId.value,
                                          items: varientController.dataList.value!
                                              .map((value) {
                                            return DropdownMenuItem(
                                              value: value.verId,
                                              child: Padding(
                                                padding: const EdgeInsets.all(8.0),
                                                child: Text(
                                                  value.proPackingSize.toString(),
                                                  style:
                                                  TextStyle(color: Colors.black),
                                                ),
                                              ),
                                            );
                                          }).toList(),
                                          onChanged: (val) {
                                            setState(() {
                                              varientController.selectedId.value =
                                              val!;
                                              varientController.selectedItem.value =
                                              varientController.dataList.value!
                                                  .firstWhere((element) =>
                                              element.verId == val)
                                                  .proPackingSize!;
                                              varientController.price.value =
                                              varientController.dataList.value!
                                                  .firstWhere((element) =>
                                              element.verId == val)
                                                  .proPrice!;
                                              varientController.productId.value =
                                              varientController.dataList.value!
                                                  .firstWhere((element) =>
                                              element.verId == val)
                                                  .productId!;
                                              print(
                                                  "id ${varientController.productId.value}");
                                              varientController.proctVarient(
                                                  productID: varientController
                                                      .productId.value);
                                            });
                                          },
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Divider(),

                            Padding(
                              padding: EdgeInsets.symmetric(vertical: 10.0), // Removed .sp
                              child: Row(
                                children: [
                                  Text(
                                    'Dose:',
                                    style: TextStyle(
                                      fontSize: 12.sp, // This is correct
                                      color: AppColor.txtColorMain,
                                      fontFamily: "poppinsSemiBold",
                                    ),
                                  ),
                                  const SizedBox(width: 8.0), // Add some horizontal space between Text and ReadMoreText
                                  Expanded( // Ensure the ReadMoreText takes the remaining space
                                    child: ReadMoreText(
                                      widget.dose ?? '',
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
                                  ),
                                ],
                              ),
                            ),
                            Divider(),
                            Padding(
                              padding: EdgeInsets.symmetric(vertical: 8.h),
                              child: Text('Application and Dose',
                                  style: TextStyle(
                                      fontSize: 14.sp,
                                      color: AppColor.txtColorMain,
                                      fontFamily: "poppinsSemiBold")),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(vertical: 8.h),
                              child:ReadMoreText(
                                widget.description ?? '',
                                trimLines: 3,
                                colorClickableText: Colors.blue,
                                trimMode: TrimMode.Line,
                                trimCollapsedText: '...Read more',
                                trimExpandedText: ' Show less',
                                style: TextStyle(fontSize: 12, color: Colors.black, fontFamily: "poppinsRegular"),
                                moreStyle: TextStyle(fontSize: 12, color: Colors.blue, fontFamily: "poppinsRegular"),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                )),
          ),
        ),
      ),
    );
  }
}
