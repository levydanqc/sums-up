import 'package:json_annotation/json_annotation.dart';
import 'package:sums_up/models/operations/operation_types.dart';
import 'package:sums_up/models/operations/transfer.dart';

import 'expense.dart';
import 'income.dart';

@JsonSerializable(
    explicitToJson: true, createToJson: false, createFactory: false)
abstract class Operation {
  late String title;

  late String? description;

  late String from;

  late List<String> to;

  late double amount;

  late DateTime date;

  late String? category;

  late final OperationTypes type;

  Operation();

  factory Operation.fromJson(Map<String, Object?> json) {
    switch (json['type']) {
      case OperationTypes.expense:
        return Expense.fromJson(json);
      case OperationTypes.income:
        return Income.fromJson(json);
      default:
        return Transfer.fromJson(json);
    }
  }

  Map<String, Object?> toJson();
}
