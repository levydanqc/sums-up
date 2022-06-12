import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:sums_up/models/operations/operation.dart';

import '../../services/firestore/balances_service.dart';
import 'operation_list_item.dart';

class OperationsList extends StatefulWidget {
  final String balanceId;

  const OperationsList({required this.balanceId, super.key});

  @override
  State<OperationsList> createState() => _OperationsListState();
}

class _OperationsListState extends State<OperationsList> {
  final _balancesService = BalancesService();

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<QuerySnapshot>(
      stream: _balancesService.operations(balanceId: widget.balanceId),
      builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
        if (snapshot.hasError) {
          // TODO: Handle error
          return const Text('Something went wrong');
        }

        if (snapshot.connectionState == ConnectionState.waiting) {
          // TODO: Handle loading
          return const Text("Loading");
        }
        return ListView(
          children: snapshot.data!.docs
              .map((DocumentSnapshot document) {
                Operation operation = Operation.fromJson(
                    document.data()! as Map<String, dynamic>);
                return OperationListItem(operation: operation, id: document.id);
              })
              .toList()
              .cast(),
        );
      },
    );
  }
}
