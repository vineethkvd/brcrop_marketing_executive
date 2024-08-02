// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'testList_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$soilListModelImpl _$$soilListModelImplFromJson(Map<String, dynamic> json) =>
    _$soilListModelImpl(
      status: json['status'] as bool? ?? false,
      message: json['message'] as String? ?? '',
      soillist: (json['soil_list'] as List<dynamic>?)
              ?.map((e) => Soillist.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$soilListModelImplToJson(_$soilListModelImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'soil_list': instance.soillist,
    };

_$soillistImpl _$$soillistImplFromJson(Map<String, dynamic> json) =>
    _$soillistImpl(
      sampleId: json['sample_id'] as String? ?? '',
      userType: json['user_type'] as String? ?? '',
      userId: json['user_id'] as String? ?? '',
      date: json['sample_date'] as String? ?? '',
      name: json['farmer_name'] as String? ?? '',
      address: json['address'] as String? ?? '',
      mobile: json['mobile'] as String? ?? '',
      sampleName: json['sample_name'] as String? ?? '',
      sampleLocation: json['sample_location'] as String? ?? '',
      region: json['region'] as String? ?? '',
      revenue: json['revenue'] as String? ?? '',
      district: json['district'] as String? ?? '',
      surveyNumber: json['survey_number'] as String? ?? '',
      serviceNumber: json['service_number'] as String? ?? '',
      fertillzerWell: json['fertillzer_well'] as String? ?? '',
      stableCrop: json['stable_crop'] as String? ?? '',
      cropName: json['crop_name'] as String? ?? '',
      examinerName: json['examiner_name'] as String? ?? '',
      image: json['sample_image'] as String? ?? '',
      testType: json['test_type'] as String? ?? '',
      sampleSent: json['sample_sent'] as String? ?? '',
      remarks: json['sample_remarks'] as String? ?? '',
      result: json['sample_results'] as String? ?? '',
    );

Map<String, dynamic> _$$soillistImplToJson(_$soillistImpl instance) =>
    <String, dynamic>{
      'sample_id': instance.sampleId,
      'user_type': instance.userType,
      'user_id': instance.userId,
      'sample_date': instance.date,
      'farmer_name': instance.name,
      'address': instance.address,
      'mobile': instance.mobile,
      'sample_name': instance.sampleName,
      'sample_location': instance.sampleLocation,
      'region': instance.region,
      'revenue': instance.revenue,
      'district': instance.district,
      'survey_number': instance.surveyNumber,
      'service_number': instance.serviceNumber,
      'fertillzer_well': instance.fertillzerWell,
      'stable_crop': instance.stableCrop,
      'crop_name': instance.cropName,
      'examiner_name': instance.examinerName,
      'sample_image': instance.image,
      'test_type': instance.testType,
      'sample_sent': instance.sampleSent,
      'sample_remarks': instance.remarks,
      'sample_results': instance.result,
    };
