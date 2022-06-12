import 'package:flutter/material.dart';

import '../../models/operations/operation.dart';

class OperationListItem extends StatelessWidget {
  const OperationListItem({
    Key? key,
    required this.operation,
  }) : super(key: key);

  final Operation operation;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(operation.title),
      subtitle: Text(operation.amount.toString()),
    );
  }
}
