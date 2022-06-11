import 'package:json_annotation/json_annotation.dart';
import 'package:sums_up/models/operations/operation.dart';
import 'package:sums_up/models/operations/operation_types.dart';

part 'transfer.g.dart';

@JsonSerializable(explicitToJson: true)
class Transfer implements Operation {
  Transfer({
    required this.date,
    required this.title,
    required this.from,
    required this.to,
    required this.amount,
    this.description,
    this.category,
  });

  factory Transfer.fromJson(Map<String, Object?> json) =>
      _$TransferFromJson(json);

  @override
  Map<String, Object?> toJson() => _$TransferToJson(this);

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
  OperationTypes get type => OperationTypes.transfer;

  @override
  set type(OperationTypes type) {
    return;
  }
}
