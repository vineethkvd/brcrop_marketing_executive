// import 'package:cached_network_image/cached_network_image.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:get/get.dart';
//
// import '../../../../core/utils/configs/styles/colors.dart';
// import '../../../category_list/view/category_list_screen.dart';
// import '../../controller/category_controller.dart';
// import '../../model/category_model.dart';
//
// class CategoryWidget extends StatefulWidget {
//   const CategoryWidget({Key? key}) : super(key: key);
//
//   @override
//   State<CategoryWidget> createState() => _CategoryWidgetState();
// }
//
// class _CategoryWidgetState extends State<CategoryWidget> {
//   final CategoryController categoryController = Get.put(CategoryController());
//
//   @override
//   Widget build(BuildContext context) {
//     return StreamBuilder<RxList<Data>>(
//       stream: categoryController.fetchCategoryData(),
//       builder: (context, snapshot) {
//         if (snapshot.hasData) {
//           final dataList = snapshot.data!;
//           return GridView.builder(
//             shrinkWrap: true,
//             gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//               crossAxisCount: 2,
//               crossAxisSpacing: 16,
//               mainAxisSpacing: 16,
//             ),
//             itemCount: dataList.length,
//             itemBuilder: (context, index) {
//               final category = dataList[index];
//               return InkWell(
//                 onTap: () {
//                   Get.to(CategoryListScreen(categoryId: "${category.catId}", categoryName: '${category.categoryName}',),
//                       transition: Transition.leftToRightWithFade);
//                 },
//                 child: Padding(
//                   padding: const EdgeInsets.only(left: 2, right: 2),
//                   child: Container(
//                     height: 450.h,
//                     decoration: BoxDecoration(
//                       border: Border.all(
//                         color: Colors.black54,
//                         style: BorderStyle.solid,
//                         width: 1.0,
//                       ),
//                       color: Colors.transparent,
//                       borderRadius: BorderRadius.circular(8.0),
//                     ),
//                     child: Padding(
//                       padding:
//                           const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 12),
//                       child: Column(
//                         mainAxisSize: MainAxisSize.max,
//                         children: [
//                           Row(
//                             mainAxisSize: MainAxisSize.max,
//                             children: [
//                               Expanded(
//                                 child: ClipRRect(
//                                   borderRadius: BorderRadius.only(
//                                     bottomLeft: Radius.circular(0),
//                                     bottomRight: Radius.circular(0),
//                                     topLeft: Radius.circular(8),
//                                     topRight: Radius.circular(8),
//                                   ),
//                                   child: SizedBox(
//                                     width: 100.w,
//                                     height: 100.h,
//                                     child: CachedNetworkImage(
//                                       fit: BoxFit.fill,
//                                       imageUrl: "${category.catImg}",
//                                       placeholder: (context, url) =>
//                                           const CupertinoActivityIndicator(),
//                                       errorWidget: (context, url, error) =>
//                                           const Icon(Icons.error),
//                                     ),
//                                   ),
//                                 ),
//                               ),
//                             ],
//                           ),
//                           Padding(
//                             padding: EdgeInsetsDirectional.fromSTEB(0, 4, 0, 0),
//                             child: Row(
//                               mainAxisSize: MainAxisSize.max,
//                               children: [
//                                 Flexible(
//                                   child: Padding(
//                                     padding: EdgeInsetsDirectional.fromSTEB(
//                                         8, 4, 0, 0),
//                                     child: Text(
//                                       category.categoryName ?? '',
//                                         style: TextStyle(
//                                             fontSize: 12.sp,
//                                             color: AppColor.txtColorMain,
//                                             fontFamily: "poppinsRegular")
//                                     ),
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ),
//                 ),
//               );
//             },
//           );
//         } else if (snapshot.hasError) {
//           return Center(
//             child: Text('Error fetching data: ${snapshot.error}'),
//           );
//         } else {
//           return Center(
//             child: CupertinoActivityIndicator(),
//           );
//         }
//       },
//     );
//   }
// }