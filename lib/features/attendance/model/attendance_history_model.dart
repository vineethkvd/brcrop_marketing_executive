class AttendanceHistoryModel {
  bool? status;
  String? message;
  List<AttendanceHistory>? attendanceHistory;

  AttendanceHistoryModel({this.status, this.message, this.attendanceHistory});

  AttendanceHistoryModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    if (json['Attendance History'] != null) {
      attendanceHistory = <AttendanceHistory>[];
      json['Attendance History'].forEach((v) {
        attendanceHistory!.add(new AttendanceHistory.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    data['message'] = this.message;
    if (this.attendanceHistory != null) {
      data['Attendance History'] =
          this.attendanceHistory!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class AttendanceHistory {
  String? attId;
  String? empId;
  String? date;
  String? startTime;
  String? endTime;
  String? totalHrs;
  String? empLocation;
  String? empLatit;
  String? empLong;
  String? attCreatAt;

  AttendanceHistory(
      {this.attId,
        this.empId,
        this.date,
        this.startTime,
        this.endTime,
        this.totalHrs,
        this.empLocation,
        this.empLatit,
        this.empLong,
        this.attCreatAt});

  AttendanceHistory.fromJson(Map<String, dynamic> json) {
    attId = json['att_id'];
    empId = json['emp_id'];
    date = json['date'];
    startTime = json['start_time'];
    endTime = json['end_time'];
    totalHrs = json['total_hrs'];
    empLocation = json['emp_location'];
    empLatit = json['emp_latit'];
    empLong = json['emp_long'];
    attCreatAt = json['att_creat_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['att_id'] = this.attId;
    data['emp_id'] = this.empId;
    data['date'] = this.date;
    data['start_time'] = this.startTime;
    data['end_time'] = this.endTime;
    data['total_hrs'] = this.totalHrs;
    data['emp_location'] = this.empLocation;
    data['emp_latit'] = this.empLatit;
    data['emp_long'] = this.empLong;
    data['att_creat_at'] = this.attCreatAt;
    return data;
  }
}
