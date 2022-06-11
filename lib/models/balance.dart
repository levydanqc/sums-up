import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cloud_firestore_odm/cloud_firestore_odm.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:sums_up/models/operations/operation.dart';

part 'balance.g.dart';

@JsonSerializable(explicitToJson: true)
class Balance {
  String title;
  List<String> users;
  List<Operation> operations;

  Balance({required this.title, required this.users, required this.operations});
}

@Collection<Balance>('balances')
final balancesRef = BalanceCollectionReference();
