import 'package:flutter/material.dart';

import '../widgets/balances/balances_list.dart';
import '../widgets/header.dart';

class Home extends StatefulWidget {
  final String title;
  const Home({super.key, required this.title});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: Header(isAccount: true),
      body: SafeArea(
        child: BalancesList(),
      ),
    );
  }
}
