import 'package:flutter/material.dart';

import '../widgets/budgets/item_budget.dart';
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
    return Scaffold(
      appBar: Header(
        height: const Size.fromHeight(100).height,
      ),
      body: SafeArea(
        child: ListView.builder(
          itemBuilder: (context, index) {
            return const ItemBudget(
              title: 'Vacation',
              count: 3,
            );
          },
          scrollDirection: Axis.vertical,
          itemCount: 10,
        ),
      ),
    );
  }
}
