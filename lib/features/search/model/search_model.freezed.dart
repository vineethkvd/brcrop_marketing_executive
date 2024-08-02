// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SearchModel _$SearchModelFromJson(Map<String, dynamic> json) {
  return _SearchModel.fromJson(json);
}

/// @nodoc
mixin _$SearchModel {
  @JsonKey(name: "status")
  bool? get status => throw _privateConstructorUsedError;
  @JsonKey(name: "Search_Result")
  List<Data>? get searchResult => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SearchModelCopyWith<SearchModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchModelCopyWith<$Res> {
  factory $SearchModelCopyWith(
          SearchModel value, $Res Function(SearchModel) then) =
      _$SearchModelCopyWithImpl<$Res, SearchModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "status") bool? status,
      @JsonKey(name: "Search_Result") List<Data>? searchResult});
}

/// @nodoc
class _$SearchModelCopyWithImpl<$Res, $Val extends SearchModel>
    implements $SearchModelCopyWith<$Res> {
  _$SearchModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? searchResult = freezed,
  }) {
    return _then(_value.copyWith(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool?,
      searchResult: freezed == searchResult
          ? _value.searchResult
          : searchResult // ignore: cast_nullable_to_non_nullable
              as List<Data>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SearchModelImplCopyWith<$Res>
    implements $SearchModelCopyWith<$Res> {
  factory _$$SearchModelImplCopyWith(
          _$SearchModelImpl value, $Res Function(_$SearchModelImpl) then) =
      __$$SearchModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "status") bool? status,
      @JsonKey(name: "Search_Result") List<Data>? searchResult});
}

