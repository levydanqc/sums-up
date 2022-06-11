import 'package:sums_up/models/operation.dart';
import 'package:sums_up/models/operation_types.dart';

class Tranfer implements Operation {
  @override
  OperationTypes type = OperationTypes.transfer;

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

  Tranfer({
    required this.date,
    required this.title,
    required this.from,
    required this.to,
    required this.amount,
    this.description,
    this.category,
  });
}
