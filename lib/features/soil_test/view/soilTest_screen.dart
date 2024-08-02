import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

import '../../../core/utils/configs/styles/colors.dart';
import '../../../core/utils/shared/components/widgets/custom_buttons.dart';
import '../../../core/utils/shared/components/widgets/custom_textfield.dart';

import '../../auth/login/repository/validator.dart';
import '../controller/soilTest_controller.dart';

class SoilTestScreen extends StatefulWidget {
  @override
  _SoilTestScreenState createState() => _SoilTestScreenState();
}

class _SoilTestScreenState extends State<SoilTestScreen> {
  final _formKey = GlobalKey<FormState>();

  final SoilTestController _soilTestController = Get.put(SoilTestController());

  @override
  void initState() {
    super.initState();
    _soilTestController.formatDate(); // Call formatDate() here
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: AppColor.primarycolor,
        centerTitle: true,
        title: Text(
          'Soil test form',
          style: TextStyle(fontFamily: 'poppinsSemiBold', color: Colors.white),
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
              child: Form(
        key: _formKey,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                child: SizedBox(
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Expanded(child: _buildLabel('Name')),
                            Padding(
                              padding: EdgeInsets.symmetric(vertical: 10.h),
                              child: Container(
                                height: 30.h,
                                width: 100.w,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5.0),
                                    border: Border.all(color: Colors.black54)),
                                child: Align(
                                    alignment: Alignment.centerLeft,
                                    child: Padding(
                                        padding:
                                            const EdgeInsets.only(left: 10),
                                        child: Obx(
                                          () => Text(
                                              _soilTestController
                                                  .presentDate.value,
                                              style: TextStyle(
                                                  fontSize: 13.sp,
                                                  color: AppColor.txtColorMain,
                                                  fontFamily:
                                                      "poppinsRegular")),
                                        ))),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 10.h),
                        CustomTextField1(
                          controller: _soilTestController.nameController.value,
                          hintText: "Enter Farmer's name",
                          validator: (value) =>
                              Validator.validateInput(input: value),
                        ),
                        SizedBox(height: 16.h),
                        _buildLabelAndField(
                          'Address',
                          "Address",
                          _soilTestController.addressController.value,
                          validator: (value) =>
                              Validator.validateInput(input: value),
                        ),
                        SizedBox(height: 16.h),
                        _buildLabelAndField(
                          'Phone',
                          "Phone Number",
                          _soilTestController.phoneController.value,
                          validator: (value) =>
                              Validator.validateInput(input: value),
                        ),
                        SizedBox(height: 16.h),
                        _buildLabelAndField(
                          'Sample Name',
                          "Name of the sample ",
                          _soilTestController.SampleNameController.value,
                          validator: (value) =>
                              Validator.validateInput(input: value),
                        ),
                        SizedBox(height: 16.h),
                        _buildLabelAndField(
                          'Sample Location',
                          "Location of sample collection",
                          _soilTestController.sampleLocationController.value,
                          validator: (value) =>
                              Validator.validateInput(input: value),
                        ),
                        SizedBox(height: 16.h),
                        _buildLabelAndField(
                          'Revenue',
                          "Name of the village revenue",
                          _soilTestController.revenueController.value,
                          validator: (value) =>
                              Validator.validateInput(input: value),
                        ),
                        SizedBox(height: 16.h),
                        _buildLabelAndField(
                          'Region',
                          "region does it belong to",
                          _soilTestController.regionController.value,
                          validator: (value) =>
                              Validator.validateInput(input: value),
                        ),
                        SizedBox(height: 16.h),
                        _buildLabelAndField(
                          'District',
                          "Name District",
                          _soilTestController.districtController.value,
                          validator: (value) =>
                              Validator.validateInput(input: value),
                        ),
                        SizedBox(height: 16.h),
                        _buildLabelAndField(
                          'Survey Number',
                          "Survey number",
                          _soilTestController.surveyNumController.value,
                          validator: (value) =>
                              Validator.validateInput(input: value),
                        ),
                        SizedBox(height: 16.h),
                        _buildLabelAndField(
                          'Service number',
                          "EB Service service number",
                          _soilTestController.serviceNumController.value,
                          validator: (value) =>
                              Validator.validateInput(input: value),
                        ),
                        SizedBox(height: 16.h),
                        _buildLabelAndField(
                          'Fertilizer well, channel',
                          "type of fertilizer well, channel",
                          _soilTestController.fertilizerController.value,
                          validator: (value) =>
                              Validator.validateInput(input: value),
                        ),
                        SizedBox(height: 16.h),
                        _buildLabelAndField(
                          'Stable crop',
                          "Stable crop",
                          _soilTestController.cropController.value,
                          validator: (value) =>
                              Validator.validateInput(input: value),
                        ),
                        SizedBox(height: 16.h),
                        _buildLabelAndField(
                          'Crop Name',
                          "The crop's name that is going to be planted",
                          _soilTestController.cropNameController.value,
                          validator: (value) =>
                              Validator.validateInput(input: value),
                        ),
                        SizedBox(height: 16.h),
                        _buildLabelAndField(
                          "Examiner's name",
                          "name of the one who carried out the examination",
                          _soilTestController.examinerNameController.value,
                          validator: (value) =>
                              Validator.validateInput(input: value),
                        ),
                        SizedBox(height: 16.h),
                        _buildLabel("Test Type"),
                        Obx(() => DropdownButtonFormField<String>(
                              value: _soilTestController.selectedTestType.value,
                              decoration: InputDecoration(
                                  contentPadding:
                                      const EdgeInsets.fromLTRB(13, 10, 5, 10),
                                  fillColor: Colors.white,
                                  filled: true,
                                  hintText: 'Gender',
                                  hintStyle: TextStyle(
                                    fontSize: 13.sp,
                                    color: AppColor.txtColorMain,
                                    fontFamily: "poppinsMedium",
                                  ),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: const BorderSide(
                                        color: AppColor.txtColorMain,
                                        width: 1.5),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                      borderSide: const BorderSide(
                                          color: AppColor.primarycolor,
                                          width: 1.5))),
                              items: const [
                                DropdownMenuItem(
                                  child: Text('Soil'),
                                  value: 'soil',
                                ),
                                DropdownMenuItem(
                                  child: Text('Water'),
                                  value: 'water',
                                ),
                              ],
                              onChanged: (value) {
                                _soilTestController.selectedTestType.value =
                                    value!;
                              },
                            )),
                        SizedBox(height: 16.h),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 16.h),
                            Row(
                              children: [
                                _buildLabel('Attach Image'),
                                SizedBox(
                                  width: 10.w,
                                ),
                              ],
                            ),
                            _buildImagePicker(
                              _soilTestController.sampleImage,
                              'Choose Image',
                              (pickedImage) {
                                _soilTestController.sampleImage.value =
                                    pickedImage;
                              },
                            ),
                            SizedBox(height: 16.h),
                            _buildLabelAndField(
                              'Sample Sent Via',
                              ' Courier Details/Marketing Agent Name',
                              _soilTestController.sampleSentController.value,
                              validator: (value) =>
                                  Validator.validateInput(input: value),
                            ),
                            SizedBox(height: 16.h),
                            _buildLabelAndField(
                              'Remarks',
                              ' Remarks',
                              _soilTestController.remarkController.value,
                              validator: (value) =>
                                  Validator.validateInput(input: value),
                            ),
                            SizedBox(height: 16.h),
                            Center(
                              child: CustomElevatedBtn(
                                onPressed: _registerTest,
                                backgroundColor: AppColor.primarycolor,
                                width: 100.w,
                                height: 40.h,
                                title: 'Submit',
                                txtColor: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ]),
                ),
              ),
              Container(
                width: double.infinity,
                height: 175.h,
                color: AppColor.primarycolor,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: 16.h),
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.white),
                        borderRadius: BorderRadius.circular(1),
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(20),
                        child: Text(
                          'Awaiting results',
                          style: TextStyle(
                              fontFamily: 'poppinsSemiBold',
                              fontSize: 14.sp,
                              color: Colors.white),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ))),
    );
  }

  Widget _buildLabelAndField(
      String label, String hinttext, TextEditingController controller,
      {bool obscureText = false, FormFieldValidator<String>? validator}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildLabel(label),
        CustomTextField1(
          controller: controller,
          hintText: 'Enter $hinttext',
          obscureText: obscureText,
          validator: validator,
        ),
      ],
    );
  }

  Widget _buildImagePicker(
    Rx<XFile?> file,
    String hintText,
    Function(XFile) onPicked,
  ) {
    return GestureDetector(
      behavior: HitTestBehavior.translucent,
      onTap: () async {
        final pickedImage =
            await ImagePicker().pickImage(source: ImageSource.gallery);
        if (pickedImage != null) {
          onPicked(pickedImage);
        }
      },
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.white),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child: Container(
            width: 200.w,
            height: 150,
            child: Center(
              child: Obx(() {
                final currentFile = file.value;
                return currentFile == null
                    ? Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(
                            Icons.image,
                            size: 40,
                            color: AppColor.primarycolor,
                          ),
                          Text(
                            hintText,
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              color: AppColor.primarycolor,
                              fontFamily: 'poppinsSemiBold',
                            ),
                          ),
                        ],
                      )
                    : Image.file(
                        File(currentFile.path),
                        fit: BoxFit.cover,
                      );
              }),
            ),
          ),
        ),
      ),
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

  void _registerTest() {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();

      _soilTestController.registerTest(
        sampleName: _soilTestController.SampleNameController.value.text,
        date: _soilTestController.getCurrentDate(),
        name: _soilTestController.nameController.value.text,
        address: _soilTestController.addressController.value.text,
        phone: _soilTestController.phoneController.value.text,
        sampleLocation: _soilTestController.sampleLocationController.value.text,
        revenue: _soilTestController.revenueController.value.text,
        region: _soilTestController.regionController.value.text,
        district: _soilTestController.districtController.value.text,
        serviceNumber: _soilTestController.serviceNumController.value.text,
        surveyNumber: _soilTestController.surveyNumController.value.text,
        fertilizer: _soilTestController.fertilizerController.value.text,
        stableCrop: _soilTestController.cropController.value.text,
        cropName: _soilTestController.cropNameController.value.text,
        examinerName: _soilTestController.examinerNameController.value.text,
        testType: _soilTestController.selectedTestType.value,
        remark: _soilTestController.remarkController.value.text,
        sampleSent: _soilTestController.sampleSentController.value.text,
        sampleImage: _soilTestController.sampleImage.value != null
            ? PickedFile(_soilTestController.sampleImage.value!.path)
            : null,
      );
    }
  }
}
