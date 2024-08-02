class LoginModel {
  String? status;
  String? message;
  Data? data;

  LoginModel({this.status, this.message, this.data});

  LoginModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    data = json['data'] != null ? new Data.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    data['message'] = this.message;
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    return data;
  }
}

class Data {
  String? empId;
  String? empUniqueId;
  String? empName;
  String? empMobile;
  String? empEmail;
  String? empState;
  String? empDistrict;
  String? empDistrictCode;
  String? empUserName;
  String? empPass;
  String? empAreaManager;
  String? empType;
  String? empDesignation;
  String? empStatus;
  String? empCreateDt;

  Data(
      {this.empId,
        this.empUniqueId,
        this.empName,
        this.empMobile,
        this.empEmail,
        this.empState,
        this.empDistrict,
        this.empDistrictCode,
        this.empUserName,
        this.empPass,
        this.empAreaManager,
        this.empType,
        this.empDesignation,
        this.empStatus,
        this.empCreateDt});

  Data.fromJson(Map<String, dynamic> json) {
    empId = json['emp_id'];
    empUniqueId = json['emp_unique_id'];
    empName = json['emp_name'];
    empMobile = json['emp_mobile'];
    empEmail = json['emp_email'];
    empState = json['emp_state'];
    empDistrict = json['emp_district'];
    empDistrictCode = json['emp_district_code'];
    empUserName = json['emp_user_name'];
    empPass = json['emp_pass'];
    empAreaManager = json['emp_area_manager'];
    empType = json['emp_type'];
    empDesignation = json['emp_designation'];
    empStatus = json['emp_status'];
    empCreateDt = json['emp_create_dt'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['emp_id'] = this.empId;
    data['emp_unique_id'] = this.empUniqueId;
    data['emp_name'] = this.empName;
    data['emp_mobile'] = this.empMobile;
    data['emp_email'] = this.empEmail;
    data['emp_state'] = this.empState;
    data['emp_district'] = this.empDistrict;
    data['emp_district_code'] = this.empDistrictCode;
    data['emp_user_name'] = this.empUserName;
    data['emp_pass'] = this.empPass;
    data['emp_area_manager'] = this.empAreaManager;
    data['emp_type'] = this.empType;
    data['emp_designation'] = this.empDesignation;
    data['emp_status'] = this.empStatus;
    data['emp_create_dt'] = this.empCreateDt;
    return data;
  }
}
