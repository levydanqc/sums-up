import 'package:json_annotation/json_annotation.dart';
import 'package:sums_up/models/operations/operation.dart';
import 'package:sums_up/models/operations/operation_types.dart';

part 'income.g.dart';

@JsonSerializable(explicitToJson: true)
class Income implements Operation {
  Income({
    required this.date,
    required this.title,
    required this.from,
    required this.to,
    required this.amount,
    this.description,
    this.category,
  });

  factory Income.fromJson(Map<String, Object?> json) => _$IncomeFromJson(json);

  @override
  Map<String, Object?> toJson() => _$IncomeToJson(this);

  @override
  String? category;

  @override
  DateTime date;

  @override
  String? description;

  @override
  String title;

  @override
  double amount;

  @override
  String from;

  @override
  List<String> to;

  @override
  OperationTypes get type => OperationTypes.income;

  @override
  set type(OperationTypes type) {
    return;
  }
}
