// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'testList_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SoilListModel _$SoilListModelFromJson(Map<String, dynamic> json) {
  return _soilListModel.fromJson(json);
}

/// @nodoc
mixin _$SoilListModel {
  @JsonKey(name: 'status')
  bool? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'message')
  String? get message => throw _privateConstructorUsedError;
  @JsonKey(name: 'soil_list')
  List<Soillist>? get soillist => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SoilListModelCopyWith<SoilListModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SoilListModelCopyWith<$Res> {
  factory $SoilListModelCopyWith(
          SoilListModel value, $Res Function(SoilListModel) then) =
      _$SoilListModelCopyWithImpl<$Res, SoilListModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'status') bool? status,
      @JsonKey(name: 'message') String? message,
      @JsonKey(name: 'soil_list') List<Soillist>? soillist});
}

/// @nodoc
class _$SoilListModelCopyWithImpl<$Res, $Val extends SoilListModel>
    implements $SoilListModelCopyWith<$Res> {
  _$SoilListModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? soillist = freezed,
  }) {
    return _then(_value.copyWith(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      soillist: freezed == soillist
          ? _value.soillist
          : soillist // ignore: cast_nullable_to_non_nullable
              as List<Soillist>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$soilListModelImplCopyWith<$Res>
    implements $SoilListModelCopyWith<$Res> {
  factory _$$soilListModelImplCopyWith(
          _$soilListModelImpl value, $Res Function(_$soilListModelImpl) then) =
      __$$soilListModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'status') bool? status,
      @JsonKey(name: 'message') String? message,
      @JsonKey(name: 'soil_list') List<Soillist>? soillist});
}

