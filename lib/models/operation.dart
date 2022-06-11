import 'package:sums_up/models/operation_types.dart';

abstract class Operation {
  late OperationTypes type;

  late String title;

  late String? description;

  late String from;

  late List<String> to;

  late double amount;

  late DateTime date;

  late String? category;
}
