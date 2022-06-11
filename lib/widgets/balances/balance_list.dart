import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:sums_up/services/firestore/users_service.dart';

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
      stream: FirebaseFirestore.instance
          .collection('users')
          .doc("EGPJSkPXGEKUqaIufV9s")
          .snapshots(),
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
                return ListTile(
                  title: Text(document.path),
                );
              })
              .toList()
              .cast<Widget>(),
        );
      },
    );
  }
}
