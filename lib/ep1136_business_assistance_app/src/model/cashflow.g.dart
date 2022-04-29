// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cashflow.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Cashflow _$$_CashflowFromJson(Map<String, dynamic> json) => _$_Cashflow(
      title: json['title'] as String?,
      price: json['price'] as String?,
    );

Map<String, dynamic> _$$_CashflowToJson(_$_Cashflow instance) =>
    <String, dynamic>{
      'title': instance.title,
      'price': instance.price,
    };

_$_CashFlowItems _$$_CashFlowItemsFromJson(Map<String, dynamic> json) =>
    _$_CashFlowItems(
      items: (json['items'] as List<dynamic>?)
              ?.map((e) => Cashflow.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_CashFlowItemsToJson(_$_CashFlowItems instance) =>
    <String, dynamic>{
      'items': instance.items,
    };