/// @nodoc
class __$$soilListModelImplCopyWithImpl<$Res>
    extends _$SoilListModelCopyWithImpl<$Res, _$soilListModelImpl>
    implements _$$soilListModelImplCopyWith<$Res> {
  __$$soilListModelImplCopyWithImpl(
      _$soilListModelImpl _value, $Res Function(_$soilListModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? soillist = freezed,
  }) {
    return _then(_$soilListModelImpl(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      soillist: freezed == soillist
          ? _value._soillist
          : soillist // ignore: cast_nullable_to_non_nullable
              as List<Soillist>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$soilListModelImpl implements _soilListModel {
  const _$soilListModelImpl(
      {@JsonKey(name: 'status') this.status = false,
      @JsonKey(name: 'message') this.message = '',
      @JsonKey(name: 'soil_list') final List<Soillist>? soillist = const []})
      : _soillist = soillist;

  factory _$soilListModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$soilListModelImplFromJson(json);

  @override
  @JsonKey(name: 'status')
  final bool? status;
  @override
  @JsonKey(name: 'message')
  final String? message;
  final List<Soillist>? _soillist;
  @override
  @JsonKey(name: 'soil_list')
  List<Soillist>? get soillist {
    final value = _soillist;
    if (value == null) return null;
    if (_soillist is EqualUnmodifiableListView) return _soillist;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'SoilListModel(status: $status, message: $message, soillist: $soillist)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$soilListModelImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other._soillist, _soillist));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, status, message,
      const DeepCollectionEquality().hash(_soillist));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$soilListModelImplCopyWith<_$soilListModelImpl> get copyWith =>
      __$$soilListModelImplCopyWithImpl<_$soilListModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$soilListModelImplToJson(
      this,
    );
  }
}

abstract class _soilListModel implements SoilListModel {
  const factory _soilListModel(
          {@JsonKey(name: 'status') final bool? status,
          @JsonKey(name: 'message') final String? message,
          @JsonKey(name: 'soil_list') final List<Soillist>? soillist}) =
      _$soilListModelImpl;

  factory _soilListModel.fromJson(Map<String, dynamic> json) =
      _$soilListModelImpl.fromJson;

  @override
  @JsonKey(name: 'status')
  bool? get status;
  @override
  @JsonKey(name: 'message')
  String? get message;
  @override
  @JsonKey(name: 'soil_list')
  List<Soillist>? get soillist;
  @override
  @JsonKey(ignore: true)
  _$$soilListModelImplCopyWith<_$soilListModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Soillist _$SoillistFromJson(Map<String, dynamic> json) {
  return _soillist.fromJson(json);
}

/// @nodoc
mixin _$Soillist {
  @JsonKey(name: 'sample_id')
  String? get sampleId => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_type')
  String? get userType => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_id')
  String? get userId => throw _privateConstructorUsedError;
  @JsonKey(name: 'sample_date')
  String? get date => throw _privateConstructorUsedError;
  @JsonKey(name: 'farmer_name')
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'address')
  String? get address => throw _privateConstructorUsedError;
  @JsonKey(name: 'mobile')
  String? get mobile => throw _privateConstructorUsedError;
  @JsonKey(name: 'sample_name')
  String? get sampleName => throw _privateConstructorUsedError;
  @JsonKey(name: 'sample_location')
  String? get sampleLocation => throw _privateConstructorUsedError;
  @JsonKey(name: 'region')
  String? get region => throw _privateConstructorUsedError;
  @JsonKey(name: 'revenue')
  String? get revenue => throw _privateConstructorUsedError;
  @JsonKey(name: 'district')
  String? get district => throw _privateConstructorUsedError;
  @JsonKey(name: 'survey_number')
  String? get surveyNumber => throw _privateConstructorUsedError;
  @JsonKey(name: 'service_number')
  String? get serviceNumber => throw _privateConstructorUsedError;
  @JsonKey(name: 'fertillzer_well')
  String? get fertillzerWell => throw _privateConstructorUsedError;
  @JsonKey(name: 'stable_crop')
  String? get stableCrop => throw _privateConstructorUsedError;
  @JsonKey(name: 'crop_name')
  String? get cropName => throw _privateConstructorUsedError;
  @JsonKey(name: 'examiner_name')
  String? get examinerName => throw _privateConstructorUsedError;
  @JsonKey(name: 'sample_image')
  String? get image => throw _privateConstructorUsedError;
  @JsonKey(name: 'test_type')
  String? get testType => throw _privateConstructorUsedError;
  @JsonKey(name: 'sample_sent')
  String? get sampleSent => throw _privateConstructorUsedError;
  @JsonKey(name: 'sample_remarks')
  String? get remarks => throw _privateConstructorUsedError;
  @JsonKey(name: 'sample_results')
  String? get result => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SoillistCopyWith<Soillist> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SoillistCopyWith<$Res> {
  factory $SoillistCopyWith(Soillist value, $Res Function(Soillist) then) =
      _$SoillistCopyWithImpl<$Res, Soillist>;
  @useResult
  $Res call(
      {@JsonKey(name: 'sample_id') String? sampleId,
      @JsonKey(name: 'user_type') String? userType,
      @JsonKey(name: 'user_id') String? userId,
      @JsonKey(name: 'sample_date') String? date,
      @JsonKey(name: 'farmer_name') String? name,
      @JsonKey(name: 'address') String? address,
      @JsonKey(name: 'mobile') String? mobile,
      @JsonKey(name: 'sample_name') String? sampleName,
      @JsonKey(name: 'sample_location') String? sampleLocation,
      @JsonKey(name: 'region') String? region,
      @JsonKey(name: 'revenue') String? revenue,
      @JsonKey(name: 'district') String? district,
      @JsonKey(name: 'survey_number') String? surveyNumber,
      @JsonKey(name: 'service_number') String? serviceNumber,
      @JsonKey(name: 'fertillzer_well') String? fertillzerWell,
      @JsonKey(name: 'stable_crop') String? stableCrop,
      @JsonKey(name: 'crop_name') String? cropName,
      @JsonKey(name: 'examiner_name') String? examinerName,
      @JsonKey(name: 'sample_image') String? image,
      @JsonKey(name: 'test_type') String? testType,
      @JsonKey(name: 'sample_sent') String? sampleSent,
      @JsonKey(name: 'sample_remarks') String? remarks,
      @JsonKey(name: 'sample_results') String? result});
}

/// @nodoc
class _$SoillistCopyWithImpl<$Res, $Val extends Soillist>
    implements $SoillistCopyWith<$Res> {
  _$SoillistCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sampleId = freezed,
    Object? userType = freezed,
    Object? userId = freezed,
    Object? date = freezed,
    Object? name = freezed,
    Object? address = freezed,
    Object? mobile = freezed,
    Object? sampleName = freezed,
    Object? sampleLocation = freezed,
    Object? region = freezed,
    Object? revenue = freezed,
    Object? district = freezed,
    Object? surveyNumber = freezed,
    Object? serviceNumber = freezed,
    Object? fertillzerWell = freezed,
    Object? stableCrop = freezed,
    Object? cropName = freezed,
    Object? examinerName = freezed,
    Object? image = freezed,
    Object? testType = freezed,
    Object? sampleSent = freezed,
    Object? remarks = freezed,
    Object? result = freezed,
  }) {
    return _then(_value.copyWith(
      sampleId: freezed == sampleId
          ? _value.sampleId
          : sampleId // ignore: cast_nullable_to_non_nullable
              as String?,
      userType: freezed == userType
          ? _value.userType
          : userType // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      mobile: freezed == mobile
          ? _value.mobile
          : mobile // ignore: cast_nullable_to_non_nullable
              as String?,
      sampleName: freezed == sampleName
          ? _value.sampleName
          : sampleName // ignore: cast_nullable_to_non_nullable
              as String?,
      sampleLocation: freezed == sampleLocation
          ? _value.sampleLocation
          : sampleLocation // ignore: cast_nullable_to_non_nullable
              as String?,
      region: freezed == region
          ? _value.region
          : region // ignore: cast_nullable_to_non_nullable
              as String?,
      revenue: freezed == revenue
          ? _value.revenue
          : revenue // ignore: cast_nullable_to_non_nullable
              as String?,
      district: freezed == district
          ? _value.district
          : district // ignore: cast_nullable_to_non_nullable
              as String?,
      surveyNumber: freezed == surveyNumber
          ? _value.surveyNumber
          : surveyNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      serviceNumber: freezed == serviceNumber
          ? _value.serviceNumber
          : serviceNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      fertillzerWell: freezed == fertillzerWell
          ? _value.fertillzerWell
          : fertillzerWell // ignore: cast_nullable_to_non_nullable
              as String?,
      stableCrop: freezed == stableCrop
          ? _value.stableCrop
          : stableCrop // ignore: cast_nullable_to_non_nullable
              as String?,
      cropName: freezed == cropName
          ? _value.cropName
          : cropName // ignore: cast_nullable_to_non_nullable
              as String?,
      examinerName: freezed == examinerName
          ? _value.examinerName
          : examinerName // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      testType: freezed == testType
          ? _value.testType
          : testType // ignore: cast_nullable_to_non_nullable
              as String?,
      sampleSent: freezed == sampleSent
          ? _value.sampleSent
          : sampleSent // ignore: cast_nullable_to_non_nullable
              as String?,
      remarks: freezed == remarks
          ? _value.remarks
          : remarks // ignore: cast_nullable_to_non_nullable
              as String?,
      result: freezed == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$soillistImplCopyWith<$Res>
    implements $SoillistCopyWith<$Res> {
  factory _$$soillistImplCopyWith(
          _$soillistImpl value, $Res Function(_$soillistImpl) then) =
      __$$soillistImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'sample_id') String? sampleId,
      @JsonKey(name: 'user_type') String? userType,
      @JsonKey(name: 'user_id') String? userId,
      @JsonKey(name: 'sample_date') String? date,
      @JsonKey(name: 'farmer_name') String? name,
      @JsonKey(name: 'address') String? address,
      @JsonKey(name: 'mobile') String? mobile,
      @JsonKey(name: 'sample_name') String? sampleName,
      @JsonKey(name: 'sample_location') String? sampleLocation,
      @JsonKey(name: 'region') String? region,
      @JsonKey(name: 'revenue') String? revenue,
      @JsonKey(name: 'district') String? district,
      @JsonKey(name: 'survey_number') String? surveyNumber,
      @JsonKey(name: 'service_number') String? serviceNumber,
      @JsonKey(name: 'fertillzer_well') String? fertillzerWell,
      @JsonKey(name: 'stable_crop') String? stableCrop,
      @JsonKey(name: 'crop_name') String? cropName,
      @JsonKey(name: 'examiner_name') String? examinerName,
      @JsonKey(name: 'sample_image') String? image,
      @JsonKey(name: 'test_type') String? testType,
      @JsonKey(name: 'sample_sent') String? sampleSent,
      @JsonKey(name: 'sample_remarks') String? remarks,
      @JsonKey(name: 'sample_results') String? result});
}

/// @nodoc
class __$$soillistImplCopyWithImpl<$Res>
    extends _$SoillistCopyWithImpl<$Res, _$soillistImpl>
    implements _$$soillistImplCopyWith<$Res> {
  __$$soillistImplCopyWithImpl(
      _$soillistImpl _value, $Res Function(_$soillistImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sampleId = freezed,
    Object? userType = freezed,
    Object? userId = freezed,
    Object? date = freezed,
    Object? name = freezed,
    Object? address = freezed,
    Object? mobile = freezed,
    Object? sampleName = freezed,
    Object? sampleLocation = freezed,
    Object? region = freezed,
    Object? revenue = freezed,
    Object? district = freezed,
    Object? surveyNumber = freezed,
    Object? serviceNumber = freezed,
    Object? fertillzerWell = freezed,
    Object? stableCrop = freezed,
    Object? cropName = freezed,
    Object? examinerName = freezed,
    Object? image = freezed,
    Object? testType = freezed,
    Object? sampleSent = freezed,
    Object? remarks = freezed,
    Object? result = freezed,
  }) {
    return _then(_$soillistImpl(
      sampleId: freezed == sampleId
          ? _value.sampleId
          : sampleId // ignore: cast_nullable_to_non_nullable
              as String?,
      userType: freezed == userType
          ? _value.userType
          : userType // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      mobile: freezed == mobile
          ? _value.mobile
          : mobile // ignore: cast_nullable_to_non_nullable
              as String?,
      sampleName: freezed == sampleName
          ? _value.sampleName
          : sampleName // ignore: cast_nullable_to_non_nullable
              as String?,
      sampleLocation: freezed == sampleLocation
          ? _value.sampleLocation
          : sampleLocation // ignore: cast_nullable_to_non_nullable
              as String?,
      region: freezed == region
          ? _value.region
          : region // ignore: cast_nullable_to_non_nullable
              as String?,
      revenue: freezed == revenue
          ? _value.revenue
          : revenue // ignore: cast_nullable_to_non_nullable
              as String?,
      district: freezed == district
          ? _value.district
          : district // ignore: cast_nullable_to_non_nullable
              as String?,
      surveyNumber: freezed == surveyNumber
          ? _value.surveyNumber
          : surveyNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      serviceNumber: freezed == serviceNumber
          ? _value.serviceNumber
          : serviceNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      fertillzerWell: freezed == fertillzerWell
          ? _value.fertillzerWell
          : fertillzerWell // ignore: cast_nullable_to_non_nullable
              as String?,
      stableCrop: freezed == stableCrop
          ? _value.stableCrop
          : stableCrop // ignore: cast_nullable_to_non_nullable
              as String?,
      cropName: freezed == cropName
          ? _value.cropName
          : cropName // ignore: cast_nullable_to_non_nullable
              as String?,
      examinerName: freezed == examinerName
          ? _value.examinerName
          : examinerName // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      testType: freezed == testType
          ? _value.testType
          : testType // ignore: cast_nullable_to_non_nullable
              as String?,
      sampleSent: freezed == sampleSent
          ? _value.sampleSent
          : sampleSent // ignore: cast_nullable_to_non_nullable
              as String?,
      remarks: freezed == remarks
          ? _value.remarks
          : remarks // ignore: cast_nullable_to_non_nullable
              as String?,
      result: freezed == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$soillistImpl implements _soillist {
  const _$soillistImpl(
      {@JsonKey(name: 'sample_id') this.sampleId = '',
      @JsonKey(name: 'user_type') this.userType = '',
      @JsonKey(name: 'user_id') this.userId = '',
      @JsonKey(name: 'sample_date') this.date = '',
      @JsonKey(name: 'farmer_name') this.name = '',
      @JsonKey(name: 'address') this.address = '',
      @JsonKey(name: 'mobile') this.mobile = '',
      @JsonKey(name: 'sample_name') this.sampleName = '',
      @JsonKey(name: 'sample_location') this.sampleLocation = '',
      @JsonKey(name: 'region') this.region = '',
      @JsonKey(name: 'revenue') this.revenue = '',
      @JsonKey(name: 'district') this.district = '',
      @JsonKey(name: 'survey_number') this.surveyNumber = '',
      @JsonKey(name: 'service_number') this.serviceNumber = '',
      @JsonKey(name: 'fertillzer_well') this.fertillzerWell = '',
      @JsonKey(name: 'stable_crop') this.stableCrop = '',
      @JsonKey(name: 'crop_name') this.cropName = '',
      @JsonKey(name: 'examiner_name') this.examinerName = '',
      @JsonKey(name: 'sample_image') this.image = '',
      @JsonKey(name: 'test_type') this.testType = '',
      @JsonKey(name: 'sample_sent') this.sampleSent = '',
      @JsonKey(name: 'sample_remarks') this.remarks = '',
      @JsonKey(name: 'sample_results') this.result = ''});

  factory _$soillistImpl.fromJson(Map<String, dynamic> json) =>
      _$$soillistImplFromJson(json);

  @override
  @JsonKey(name: 'sample_id')
  final String? sampleId;
  @override
  @JsonKey(name: 'user_type')
  final String? userType;
  @override
  @JsonKey(name: 'user_id')
  final String? userId;
  @override
  @JsonKey(name: 'sample_date')
  final String? date;
  @override
  @JsonKey(name: 'farmer_name')
  final String? name;
  @override
  @JsonKey(name: 'address')
  final String? address;
  @override
  @JsonKey(name: 'mobile')
  final String? mobile;
  @override
  @JsonKey(name: 'sample_name')
  final String? sampleName;
  @override
  @JsonKey(name: 'sample_location')
  final String? sampleLocation;
  @override
  @JsonKey(name: 'region')
  final String? region;
  @override
  @JsonKey(name: 'revenue')
  final String? revenue;
  @override
  @JsonKey(name: 'district')
  final String? district;
  @override
  @JsonKey(name: 'survey_number')
  final String? surveyNumber;
  @override
  @JsonKey(name: 'service_number')
  final String? serviceNumber;
  @override
  @JsonKey(name: 'fertillzer_well')
  final String? fertillzerWell;
  @override
  @JsonKey(name: 'stable_crop')
  final String? stableCrop;
  @override
  @JsonKey(name: 'crop_name')
  final String? cropName;
  @override
  @JsonKey(name: 'examiner_name')
  final String? examinerName;
  @override
  @JsonKey(name: 'sample_image')
  final String? image;
  @override
  @JsonKey(name: 'test_type')
  final String? testType;
  @override
  @JsonKey(name: 'sample_sent')
  final String? sampleSent;
  @override
  @JsonKey(name: 'sample_remarks')
  final String? remarks;
  @override
  @JsonKey(name: 'sample_results')
  final String? result;

  @override
  String toString() {
    return 'Soillist(sampleId: $sampleId, userType: $userType, userId: $userId, date: $date, name: $name, address: $address, mobile: $mobile, sampleName: $sampleName, sampleLocation: $sampleLocation, region: $region, revenue: $revenue, district: $district, surveyNumber: $surveyNumber, serviceNumber: $serviceNumber, fertillzerWell: $fertillzerWell, stableCrop: $stableCrop, cropName: $cropName, examinerName: $examinerName, image: $image, testType: $testType, sampleSent: $sampleSent, remarks: $remarks, result: $result)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$soillistImpl &&
            (identical(other.sampleId, sampleId) ||
                other.sampleId == sampleId) &&
            (identical(other.userType, userType) ||
                other.userType == userType) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.mobile, mobile) || other.mobile == mobile) &&
            (identical(other.sampleName, sampleName) ||
                other.sampleName == sampleName) &&
            (identical(other.sampleLocation, sampleLocation) ||
                other.sampleLocation == sampleLocation) &&
            (identical(other.region, region) || other.region == region) &&
            (identical(other.revenue, revenue) || other.revenue == revenue) &&
            (identical(other.district, district) ||
                other.district == district) &&
            (identical(other.surveyNumber, surveyNumber) ||
                other.surveyNumber == surveyNumber) &&
            (identical(other.serviceNumber, serviceNumber) ||
                other.serviceNumber == serviceNumber) &&
            (identical(other.fertillzerWell, fertillzerWell) ||
                other.fertillzerWell == fertillzerWell) &&
            (identical(other.stableCrop, stableCrop) ||
                other.stableCrop == stableCrop) &&
            (identical(other.cropName, cropName) ||
                other.cropName == cropName) &&
            (identical(other.examinerName, examinerName) ||
                other.examinerName == examinerName) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.testType, testType) ||
                other.testType == testType) &&
            (identical(other.sampleSent, sampleSent) ||
                other.sampleSent == sampleSent) &&
            (identical(other.remarks, remarks) || other.remarks == remarks) &&
            (identical(other.result, result) || other.result == result));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        sampleId,
        userType,
        userId,
        date,
        name,
        address,
        mobile,
        sampleName,
        sampleLocation,
        region,
        revenue,
        district,
        surveyNumber,
        serviceNumber,
        fertillzerWell,
        stableCrop,
        cropName,
        examinerName,
        image,
        testType,
        sampleSent,
        remarks,
        result
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$soillistImplCopyWith<_$soillistImpl> get copyWith =>
      __$$soillistImplCopyWithImpl<_$soillistImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$soillistImplToJson(
      this,
    );
  }
}

abstract class _soillist implements Soillist {
  const factory _soillist(
      {@JsonKey(name: 'sample_id') final String? sampleId,
      @JsonKey(name: 'user_type') final String? userType,
      @JsonKey(name: 'user_id') final String? userId,
      @JsonKey(name: 'sample_date') final String? date,
      @JsonKey(name: 'farmer_name') final String? name,
      @JsonKey(name: 'address') final String? address,
      @JsonKey(name: 'mobile') final String? mobile,
      @JsonKey(name: 'sample_name') final String? sampleName,
      @JsonKey(name: 'sample_location') final String? sampleLocation,
      @JsonKey(name: 'region') final String? region,
      @JsonKey(name: 'revenue') final String? revenue,
      @JsonKey(name: 'district') final String? district,
      @JsonKey(name: 'survey_number') final String? surveyNumber,
      @JsonKey(name: 'service_number') final String? serviceNumber,
      @JsonKey(name: 'fertillzer_well') final String? fertillzerWell,
      @JsonKey(name: 'stable_crop') final String? stableCrop,
      @JsonKey(name: 'crop_name') final String? cropName,
      @JsonKey(name: 'examiner_name') final String? examinerName,
      @JsonKey(name: 'sample_image') final String? image,
      @JsonKey(name: 'test_type') final String? testType,
      @JsonKey(name: 'sample_sent') final String? sampleSent,
      @JsonKey(name: 'sample_remarks') final String? remarks,
      @JsonKey(name: 'sample_results') final String? result}) = _$soillistImpl;

  factory _soillist.fromJson(Map<String, dynamic> json) =
      _$soillistImpl.fromJson;

  @override
  @JsonKey(name: 'sample_id')
  String? get sampleId;
  @override
  @JsonKey(name: 'user_type')
  String? get userType;
  @override
  @JsonKey(name: 'user_id')
  String? get userId;
  @override
  @JsonKey(name: 'sample_date')
  String? get date;
  @override
  @JsonKey(name: 'farmer_name')
  String? get name;
  @override
  @JsonKey(name: 'address')
  String? get address;
  @override
  @JsonKey(name: 'mobile')
  String? get mobile;
  @override
  @JsonKey(name: 'sample_name')
  String? get sampleName;
  @override
  @JsonKey(name: 'sample_location')
  String? get sampleLocation;
  @override
  @JsonKey(name: 'region')
  String? get region;
  @override
  @JsonKey(name: 'revenue')
  String? get revenue;
  @override
  @JsonKey(name: 'district')
  String? get district;
  @override
  @JsonKey(name: 'survey_number')
  String? get surveyNumber;
  @override
  @JsonKey(name: 'service_number')
  String? get serviceNumber;
  @override
  @JsonKey(name: 'fertillzer_well')
  String? get fertillzerWell;
  @override
  @JsonKey(name: 'stable_crop')
  String? get stableCrop;
  @override
  @JsonKey(name: 'crop_name')
  String? get cropName;
  @override
  @JsonKey(name: 'examiner_name')
  String? get examinerName;
  @override
  @JsonKey(name: 'sample_image')
  String? get image;
  @override
  @JsonKey(name: 'test_type')
  String? get testType;
  @override
  @JsonKey(name: 'sample_sent')
  String? get sampleSent;
  @override
  @JsonKey(name: 'sample_remarks')
  String? get remarks;
  @override
  @JsonKey(name: 'sample_results')
  String? get result;
  @override
  @JsonKey(ignore: true)
  _$$soillistImplCopyWith<_$soillistImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
