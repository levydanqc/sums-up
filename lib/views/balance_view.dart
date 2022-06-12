import 'package:flutter/material.dart';
import 'package:sums_up/widgets/bottom_bar.dart';
import 'package:sums_up/widgets/fab/expandable_fab.dart';
import 'package:sums_up/widgets/header.dart';

import '../widgets/operations/operations_list.dart';

class BalanceView extends StatefulWidget {
  final String id;

  const BalanceView({super.key, required this.id});

  @override
  State<BalanceView> createState() => _BalanceViewState();
}

class _BalanceViewState extends State<BalanceView> {
  bool isBalance = false;

  toggle(String view) {
    setState(() {
      isBalance = view == 'balanceView';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const Header(
        isBack: true,
      ),
      body: SafeArea(
        child:
            isBalance ? Text(widget.id) : OperationsList(balanceId: widget.id),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: const ExpandableFab(),
      bottomNavigationBar: bottomBar(isBalance, toggle, context),
    );
  }
}
