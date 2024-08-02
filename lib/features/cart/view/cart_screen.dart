import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:shimmer/shimmer.dart';

import '../../../core/utils/configs/styles/colors.dart';
import '../../../core/utils/shared/components/widgets/custom_buttons.dart';
import '../../../core/utils/shared/components/widgets/custom_snackbar.dart';
import '../../add_to_cart/controller/add_to_cart_controller.dart';
import '../../cart/model/cart_model.dart';
import '../../payment/controller/payment_controller.dart';
import '../../payment/view/payment_page.dart';
import '../../remove_cart_item/controller/remove_cart_item_controller.dart';
import '../controller/cart_controller.dart';
import '../model/dropdown_model.dart';

class CartScreens extends StatefulWidget {
  const CartScreens({super.key});

  @override
  State<CartScreens> createState() => _CartScreensState();
}

class _CartScreensState extends State<CartScreens> {
  final PaymentController paymentController = Get.put(PaymentController());
  final CartController cartController = Get.put(CartController());
  final AddToCartController addToCartController =
      Get.put(AddToCartController());
  final RemoveCartItemController removeCartItemController =
      Get.put(RemoveCartItemController());

  @override
  void initState() {
    super.initState();
    cartController.fetchCartProducts();
    if (cartController.selectedValue.value.isEmpty &&
        cartController.dropdownCart.isNotEmpty) {
      cartController.selectedValue.value =
          cartController.dropdownCart.first.value ?? '';
      cartController.selectedName.value =
          cartController.dropdownCart.first.name ?? '';
    }
  }

