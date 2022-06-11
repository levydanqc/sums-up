// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transfer.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Transfer _$TransferFromJson(Map<String, dynamic> json) => Transfer(
      date: DateTime.parse(json['date'] as String),
      title: json['title'] as String,
      from: json['from'] as String,
      to: (json['to'] as List<dynamic>).map((e) => e as String).toList(),
      amount: (json['amount'] as num).toDouble(),
      description: json['description'] as String?,
      category: json['category'] as String?,
    )..type = $enumDecode(_$OperationTypesEnumMap, json['type']);

Map<String, dynamic> _$TransferToJson(Transfer instance) => <String, dynamic>{
      'category': instance.category,
      'date': instance.date.toIso8601String(),
      'description': instance.description,
      'title': instance.title,
      'amount': instance.amount,
      'from': instance.from,
      'to': instance.to,
      'type': _$OperationTypesEnumMap[instance.type],
    };

const _$OperationTypesEnumMap = {
  OperationTypes.expense: 'expense',
  OperationTypes.income: 'income',
  OperationTypes.transfer: 'transfer',
};