/// @nodoc
class __$$SearchModelImplCopyWithImpl<$Res>
    extends _$SearchModelCopyWithImpl<$Res, _$SearchModelImpl>
    implements _$$SearchModelImplCopyWith<$Res> {
  __$$SearchModelImplCopyWithImpl(
      _$SearchModelImpl _value, $Res Function(_$SearchModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? searchResult = freezed,
  }) {
    return _then(_$SearchModelImpl(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool?,
      searchResult: freezed == searchResult
          ? _value._searchResult
          : searchResult // ignore: cast_nullable_to_non_nullable
              as List<Data>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SearchModelImpl implements _SearchModel {
  const _$SearchModelImpl(
      {@JsonKey(name: "status") this.status = false,
      @JsonKey(name: "Search_Result")
      final List<Data>? searchResult = const []})
      : _searchResult = searchResult;

  factory _$SearchModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SearchModelImplFromJson(json);

  @override
  @JsonKey(name: "status")
  final bool? status;
  final List<Data>? _searchResult;
  @override
  @JsonKey(name: "Search_Result")
  List<Data>? get searchResult {
    final value = _searchResult;
    if (value == null) return null;
    if (_searchResult is EqualUnmodifiableListView) return _searchResult;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'SearchModel(status: $status, searchResult: $searchResult)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchModelImpl &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality()
                .equals(other._searchResult, _searchResult));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, status, const DeepCollectionEquality().hash(_searchResult));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchModelImplCopyWith<_$SearchModelImpl> get copyWith =>
      __$$SearchModelImplCopyWithImpl<_$SearchModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SearchModelImplToJson(
      this,
    );
  }
}

abstract class _SearchModel implements SearchModel {
  const factory _SearchModel(
          {@JsonKey(name: "status") final bool? status,
          @JsonKey(name: "Search_Result") final List<Data>? searchResult}) =
      _$SearchModelImpl;

  factory _SearchModel.fromJson(Map<String, dynamic> json) =
      _$SearchModelImpl.fromJson;

  @override
  @JsonKey(name: "status")
  bool? get status;
  @override
  @JsonKey(name: "Search_Result")
  List<Data>? get searchResult;
  @override
  @JsonKey(ignore: true)
  _$$SearchModelImplCopyWith<_$SearchModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Data _$DataFromJson(Map<String, dynamic> json) {
  return _Data.fromJson(json);
}

/// @nodoc
mixin _$Data {
  @JsonKey(name: "pro_id")
  String? get proId => throw _privateConstructorUsedError;
  @JsonKey(name: "product_name")
  String? get productName => throw _privateConstructorUsedError;
  @JsonKey(name: "pro_unique_id")
  String? get proUniqueId => throw _privateConstructorUsedError;
  @JsonKey(name: "category_id")
  String? get categoryId => throw _privateConstructorUsedError;
  @JsonKey(name: "category_name")
  String? get categoryName => throw _privateConstructorUsedError;
  @JsonKey(name: "description")
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: "pro_price")
  String? get proPrice => throw _privateConstructorUsedError;
  @JsonKey(name: "pro_packing")
  String? get proPacking => throw _privateConstructorUsedError;
  @JsonKey(name: "pro_packing_size")
  String? get proPackingSize => throw _privateConstructorUsedError;
  @JsonKey(name: "credit_days")
  String? get creditDays => throw _privateConstructorUsedError;
  @JsonKey(name: "create_dt")
  String? get createDt => throw _privateConstructorUsedError;
  @JsonKey(name: "pro_img")
  String? get proImg => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataCopyWith<Data> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataCopyWith<$Res> {
  factory $DataCopyWith(Data value, $Res Function(Data) then) =
      _$DataCopyWithImpl<$Res, Data>;
  @useResult
  $Res call(
      {@JsonKey(name: "pro_id") String? proId,
      @JsonKey(name: "product_name") String? productName,
      @JsonKey(name: "pro_unique_id") String? proUniqueId,
      @JsonKey(name: "category_id") String? categoryId,
      @JsonKey(name: "category_name") String? categoryName,
      @JsonKey(name: "description") String? description,
      @JsonKey(name: "pro_price") String? proPrice,
      @JsonKey(name: "pro_packing") String? proPacking,
      @JsonKey(name: "pro_packing_size") String? proPackingSize,
      @JsonKey(name: "credit_days") String? creditDays,
      @JsonKey(name: "create_dt") String? createDt,
      @JsonKey(name: "pro_img") String? proImg});
}

/// @nodoc
class _$DataCopyWithImpl<$Res, $Val extends Data>
    implements $DataCopyWith<$Res> {
  _$DataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? proId = freezed,
    Object? productName = freezed,
    Object? proUniqueId = freezed,
    Object? categoryId = freezed,
    Object? categoryName = freezed,
    Object? description = freezed,
    Object? proPrice = freezed,
    Object? proPacking = freezed,
    Object? proPackingSize = freezed,
    Object? creditDays = freezed,
    Object? createDt = freezed,
    Object? proImg = freezed,
  }) {
    return _then(_value.copyWith(
      proId: freezed == proId
          ? _value.proId
          : proId // ignore: cast_nullable_to_non_nullable
              as String?,
      productName: freezed == productName
          ? _value.productName
          : productName // ignore: cast_nullable_to_non_nullable
              as String?,
      proUniqueId: freezed == proUniqueId
          ? _value.proUniqueId
          : proUniqueId // ignore: cast_nullable_to_non_nullable
              as String?,
      categoryId: freezed == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as String?,
      categoryName: freezed == categoryName
          ? _value.categoryName
          : categoryName // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      proPrice: freezed == proPrice
          ? _value.proPrice
          : proPrice // ignore: cast_nullable_to_non_nullable
              as String?,
      proPacking: freezed == proPacking
          ? _value.proPacking
          : proPacking // ignore: cast_nullable_to_non_nullable
              as String?,
      proPackingSize: freezed == proPackingSize
          ? _value.proPackingSize
          : proPackingSize // ignore: cast_nullable_to_non_nullable
              as String?,
      creditDays: freezed == creditDays
          ? _value.creditDays
          : creditDays // ignore: cast_nullable_to_non_nullable
              as String?,
      createDt: freezed == createDt
          ? _value.createDt
          : createDt // ignore: cast_nullable_to_non_nullable
              as String?,
      proImg: freezed == proImg
          ? _value.proImg
          : proImg // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DataImplCopyWith<$Res> implements $DataCopyWith<$Res> {
  factory _$$DataImplCopyWith(
          _$DataImpl value, $Res Function(_$DataImpl) then) =
      __$$DataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "pro_id") String? proId,
      @JsonKey(name: "product_name") String? productName,
      @JsonKey(name: "pro_unique_id") String? proUniqueId,
      @JsonKey(name: "category_id") String? categoryId,
      @JsonKey(name: "category_name") String? categoryName,
      @JsonKey(name: "description") String? description,
      @JsonKey(name: "pro_price") String? proPrice,
      @JsonKey(name: "pro_packing") String? proPacking,
      @JsonKey(name: "pro_packing_size") String? proPackingSize,
      @JsonKey(name: "credit_days") String? creditDays,
      @JsonKey(name: "create_dt") String? createDt,
      @JsonKey(name: "pro_img") String? proImg});
}

/// @nodoc
class __$$DataImplCopyWithImpl<$Res>
    extends _$DataCopyWithImpl<$Res, _$DataImpl>
    implements _$$DataImplCopyWith<$Res> {
  __$$DataImplCopyWithImpl(_$DataImpl _value, $Res Function(_$DataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? proId = freezed,
    Object? productName = freezed,
    Object? proUniqueId = freezed,
    Object? categoryId = freezed,
    Object? categoryName = freezed,
    Object? description = freezed,
    Object? proPrice = freezed,
    Object? proPacking = freezed,
    Object? proPackingSize = freezed,
    Object? creditDays = freezed,
    Object? createDt = freezed,
    Object? proImg = freezed,
  }) {
    return _then(_$DataImpl(
      proId: freezed == proId
          ? _value.proId
          : proId // ignore: cast_nullable_to_non_nullable
              as String?,
      productName: freezed == productName
          ? _value.productName
          : productName // ignore: cast_nullable_to_non_nullable
              as String?,
      proUniqueId: freezed == proUniqueId
          ? _value.proUniqueId
          : proUniqueId // ignore: cast_nullable_to_non_nullable
              as String?,
      categoryId: freezed == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as String?,
      categoryName: freezed == categoryName
          ? _value.categoryName
          : categoryName // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      proPrice: freezed == proPrice
          ? _value.proPrice
          : proPrice // ignore: cast_nullable_to_non_nullable
              as String?,
      proPacking: freezed == proPacking
          ? _value.proPacking
          : proPacking // ignore: cast_nullable_to_non_nullable
              as String?,
      proPackingSize: freezed == proPackingSize
          ? _value.proPackingSize
          : proPackingSize // ignore: cast_nullable_to_non_nullable
              as String?,
      creditDays: freezed == creditDays
          ? _value.creditDays
          : creditDays // ignore: cast_nullable_to_non_nullable
              as String?,
      createDt: freezed == createDt
          ? _value.createDt
          : createDt // ignore: cast_nullable_to_non_nullable
              as String?,
      proImg: freezed == proImg
          ? _value.proImg
          : proImg // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DataImpl implements _Data {
  const _$DataImpl(
      {@JsonKey(name: "pro_id") this.proId = '',
      @JsonKey(name: "product_name") this.productName = '',
      @JsonKey(name: "pro_unique_id") this.proUniqueId = '',
      @JsonKey(name: "category_id") this.categoryId = '',
      @JsonKey(name: "category_name") this.categoryName = '',
      @JsonKey(name: "description") this.description = '',
      @JsonKey(name: "pro_price") this.proPrice = '',
      @JsonKey(name: "pro_packing") this.proPacking = '',
      @JsonKey(name: "pro_packing_size") this.proPackingSize = '',
      @JsonKey(name: "credit_days") this.creditDays = '',
      @JsonKey(name: "create_dt") this.createDt = '',
      @JsonKey(name: "pro_img") this.proImg = ''});

  factory _$DataImpl.fromJson(Map<String, dynamic> json) =>
      _$$DataImplFromJson(json);

  @override
  @JsonKey(name: "pro_id")
  final String? proId;
  @override
  @JsonKey(name: "product_name")
  final String? productName;
  @override
  @JsonKey(name: "pro_unique_id")
  final String? proUniqueId;
  @override
  @JsonKey(name: "category_id")
  final String? categoryId;
  @override
  @JsonKey(name: "category_name")
  final String? categoryName;
  @override
  @JsonKey(name: "description")
  final String? description;
  @override
  @JsonKey(name: "pro_price")
  final String? proPrice;
  @override
  @JsonKey(name: "pro_packing")
  final String? proPacking;
  @override
  @JsonKey(name: "pro_packing_size")
  final String? proPackingSize;
  @override
  @JsonKey(name: "credit_days")
  final String? creditDays;
  @override
  @JsonKey(name: "create_dt")
  final String? createDt;
  @override
  @JsonKey(name: "pro_img")
  final String? proImg;

  @override
  String toString() {
    return 'Data(proId: $proId, productName: $productName, proUniqueId: $proUniqueId, categoryId: $categoryId, categoryName: $categoryName, description: $description, proPrice: $proPrice, proPacking: $proPacking, proPackingSize: $proPackingSize, creditDays: $creditDays, createDt: $createDt, proImg: $proImg)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataImpl &&
            (identical(other.proId, proId) || other.proId == proId) &&
            (identical(other.productName, productName) ||
                other.productName == productName) &&
            (identical(other.proUniqueId, proUniqueId) ||
                other.proUniqueId == proUniqueId) &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId) &&
            (identical(other.categoryName, categoryName) ||
                other.categoryName == categoryName) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.proPrice, proPrice) ||
                other.proPrice == proPrice) &&
            (identical(other.proPacking, proPacking) ||
                other.proPacking == proPacking) &&
            (identical(other.proPackingSize, proPackingSize) ||
                other.proPackingSize == proPackingSize) &&
            (identical(other.creditDays, creditDays) ||
                other.creditDays == creditDays) &&
            (identical(other.createDt, createDt) ||
                other.createDt == createDt) &&
            (identical(other.proImg, proImg) || other.proImg == proImg));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      proId,
      productName,
      proUniqueId,
      categoryId,
      categoryName,
      description,
      proPrice,
      proPacking,
      proPackingSize,
      creditDays,
      createDt,
      proImg);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DataImplCopyWith<_$DataImpl> get copyWith =>
      __$$DataImplCopyWithImpl<_$DataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DataImplToJson(
      this,
    );
  }
}

