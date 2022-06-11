import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:sums_up/models/balance.dart';
import 'package:sums_up/widgets/balances/balance_list_item.dart';

import '../../services/firestore/balances_service.dart';
import '../../services/firestore/users_service.dart';

class BalanceList extends StatefulWidget {
  const BalanceList({
    Key? key,
  }) : super(key: key);

  @override
  State<BalanceList> createState() => _BalanceListState();
}

class _BalanceListState extends State<BalanceList> {
  // late var _balances;
  final _usersService = UsersService();
  final _balancesService = BalancesService();

  @override
  void initState() {
    super.initState();
    // WidgetsBinding.instance.addPostFrameCallback((_) async {
    //   // _balances = FirestoreService().balances;
    //   for (String id in await UsersService().balanceIds) {
    //     print(id);
    //   }
    // });
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<DocumentSnapshot>(
      stream: _usersService.balanceIdsStream,
      builder:
          (BuildContext context, AsyncSnapshot<DocumentSnapshot> snapshot) {
        if (snapshot.hasError) {
          return const Text('Something went wrong');
        }

        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Text("Loading");
        }
        return ListView(
          children: (snapshot.data!.data() as Map)['balances']
              .map((dynamic document) {
                var stream =
                    FirebaseFirestore.instance.doc(document.path).snapshots();
                return StreamBuilder<DocumentSnapshot>(
                    stream: stream,
                    builder: (BuildContext context,
                        AsyncSnapshot<DocumentSnapshot> snap) {
                      if (snap.hasError) {
                        return const Text('Something went wrong');
                      }

                      if (snap.connectionState == ConnectionState.waiting) {
                        return const Text("Loading");
                      }

                      Balance balance = Balance.fromJson(
                          snap.data!.data() as Map<String, dynamic>);
                      return BalanceListItem(
                          balance: balance, id: snap.data!.id);
                    });
              })
              .toList()
              .cast<Widget>(),
        );
      },
    );
  }
}
