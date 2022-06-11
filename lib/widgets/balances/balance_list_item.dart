import 'package:flutter/material.dart';
import 'package:sums_up/models/balance.dart';

import '../../themes/constants.dart';
import '../../views/balance_view.dart';

class BalanceListItem extends StatelessWidget {
  final String id;
  final Balance balance;

  const BalanceListItem({super.key, required this.balance, required this.id});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      child: Material(
        color: offWhite,
        borderRadius: BorderRadius.circular(10),
        child: InkWell(
          borderRadius: BorderRadius.circular(10),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => BalanceView(id: id)),
            );
          },
          child: Container(
            padding: const EdgeInsets.all(15),
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(balance.title,
                        style: Theme.of(context).textTheme.headline3),
                    Text('${balance.count} participants',
                        style: Theme.of(context).textTheme.caption),
                  ],
                ),
                const Spacer(),
                const Icon(Icons.arrow_forward_ios, color: Colors.black),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
