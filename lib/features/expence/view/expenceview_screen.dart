import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../core/utils/configs/styles/colors.dart';
import '../model/expence_list_model/expence_list_model.dart';

class ExpenseViewScreen extends StatelessWidget {
  final ExpenseList data;

  const ExpenseViewScreen({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    // Use the received data to display specific information
    // You can access data.expStatementNo to identify the specific data
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: AppColor.primarycolor,
        title: Text(
          'Expense Details',
          style: TextStyle(
            fontSize: 18.sp,
            color: Colors.white,
            fontFamily: "poppinsBold",
          ),
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: const Icon(
            Icons.arrow_back_ios_new,
            color: Colors.white,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 20.w, horizontal: 15.sp),
          child: Column(
            children: [
              _viewDetails(label: "Name:", value: data.name ?? ""),
              _viewDetails(
                  label: "Expense Statement No:",
                  value: data.exp_statement_no ?? ""),
              _viewDetails(label: "Desination:", value: data.des_name ?? ""),
              _viewDetails(
                  label: "Head Quarters:", value: data.head_quarters ?? ""),
              _viewDetails(
                  label: "period From:", value: data.period_from ?? ""),
              _viewDetails(label: "Period To:", value: data.period_to ?? ""),
              _viewDetails(
                  label: "Departure Station:",
                  value: data.departure_station ?? ""),
              _viewDetails(
                  label: "Area Covered:", value: data.area_covered ?? ""),
              _viewDetails(
                  label: "Openeing Kms:", value: data.opening_kms ?? ""),
              _viewDetails(
                  label: "Closing Kms:", value: data.closing_kms ?? ""),
              _viewDetails(label: "Total kms:", value: data.total_kms ?? ""),
              _viewDetails(
                  label: "Petrol Charge per km:",
                  value: data.petrol_chrg_per_km ?? ""),
              _viewDetails(label: "No. of Kms:", value: data.no_of_kms ?? ""),
              _viewDetails(
                  label: "Total Petrol Charges:",
                  value: data.total_petrol_charges ?? ""),
              _viewDetails(
                  label: "Food Charges per day:",
                  value: data.food_charges_per_day ?? ""),
              _viewDetails(
                  label: "Food Charge Days:",
                  value: data.food_charge_days ?? ""),
              _viewDetails(
                  label: "Total Food Charges:",
                  value: data.total_food_charges ?? ""),
              _viewDetails(
                  label: "DA Charges per day:",
                  value: data.beta_charge_days ?? ""),
              _viewDetails(
                  label: "DA Charge Days:", value: data.beta_charge_days ?? ""),
              _viewDetails(
                  label: "Total DA Charges:",
                  value: data.total_beta_charges ?? ""),
              _viewDetails(
                  label: "Stay Charge per day:",
                  value: data.stay_chrg_per_day ?? ""),
              _viewDetails(
                  label: "Stay Charges Days:",
                  value: data.stay_charges_days ?? ""),
              _viewDetails(
                  label: "Total Stay Charges:",
                  value: data.total_stay_charges ?? ""),
              _viewDetails(
                  label: "Travel Charge per day:",
                  value: data.travel_charges_days ?? ""),
              _viewDetails(
                  label: "Travel Charges Days:",
                  value: data.travel_chrg_per_day ?? ""),
              _viewDetails(
                  label: "Total Travel Charges:",
                  value: data.total_travel_charges ?? ""),
              _viewDetails(
                  label: "Other Charge:", value: data.other_chrg ?? ""),
              _viewDetails(
                  label: "Total Claim:", value: data.total_claim ?? ""),
              _viewDetails(
                  label: "Advance Received:",
                  value: data.advance_received ?? ""),
              _viewDetails(
                  label: "Reimbursement Amount:", value: data.reim_amt ?? ""),
              _viewDetails(label: "Creation Date:", value: data.creat_dt ?? ""),
              _viewDetails(label: "ME ID:", value: data.me_id ?? ""),
              //_viewDetails(label: 'Status:', value: '', status: data.status),
            ],
          ),
        ),
      ),
    );
  }

  Widget _viewDetails({
    required String label,
    required String value,
    String? status,
  }) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                label,
                style: TextStyle(
                  fontSize: 13.sp,
                  color: AppColor.txtColorMain,
                  fontFamily: "poppinsRegular",
                ),
              ),
              SizedBox(width: 20.w),
              if (label == 'Status' && status != null)
                _getStatusText(status)
              else
                Flexible(
                  child: Text(
                    value,
                    style: TextStyle(
                      fontSize: 13.sp,
                      color: Colors.black,
                      fontFamily: "poppinsSemiBold",
                    ),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 5,
                  ),
                ),
            ],
          ),
          SizedBox(height: 8.w),
          const Divider(
            thickness: 1,
            color: AppColor.secondarycolor,
          ),
        ],
      ),
    );
  }

  Widget _getStatusText(String? status) {
    Color textColor;
    String statusText;

    switch (status) {
      case '0':
        textColor = Colors.yellow;
        statusText = 'Pending';
        break;
      case '1':
        textColor = AppColor.primarycolor;
        statusText = 'Approved';
        break;
      case '2':
        textColor = Colors.red;
        statusText = 'Rejected';
        break;
      default:
        textColor = Colors.black; // Default color if status is not recognized
        statusText = 'Unknown';
    }

    return Text(
      statusText,
      style: TextStyle(
        fontSize: 12.sp,
        color: textColor,
        fontFamily: "poppinsbold",
      ),
    );
  }
}
