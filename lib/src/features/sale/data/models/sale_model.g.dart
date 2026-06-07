// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sale_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CreateSaleRequest _$CreateSaleRequestFromJson(Map<String, dynamic> json) =>
    _CreateSaleRequest(
      fuelPriceId: json['fuelPriceId'] as String,
      customerId: json['customerId'] as String,
      pumpId: json['pumpId'] as String,
      amount: (json['amount'] as num).toDouble(),
      usePointsDiscount: json['usePointsDiscount'] as bool? ?? false,
      discount: (json['discount'] as num?)?.toDouble() ?? 0,
    );

Map<String, dynamic> _$CreateSaleRequestToJson(_CreateSaleRequest instance) =>
    <String, dynamic>{
      'fuelPriceId': instance.fuelPriceId,
      'customerId': instance.customerId,
      'pumpId': instance.pumpId,
      'amount': instance.amount,
      'usePointsDiscount': instance.usePointsDiscount,
      'discount': instance.discount,
    };

_CardInitializeResponse _$CardInitializeResponseFromJson(
        Map<String, dynamic> json) =>
    _CardInitializeResponse(
      authorizationUrl: json['authorizationUrl'] as String? ?? '',
      accessCode: json['accessCode'] as String? ?? '',
      reference: json['reference'] as String? ?? '',
    );

Map<String, dynamic> _$CardInitializeResponseToJson(
        _CardInitializeResponse instance) =>
    <String, dynamic>{
      'authorizationUrl': instance.authorizationUrl,
      'accessCode': instance.accessCode,
      'reference': instance.reference,
    };

_MomoChargeRequest _$MomoChargeRequestFromJson(Map<String, dynamic> json) =>
    _MomoChargeRequest(
      phone: json['phone'] as String,
      provider: json['provider'] as String,
    );

Map<String, dynamic> _$MomoChargeRequestToJson(_MomoChargeRequest instance) =>
    <String, dynamic>{
      'phone': instance.phone,
      'provider': instance.provider,
    };
