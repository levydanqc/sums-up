import 'package:sums_up/models/operation.dart';
import 'package:sums_up/models/operation_types.dart';

class Expense implements Operation {
  @override
  OperationTypes type = OperationTypes.expense;

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

  Expense({
    required this.date,
    required this.title,
    required this.from,
    required this.to,
    required this.amount,
    this.description,
    this.category,
  });
}
