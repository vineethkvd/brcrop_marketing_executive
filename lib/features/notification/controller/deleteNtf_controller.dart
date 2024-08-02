import 'dart:convert';
import 'package:brcrop_marketing_executive/core/helpers/network/helpers/api_endpoints.dart';
import 'package:brcrop_marketing_executive/core/helpers/network/helpers/base_client.dart';
import 'package:brcrop_marketing_executive/core/helpers/network/helpers/base_controller.dart';
import 'package:brcrop_marketing_executive/features/notification/controller/notification_controller.dart';
import 'package:brcrop_marketing_executive/features/notification/model/notification_model/notification_model.dart';
import 'package:get/get.dart';

class DeleteNotificationController extends GetxController {
  var notificationModel = const NotificationModel().obs;
  var loading = false.obs;
  final NotificationController notificationController =
      NotificationController();

  Future<void> fetchDeleteData({required String notifiId}) async {
    loading.value = true;
    final baseController = BaseController();
    const apiUrl = ApiEndPoints.mainBaseURL + ApiEndPoints.deleteNotification;
    const apiToken = ApiEndPoints.apiToken;
    final requestData = {
      "api_key": apiToken,
      "me_view_id": notifiId,
    };

    print("API URL: $apiUrl");
    print("Request data from delete: $requestData");

    try {
      final baseClient = BaseClient();
      final response = await baseClient.postMethod(apiUrl, requestData);

      if (response == null) {
        throw Exception('Failed to get a response from the server');
      }

      print("Response status code: ${response.statusCode}");
      print("Response body: ${response.body}");

      print("${json.decode(response.body)}");
      if (response.statusCode == 200) {
        final responseData = json.decode(response.body);

        if (responseData['status'] == true) {
          print("Success to deleted Notification");
          notificationController.fetchNotifications();
          print("responsedata:$responseData");
        } else {
          throw Exception(
              'Failed to delete Notification data: Status is false');
        }
      } else if (response.statusCode == 400) {
        final responseData = json.decode(response.body);
        notificationModel.value = NotificationModel.fromJson(responseData);

        if (notificationModel.value.status == false) {
          print(
              "Failed to delete Notification data: ${notificationModel.value.message}");
        } else {
          throw Exception(
              'Failed to delete Notification data: Unexpected status');
        }
      } else {
        throw Exception('Failed to delete Notification data: Unexpected error');
      }
    } catch (error) {
      print("Error: $error");
    } finally {
      loading.value = false;
    }
  }
}
