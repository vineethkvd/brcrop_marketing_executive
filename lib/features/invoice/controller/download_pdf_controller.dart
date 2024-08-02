import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:path_provider/path_provider.dart';
import 'package:http/http.dart' as http;
import 'dart:io';
import 'package:flutter/material.dart';
import '../../../core/utils/configs/styles/colors.dart';

class DownLoadPdfController extends GetxController {
  // Future<void> splitUrl({required String url})async{
  //   var invoice =url;
  //   var parts = invoice.split('_');
  //   print(parts);
  // }
  Future<void> downloadFile(String url, String filename) async {
    print(url);
    var status = await Permission.storage.status;
    print("status$status");
    if (status.isDenied) {
      if (await Permission.storage.request().isGranted) {
        var filePath = await _getFilePath(filename);
        var response = await http.get(Uri.parse(url));
        var file = File(filePath);
        await file.writeAsBytes(response.bodyBytes);
        Get.defaultDialog(
          title: 'Download Completed',
          textConfirm: 'Ok',
          middleTextStyle: TextStyle(
            fontSize: 13.sp,
            color: AppColor.txtColorMain,
            fontFamily: "poppinsRegular",
          ),
          middleText: 'The file has been saved to $filePath.',
          titleStyle: TextStyle(
            fontSize: 16.sp,
            color: AppColor.txtColorMain,
            fontFamily: "poppinsSemiBold",
          ),
          buttonColor: AppColor.appMainColor,
          radius: 10.0,
          onConfirm: () {
            Get.back();
          },
        );


      }
    } else if (status.isPermanentlyDenied) {
      openAppSettings();
    } else if (status.isGranted) {
      var filePath = await _getFilePath(filename);
      var response = await http.get(Uri.parse(url));
      var file = File(filePath);
      await file.writeAsBytes(response.bodyBytes);
      Get.dialog(
        AlertDialog(
          title: Text('Download Completed'),
          content: Text('The file has been saved to $filePath.'),
          actions: [
            TextButton(
              child: Text('OK'),
              onPressed: () {
                Get.back();
              },
            ),
          ],
        ),
      );
    }
  }



  Future<String> _getFilePath(String filename) async {
    Directory? dir;
    try {
      if (Platform.isIOS) {
        dir = await getApplicationDocumentsDirectory(); // for iOS
      } else {
        dir = Directory('/storage/emulated/0/Download/'); // for android
        if (!await dir.exists()) dir = (await getExternalStorageDirectory())!;
      }
    } catch (err) {
      print("Cannot get download folder path $err");
    }
    return "${dir?.path}/$filename";
  }
}
