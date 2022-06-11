import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cloud_firestore_odm/cloud_firestore_odm.dart';
import 'package:json_annotation/json_annotation.dart';

part 'balance.g.dart';

@JsonSerializable(explicitToJson: true)
class Balance {
  Balance({required this.title, required this.members});

  factory Balance.fromJson(Map<String, dynamic> json) =>
      _$BalanceFromJson(json);

  Map<String, dynamic> toJson() => _$BalanceToJson(this);

  String title;

  List<String> members;

  int get count => members.length;
}

@Collection<Balance>('balances')
final balancesRef = BalanceCollectionReference();
