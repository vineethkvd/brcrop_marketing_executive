// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TransactionModelImpl _$$TransactionModelImplFromJson(
        Map<String, dynamic> json) =>
    _$TransactionModelImpl(
      status: json['status'] as bool? ?? false,
      message: json['message'] as String? ?? '',
      data: (json['data'] as List<dynamic>?)
              ?.map((e) => Data.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$TransactionModelImplToJson(
        _$TransactionModelImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
    };

_$DataImpl _$$DataImplFromJson(Map<String, dynamic> json) => _$DataImpl(
      ledgId: json['ledg_id'] as String? ?? '',
      dealerId: json['dealer_id'] as String? ?? '',
      meId: json['me_id'] as String? ?? '',
      ledgPdf: json['ledg_pdf'] as String? ?? '',
      createDate: json['create_date'] as String? ?? '',
      dName: json['d_name'] as String? ?? '',
    );

Map<String, dynamic> _$$DataImplToJson(_$DataImpl instance) =>
    <String, dynamic>{
      'ledg_id': instance.ledgId,
      'dealer_id': instance.dealerId,
      'me_id': instance.meId,
      'ledg_pdf': instance.ledgPdf,
      'create_date': instance.createDate,
      'd_name': instance.dName,
    };
