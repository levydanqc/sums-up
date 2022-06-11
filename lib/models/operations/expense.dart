import 'package:json_annotation/json_annotation.dart';
import 'package:sums_up/models/operations/operation.dart';
import 'package:sums_up/models/operations/operation_types.dart';

part 'expense.g.dart';

@JsonSerializable(explicitToJson: true)
class Expense implements Operation {
  Expense({
    required this.date,
    required this.title,
    required this.from,
    required this.to,
    required this.amount,
    this.description,
    this.category,
  }) : super();

  factory Expense.fromJson(Map<String, Object?> json) =>
      _$ExpenseFromJson(json);

  @override
  Map<String, Object?> toJson() => _$ExpenseToJson(this);

  @override
  double amount;

  @override
  String? category;

  @override
  DateTime date;

  @override
  String? description;

  @override
  String from;

  @override
  String title;

  @override
  List<String> to;

  @override
  OperationTypes get type => OperationTypes.expense;

  @override
  set type(OperationTypes type) {
    return;
  }
}
