import 'package:flutter/material.dart';
import 'package:flutter_swipe_action_cell/flutter_swipe_action_cell.dart';
import 'package:sums_up/extensions/date_time_format.dart';
import 'package:sums_up/extensions/number_currency.dart';
import 'package:sums_up/themes/constants.dart';

import '../../models/operations/operation.dart';

class OperationListItem extends StatelessWidget {
  const OperationListItem({
    Key? key,
    required this.operation,
    required this.id,
  }) : super(key: key);

  final Operation operation;
  final String id;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: Colors.grey,
            width: 1,
          ),
        ),
      ),
      child: SwipeActionCell(
        key: ObjectKey(id),
        trailingActions: <SwipeAction>[
          SwipeAction(
              title: "Delete",
              style: const TextStyle(color: Colors.white),
              performsFirstActionWithFullSwipe: true,
              onTap: (CompletionHandler handler) async {
                await handler(true);
              },
              color: Colors.red),
        ],
        child: ListTile(
          title: Text(operation.date.format('%m %d, %Y'),
              style: TextStyle(fontSize: 12, color: Colors.grey[800])),
          subtitle: Text(operation.title,
              style: const TextStyle(fontSize: 16, color: Colors.black)),
          trailing: Text(operation.amount.toCad(),
              style: const TextStyle(fontSize: 20, color: primary)),
        ),
      ),
    );
  }
}
