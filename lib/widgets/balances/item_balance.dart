import 'package:flutter/material.dart';

import '../../themes/constants.dart';
import '../../views/balance.dart';

class ItemBalance extends StatelessWidget {
  const ItemBalance({super.key, required String title, required int count});

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
              MaterialPageRoute(builder: (context) => const Balance(title: 'Vacation')),
            );
          },
          child: Container(
            padding: const EdgeInsets.all(15),
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Vacation',
                        style: Theme.of(context).textTheme.headline3),
                    Text('3 peoples',
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
