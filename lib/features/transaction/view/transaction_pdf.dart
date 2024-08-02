import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:syncfusion_flutter_pdf/pdf.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';
import '../../../core/utils/configs/styles/colors.dart';
import '../../invoice/controller/download_pdf_controller.dart';


class ViewTransactionPdfScreen extends StatefulWidget {
  final String url;
  const ViewTransactionPdfScreen({super.key, required this.url});

  @override
  State<ViewTransactionPdfScreen> createState() => _ViewTransactionPdfScreenState();
}

class _ViewTransactionPdfScreenState extends State<ViewTransactionPdfScreen> {
  final DownLoadPdfController downLoadPdfController=Get.put(DownLoadPdfController());
  @override
  Widget build(BuildContext context) {
    print(widget.url);
    return Container(
      color: AppColor.primarycolor,
      child: SafeArea(
        child: Scaffold(
            appBar: AppBar(
              automaticallyImplyLeading: false,
              backgroundColor: AppColor.primarycolor,
              actions: [
                IconButton(
                  onPressed: () {
                    var splitUrl=widget.url.split('/');

                    // downLoadPdfController.splitUrl(url: widget.url);
                    downLoadPdfController.downloadFile(widget.url,splitUrl[5]);
                  },
                  icon: const Icon(Icons.download, color: Colors.white),
                )

              ],
              title: Text(
                'Statement',
                style: TextStyle(
                    fontSize: 18.sp,
                    color: Colors.white,
                    fontFamily: "poppinsBold"),
              ),
              centerTitle: true,
              leading: IconButton(
                  onPressed: () {
                    Get.back();
                  },
                  icon: const Icon(
                    CupertinoIcons.back,
                    color: Colors.white,
                  )),
            ),
            body: Container(
              color: Colors.white,
              child: SfPdfViewer.network(widget.url),
            )
        ),
      ),
    );
  }
}
