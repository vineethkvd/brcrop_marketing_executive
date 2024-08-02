import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../core/utils/configs/styles/colors.dart';
import '../../../core/utils/shared/components/widgets/custom_buttons.dart';
import '../../invoice/controller/download_pdf_controller.dart';
import '../model/soilTestList_model/testList_model.dart';

class TestResultScreen extends StatefulWidget {
  const TestResultScreen({super.key});

  @override
  State<TestResultScreen> createState() => _TestResultScreenState();
}

class _TestResultScreenState extends State<TestResultScreen> {
  late Soillist testList;

  bool isExpanded = false;

  @override
  void initState() {
    super.initState();
    testList = Get.arguments as Soillist;
  }

  @override
  Widget build(BuildContext context) {
    final DownLoadPdfController downLoadPdfController =
        Get.put(DownLoadPdfController());
    const String baseUrl = "https://baruchgera.com/";
    final String imageUrl = baseUrl + testList.image.toString();
    final String Resultpdf = baseUrl + testList.result.toString();
    print('image:${imageUrl}');
    print('pdf:${Resultpdf}');
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: AppColor.primarycolor,
          centerTitle: true,
          title: Text(
            'Soil Test Form',
            style:
                TextStyle(fontFamily: 'poppinsSemiBold', color: Colors.white),
          ),
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios_new_rounded),
            color: Colors.white,
            onPressed: () {
              Get.back();
            },
          ),
        ),
        body: SafeArea(
            child: Container(
          // padding: EdgeInsets.all(20),
          alignment: Alignment.center,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Expanded(child: _buildLabel('Name of the Sample')),
                            Padding(
                              padding: EdgeInsets.symmetric(vertical: 5.h),
                              child: Container(
                                height: 30.h,
                                width: 100.w,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5.0),
                                    border: Border.all(color: Colors.black54)),
                                child: Align(
                                    alignment: Alignment.centerLeft,
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 10),
                                      child: Text(testList.date.toString(),
                                          style: TextStyle(
                                              fontSize: 13.sp,
                                              color: AppColor.txtColorMain,
                                              fontFamily: "poppinsRegular")),
                                    )),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 10.h),
                        Container(
                            height: 50.h,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.0),
                                border: Border.all(color: Colors.black54)),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 10.0),
                                child: Text(
                                  testList.name.toString(),
                                  style: TextStyle(
                                      fontFamily: 'poppinsSemiBold',
                                      color: AppColor.txtColorMain,
                                      fontSize: 14.sp),
                                ),
                              ),
                            )),
                        SizedBox(height: 16.h),
                        _buildLabel('Sample Image'),
                        SizedBox(
                          width: 10.w,
                        ),
                        SizedBox(height: 10.h),
                        Center(
                          child: Container(
                            width: 150.w,
                            height: 150.h,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              border: Border.all(color: Colors.white),
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10.0),
                              child: CachedNetworkImage(
                                fit: BoxFit.fill,
                                imageUrl: imageUrl,
                                placeholder: (context, url) =>
                                    const CupertinoActivityIndicator(),
                                errorWidget: (context, url, error) =>
                                    const Icon(Icons.error),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 16.h),
                        _buildLabelAndField(
                            "Farmer's Name", testList.name.toString()),
                        SizedBox(height: 16.h),
                        _buildLabelAndField(
                            'Address', testList.address.toString()),
                        SizedBox(height: 16.h),
                        _buildLabelAndField(
                            'Phone', testList.mobile.toString()),
                        SizedBox(height: 16.h),
                        _buildLabelAndField('Sample Location',
                            testList.sampleLocation.toString()),
                        SizedBox(height: 16.h),
                        _buildLabelAndField(
                            'Village Revenue', testList.revenue.toString()),
                        SizedBox(height: 16.h),
                        _buildLabelAndField(
                            'Region', testList.region.toString()),
                        SizedBox(height: 16.h),
                        _buildLabelAndField(
                            'District', testList.sampleSent.toString()),
                        SizedBox(height: 16.h),
                        _buildLabelAndField(
                            'Survey Number', testList.surveyNumber.toString()),
                        SizedBox(height: 16.h),
                        _buildLabelAndField('Service Number',
                            testList.serviceNumber.toString()),
                        SizedBox(height: 16.h),
                        _buildLabelAndField('Fertilizer Well, Channel',
                            testList.sampleSent.toString()),
                        SizedBox(height: 16.h),
                        _buildLabelAndField(
                            'Stable Crop', testList.stableCrop.toString()),
                        SizedBox(height: 16.h),
                        _buildLabelAndField(
                            'Crop Name', testList.cropName.toString()),
                        SizedBox(height: 16.h),
                        _buildLabelAndField("Examiner's Name",
                            testList.examinerName.toString()),
                        SizedBox(height: 16.h),
                        _buildLabelAndField(
                            "Test Type", testList.testType.toString()),
                        SizedBox(height: 16.h),
                        _buildLabelAndField(
                            'Sample Send Via', testList.sampleSent.toString()),
                        SizedBox(height: 16.h),
                        _buildExpandableLabelAndField(
                            'Remarks', testList.remarks.toString()),
                        SizedBox(height: 16.h),
                        Center(
                          child: CustomElevatedBtn(
                            onPressed: () {},
                            backgroundColor: Colors.grey,
                            width: 100.w,
                            height: 40.h,
                            title: 'Submit',
                            txtColor: Colors.white,
                          ),
                        ),
                      ]),
                ),
                Container(
                  width: double.infinity,
                  height: 205.h,
                  color: AppColor.primarycolor,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(height: 16.h),
                      testList.result == null
                          ? Padding(
                              padding: EdgeInsets.symmetric(vertical: 40),
                              child: Container(
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.white),
                                  borderRadius: BorderRadius.circular(1),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.all(20),
                                  child: Text(
                                    'AWAIT RESULT',
                                    style: TextStyle(
                                      fontFamily: 'poppinsSemiBold',
                                      fontSize: 14.sp,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                            )
                          : Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 30.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    "Test Result from R&D Dept, BG Crop",
                                    style: TextStyle(
                                      fontFamily: 'poppinsSemiBold',
                                      fontSize: 15.sp,
                                      color: Colors.white,
                                    ),
                                  ),
                                  SizedBox(height: 16.h),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      // Display the image
                                      Container(
                                        padding: EdgeInsets.all(8),
                                        width: 150.w,
                                        height: 150.h,
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                          child: CachedNetworkImage(
                                            fit: BoxFit.fill,
                                            imageUrl: "${Resultpdf}",
                                            placeholder: (context, url) =>
                                                const CupertinoActivityIndicator(),
                                            errorWidget:
                                                (context, url, error) =>
                                                    const Icon(Icons.error),
                                          ),
                                        ),
                                      ),
                                      // Display the download button
                                      CustomElevatedBtn(
                                        onPressed: () {
                                          var splitUrl = Resultpdf.split('/');

                                          //downLoadPdfController.splitUrl(url: Resultpdf);
                                          downLoadPdfController.downloadFile(
                                              Resultpdf, splitUrl[5]);
                                        },
                                        backgroundColor: Colors.grey,
                                        width: 100.w,
                                        height: 40.h,
                                        title: 'Download',
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        )));
  }

  Widget _buildLabelAndField(String label, String text) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildLabel(label),
        Container(
            height: 50.h,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                border: Border.all(color: Colors.black54)),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Text(
                  text,
                  style: TextStyle(
                    fontFamily: 'poppinsSemiBold',
                    fontSize: 14.sp,
                    color: AppColor.txtColorMain,
                  ),
                ),
              ),
            )),
      ],
    );
  }

  Widget _buildExpandableLabelAndField(String label, String text) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildLabel(label),
        GestureDetector(
          onTap: () {
            setState(() {
              isExpanded = !isExpanded;
            });
          },
          child: Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              border: Border.all(color: Colors.black54),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  text,
                  maxLines: isExpanded ? null : 2,
                  overflow:
                      isExpanded ? TextOverflow.visible : TextOverflow.ellipsis,
                  style: TextStyle(
                    fontFamily: 'poppinsSemiBold',
                    fontSize: 14.sp,
                    color: AppColor.txtColorMain,
                  ),
                ),
                if (!isExpanded)
                  Text(
                    'Read more...',
                    style: TextStyle(
                      fontFamily: 'poppinsSemiBold',
                      fontSize: 12.sp,
                      color: AppColor.primarycolor,
                    ),
                  ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildLabel(String text) {
    return Padding(
      padding: EdgeInsets.only(bottom: 8.0),
      child: Text(
        text,
        style: TextStyle(fontFamily: 'poppinsSemiBold', fontSize: 14.sp),
      ),
    );
  }
}
