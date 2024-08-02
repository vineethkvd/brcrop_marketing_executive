// import 'package:cached_network_image/cached_network_image.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:get/get.dart';
//
// import '../../../core/utils/configs/styles/colors.dart';
// import '../../product_details/view/product_details.dart';
// import '../controller/search_controller.dart';
// class ProductSearchDelegate extends SearchDelegate<String> {
//   final SearchProductsController controller =
//       Get.put(SearchProductsController());
//
//   @override
//   String get searchFieldLabel => 'Search Products';
//
//   @override
//   List<Widget> buildActions(BuildContext context) {
//     return [
//       IconButton(
//         icon: Icon(Icons.clear),
//         onPressed: () {
//           query = '';
//         },
//       ),
//     ];
//   }
//
//   @override
//   Widget buildLeading(BuildContext context) {
//     return IconButton(
//       icon: Icon(Icons.arrow_back),
//       onPressed: () {
//         close(context, '');
//       },
//     );
//   }
//
//   @override
//   Widget buildResults(BuildContext context) {
//     if (controller.loading.value == false) {
//       onSubmitted(query);
//     }
//
//     return Obx(() {
//       if (controller.loading.value == true) {
//         return Center(child: CircularProgressIndicator());
//       } else if (controller.searchResults.isEmpty) {
//         return Center(child: Text('No results found'));
//       } else {
//         return ListView.builder(
//           itemCount: controller.searchResults.length,
//           itemBuilder: (context, index) {
//             final result = controller.searchResults[index];
//             return InkWell(
//               onTap: () {
//                 Get.to(ProductDetailScreen(
//                     categoryName: "${result.categoryName}",
//                     proImg1: "${result.proImg}",
//                     price: "${result.proPrice}",
//                     productName: "${result.productName}",
//                     category_id: "${result.categoryId}",
//                     description: "${result.description}",
//                     proId: "${result.proId}", dose: '', weight: '',));
//               },
//               child: Padding(
//                 padding: const EdgeInsets.all(4.0),
//                 child: Container(
//                   decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(10),
//                     color: AppColor.secondarycolor,
//                   ),
//                   height: 80,
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.start,
//                     children: [
//                       Padding(
//                         padding: EdgeInsets.symmetric(horizontal: 10.w),
//                         child: SizedBox(
//                           width: 70,
//                           height: 70,
//                           child: CachedNetworkImage(
//                             fit: BoxFit.fill,
//                             imageUrl: "${result.proImg}",
//                             placeholder: (context, url) =>
//                                 const CupertinoActivityIndicator(),
//                             errorWidget: (context, url, error) =>
//                                 const Icon(Icons.error),
//                           ),
//                         ),
//                       ),
//                       Expanded(
//                         child: Center(
//                           child: Text(
//                             "${result.productName}",
//                             maxLines: 1,
//                             overflow: TextOverflow.ellipsis,
//                             softWrap: false,
//                             style: TextStyle(
//                                 fontSize: 12.sp,
//                                 color:AppColor.txtColorMain,
//                                 fontFamily: "poppinsSemiBold"),
//
//                           ),
//                         ),
//                       )
//                     ],
//                   ),
//                 ),
//               ),
//             );
//           },
//         );
//       }
//     });
//   }
//
//   @override
//   Widget buildSuggestions(BuildContext context) {
//     if (query.isEmpty) {
//       return Obx(() {
//         if (controller.loading.value) {
//           return Center(child: CircularProgressIndicator());
//         } else if (controller.searchResults.isEmpty) {
//           return Center(child: Text('No results found'));
//         } else {
//           return ListView.builder(
//             itemCount: controller.searchResults.length,
//             itemBuilder: (context, index) {
//               final result = controller.searchResults[index];
//               return InkWell(
//                 onTap: () {
//                   Get.to(ProductDetailScreen(
//                       categoryName: "${result.categoryName}",
//                       proImg1: "${result.proImg}",
//                       price: "${result.proPrice}",
//                       productName: "${result.productName}",
//                       category_id: "${result.categoryId}",
//                       description: "${result.description}",
//                       proId: "${result.proId}", dose: '', weight: '',));
//                 },
//                 child: Padding(
//                   padding: const EdgeInsets.all(4.0),
//                   child: Container(
//                     decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(10),
//                       color: AppColor.secondarycolor,
//                     ),
//                     height: 80,
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.start,
//                       children: [
//                         Padding(
//                           padding: EdgeInsets.symmetric(horizontal: 10.w),
//                           child: SizedBox(
//                             width: 70,
//                             height: 70,
//                             child: CachedNetworkImage(
//                               fit: BoxFit.fill,
//                               imageUrl: "${result.proImg}",
//                               placeholder: (context, url) =>
//                                   const CupertinoActivityIndicator(),
//                               errorWidget: (context, url, error) =>
//                                   const Icon(Icons.error),
//                             ),
//                           ),
//                         ),
//                         Expanded(
//                           child: Center(
//                             child: Text(
//                               "${result.productName}",
//                               maxLines: 1,
//                               overflow: TextOverflow.ellipsis,
//                               softWrap: false,
//                               style: TextStyle(
//                                   fontSize: 12.sp,
//                                   color:AppColor.txtColorMain,
//                                   fontFamily: "poppinsSemiBold"),
//
//                             ),
//                           ),
//                         )
//                       ],
//                     ),
//                   ),
//                 ),
//               );
//             },
//           );
//         }
//       });
//     } else {
//       return Obx(() {
//         if (controller.loading.value) {
//           return Center(child: CircularProgressIndicator());
//         } else if (controller.searchResults.isEmpty) {
//           return Center(child: Text('No results found'));
//         } else {
//           return ListView.builder(
//             itemCount: controller.searchResults.length,
//             itemBuilder: (context, index) {
//               final result = controller.searchResults[index];
//               return InkWell(
//                 onTap: () {
//                   Get.to(ProductDetailScreen(
//                       categoryName: "${result.categoryName}",
//                       proImg1: "${result.proImg}",
//                       price: "${result.proPrice}",
//                       productName: "${result.productName}",
//                       category_id: "${result.categoryId}",
//                       description: "${result.description}",
//                       proId: "${result.proId}", dose: '', weight: '',));
//                 },
//                 child: Padding(
//                   padding: const EdgeInsets.all(4.0),
//                   child: Container(
//                     decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(10),
//                       color: AppColor.secondarycolor,
//                     ),
//                     height: 80,
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.start,
//                       children: [
//                         Padding(
//                           padding: EdgeInsets.symmetric(horizontal: 10.w),
//                           child: SizedBox(
//                             width: 70,
//                             height: 70,
//                             child: CachedNetworkImage(
//                               fit: BoxFit.fill,
//                               imageUrl: "${result.proImg}",
//                               placeholder: (context, url) =>
//                                   const CupertinoActivityIndicator(),
//                               errorWidget: (context, url, error) =>
//                                   const Icon(Icons.error),
//                             ),
//                           ),
//                         ),
//                         Expanded(
//                           child: Center(
//                             child: Text(
//                               "${result.productName}",
//                               maxLines: 1,
//                               overflow: TextOverflow.ellipsis,
//                               softWrap: false,
//                               style: TextStyle(
//                                   fontSize: 12.sp,
//                                   color:AppColor.txtColorMain,
//                                   fontFamily: "poppinsSemiBold"),
//                             ),
//                           ),
//                         )
//                       ],
//                     ),
//                   ),
//                 ),
//               );
//             },
//           );
//         }
//       });
//     }
//   }
//
//   @override
//   void onSubmitted(String value) {
//     print('Search button clicked with query: $value');
//     controller.searchProduct(query: value.trim()); // Trim the query string
//   }
// }