  void calculateTotal() {
    final isScheme = cartController.selectedValue.value;
    final filteredProducts = cartController.productList.value.where((data) {
      if (isScheme == "1") {
        return data.schemeStatus != "1";
      } else {
        return data.schemeStatus == "1";
      }
    }).toList();

    if (filteredProducts.isEmpty) {
      cartController.curTotal.value = "0";
    } else {
      double total = 0.0;
      for (var data in filteredProducts) {
        total += double.tryParse(data.price.toString()) ?? 0.0;
      }
      cartController.curTotal.value = total.toStringAsFixed(2);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColor.primarycolor,
      child: SafeArea(
        child: Scaffold(
          bottomNavigationBar: Container(
            padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 20.w),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20.r),
                topRight: Radius.circular(20.r),
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.black12,
                  blurRadius: 10.r,
                  offset: Offset(0, -5),
                ),
              ],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Obx(
                  () => Text(
                    "Total: ₹${cartController.curTotal.value}",
                    style: TextStyle(
                      fontSize: 16.sp,
                      color: AppColor.txtColorMain,
                      fontFamily: "PoppinsSemiBold",
                    ),
                  ),
                ),
                CustomElevatedBtnTwo(
                  onPressed: () {
                    if (cartController.curTotal.value.isNotEmpty &&
                        double.tryParse(cartController.curTotal.value) != 0) {
                      Get.to(
                        PaymentPage(amount: cartController.curTotal.value),
                        transition: Transition.leftToRightWithFade,
                      );
                    } else {
                      CustomSnackBar.showCustomErrorSnackBar(
                          title: "Failed", message: "No item in cart");
                    }
                  },
                  backgroundColor: AppColor.primarycolor,
                  width: 150.w,
                  height: 40.h,
                  title: 'Checkout',
                ),
              ],
            ),
          ),
          appBar: AppBar(
            automaticallyImplyLeading: false,
            backgroundColor: AppColor.primarycolor,
            title: Text(
              'Cart',
              style: TextStyle(
                fontSize: 18.sp,
                color: Colors.white,
                fontFamily: "PoppinsBold",
              ),
            ),
            centerTitle: true,
          ),
          body: Container(
            padding: EdgeInsets.all(12.w),
            color: Colors.white,
            width: Get.width,
            height: Get.height,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.centerRight,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Obx(
                        () {
                          if (cartController.selectedValue.value.isEmpty &&
                              cartController.dropdownCart.isNotEmpty) {
                            cartController.selectedValue.value =
                                cartController.dropdownCart.first.value ?? '';
                            cartController.selectedName.value =
                                cartController.dropdownCart.first.name ?? '';
                          }

                          return Align(
                            alignment: Alignment.centerRight,
                            child: Container(
                              width: 120,
                              height: 35,
                              decoration: BoxDecoration(
                                color: const Color(0xfff5f5f5),
                                borderRadius: BorderRadius.circular(10.0),
                                border: Border.all(
                                  color: const Color(
                                      0xffd9d9d9), // Border color to match the text field
                                  width: 1.0, // Border width
                                ),
                              ),
                              child: DropdownButtonHideUnderline(
                                child: DropdownButton<String>(
                                  dropdownColor: Colors.white,
                                  borderRadius: BorderRadius.circular(15),
                                  isExpanded: true,
                                  icon: const Padding(
                                    padding: EdgeInsets.only(right: 10),
                                    child: Icon(Icons.arrow_drop_down),
                                  ),
                                  value:
                                      cartController.selectedValue.value.isEmpty
                                          ? null
                                          : cartController.selectedValue.value,
                                  onChanged: (newValue) {
                                    cartController.selectedValue.value =
                                        newValue!;
                                    cartController.selectedName.value =
                                        cartController.dropdownCart
                                            .firstWhere((element) =>
                                                element.value == newValue)
                                            .name!;
                                    calculateTotal(); // Update the total when value changes
                                  },
                                  items:
                                      cartController.dropdownCart.map((data) {
                                    return DropdownMenuItem<String>(
                                      value: data.value,
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 12.0),
                                        child: Text(
                                          data.name ?? '',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 12,
                                            fontWeight: FontWeight.normal,
                                            fontFamily: "poppinsRegular",
                                          ),
                                        ),
                                      ),
                                    );
                                  }).toList(),
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Obx(
                    () {
                      final isScheme = cartController.selectedValue.value;
                      final filteredProducts =
                          cartController.productList.value.where((data) {
                        if (isScheme == "1") {
                          return data.schemeStatus != "1";
                        } else {
                          return data.schemeStatus == "1";
                        }
                      }).toList();

                      // Update total whenever the filtered products change
                      calculateTotal();

                      return filteredProducts.isNotEmpty
                          ? ListView.builder(
                              itemCount: filteredProducts.length,
                              itemBuilder: (context, index) {
                                final data = filteredProducts[index];
                                return Padding(
                                  padding: EdgeInsets.symmetric(vertical: 10.h),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10.r),
                                      color: Colors.white,
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.black12,
                                          blurRadius: 5.r,
                                          offset: Offset(0, 2),
                                        ),
                                      ],
                                    ),
                                    child: Row(
                                      children: [
                                        Container(
                                          padding: EdgeInsets.all(8.w),
                                          child: ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(8.r),
                                            child: CachedNetworkImage(
                                              imageUrl: data?.proImg1 ?? '',
                                              placeholder: (context, url) =>
                                                  Shimmer.fromColors(
                                                baseColor: Colors.grey[300]!,
                                                highlightColor:
                                                    Colors.grey[100]!,
                                                child: Container(
                                                  width: 100.w,
                                                  height: 100.h,
                                                  color: Colors.white,
                                                ),
                                              ),
                                              errorWidget:
                                                  (context, url, error) =>
                                                      Icon(Icons.error),
                                              width: 100.w,
                                              height: 100.h,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          child: Padding(
                                            padding: EdgeInsets.all(8.w),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  data?.productName ?? '',
                                                  maxLines: 2,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  style: TextStyle(
                                                    fontSize: 14.sp,
                                                    color:
                                                        AppColor.txtColorMain,
                                                    fontFamily:
                                                        "PoppinsSemiBold",
                                                  ),
                                                ),
                                                SizedBox(height: 10.h),
                                                Text(
                                                  "Quantity: ${data.quantity}",
                                                  style: TextStyle(
                                                    fontSize: 12.sp,
                                                    color:
                                                        AppColor.txtColorMain,
                                                    fontFamily:
                                                        "PoppinsRegular",
                                                  ),
                                                ),
                                                Text(
                                                  "Price: ₹${data.price}",
                                                  style: TextStyle(
                                                    fontSize: 12.sp,
                                                    color:
                                                        AppColor.txtColorMain,
                                                    fontFamily:
                                                        "PoppinsRegular",
                                                  ),
                                                ),
                                                if (data.schemeStatus == "1")
                                                  Text(
                                                    "Order Type: Scheme Order",
                                                    style: TextStyle(
                                                      fontSize: 12.sp,
                                                      color:
                                                          AppColor.txtColorMain,
                                                      fontFamily:
                                                          "PoppinsRegular",
                                                    ),
                                                  ),
                                                Align(
                                                  alignment:
                                                      Alignment.bottomRight,
                                                  child: CustomElevatedBtnTwo(
                                                    onPressed: () async {
                                                      removeCartItemController
                                                          .removeProduct(
                                                              cart_id:
                                                                  data?.cartId ??
                                                                      '');
                                                    },
                                                    backgroundColor: Colors.red,
                                                    width: 100.w,
                                                    height: 30.h,
                                                    title: 'Remove',
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
                            )
                          : Center(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.shopping_cart_outlined,
                                    size: 100.sp,
                                    color: Colors.grey[300],
                                  ),
                                  Text(
                                    "Your cart is empty",
                                    style: TextStyle(
                                      fontSize: 16.sp,
                                      color: AppColor.txtColorMain,
                                      fontFamily: "PoppinsRegular",
                                    ),
                                  ),
                                ],
                              ),
                            );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