abstract class _Data implements Data {
  const factory _Data(
      {@JsonKey(name: "pro_id") final String? proId,
      @JsonKey(name: "product_name") final String? productName,
      @JsonKey(name: "pro_unique_id") final String? proUniqueId,
      @JsonKey(name: "category_id") final String? categoryId,
      @JsonKey(name: "category_name") final String? categoryName,
      @JsonKey(name: "description") final String? description,
      @JsonKey(name: "pro_price") final String? proPrice,
      @JsonKey(name: "pro_packing") final String? proPacking,
      @JsonKey(name: "pro_packing_size") final String? proPackingSize,
      @JsonKey(name: "credit_days") final String? creditDays,
      @JsonKey(name: "create_dt") final String? createDt,
      @JsonKey(name: "pro_img") final String? proImg}) = _$DataImpl;

  factory _Data.fromJson(Map<String, dynamic> json) = _$DataImpl.fromJson;

  @override
  @JsonKey(name: "pro_id")
  String? get proId;
  @override
  @JsonKey(name: "product_name")
  String? get productName;
  @override
  @JsonKey(name: "pro_unique_id")
  String? get proUniqueId;
  @override
  @JsonKey(name: "category_id")
  String? get categoryId;
  @override
  @JsonKey(name: "category_name")
  String? get categoryName;
  @override
  @JsonKey(name: "description")
  String? get description;
  @override
  @JsonKey(name: "pro_price")
  String? get proPrice;
  @override
  @JsonKey(name: "pro_packing")
  String? get proPacking;
  @override
  @JsonKey(name: "pro_packing_size")
  String? get proPackingSize;
  @override
  @JsonKey(name: "credit_days")
  String? get creditDays;
  @override
  @JsonKey(name: "create_dt")
  String? get createDt;
  @override
  @JsonKey(name: "pro_img")
  String? get proImg;
  @override
  @JsonKey(ignore: true)
  _$$DataImplCopyWith<_$DataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
