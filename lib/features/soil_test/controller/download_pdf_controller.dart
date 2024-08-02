import 'package:permission_handler/permission_handler.dart';
import 'package:path_provider/path_provider.dart';
import 'package:http/http.dart' as http;
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../core/utils/configs/styles/colors.dart';

class DownLoadPdfController extends GetxController {
  Future<void> downloadFile(String url, String filename) async {
    print(url);

    // Request storage permission
    var status = await Permission.storage.status;
    if (status.isDenied || status.isPermanentlyDenied) {
      status = await Permission.storage.request();
    }

    // Proceed if permission is granted
    if (status.isGranted) {
      try {
        var filePath = await _getFilePath(filename);
        var response = await http.get(Uri.parse(url));
        if (response.statusCode == 200) {
          var file = File(filePath);
          await file.writeAsBytes(response.bodyBytes);
          _showDownloadDialog(filePath);
        } else {
          Get.snackbar('Error', 'Failed to download file.');
        }
      } catch (e) {
        Get.snackbar('Error', 'An error occurred: $e');
      }
    } else if (status.isPermanentlyDenied) {
      openAppSettings();
    } else {
      Get.snackbar('Permission Denied',
          'Storage permission is required to download files.',
          backgroundColor: Colors.red);
    }
  }

  Future<String> _getFilePath(String filename) async {
    Directory? dir;
    if (Platform.isIOS) {
      dir = await getApplicationDocumentsDirectory();
    } else if (Platform.isAndroid) {
      dir = await getExternalStorageDirectory();
    }
    return "${dir?.path}/$filename";
  }

  void _showDownloadDialog(String filePath) {
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
}
