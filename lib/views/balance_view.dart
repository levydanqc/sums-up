import 'package:flutter/material.dart';
import 'package:sums_up/widgets/bottom_bar.dart';
import 'package:sums_up/widgets/fab/expandable_fab.dart';
import 'package:sums_up/widgets/header.dart';

class BalanceView extends StatefulWidget {
  final String title;

  const BalanceView({super.key, required this.title});

  @override
  State<BalanceView> createState() => _BalanceViewState();
}

class _BalanceViewState extends State<BalanceView> {
  bool isBalance = false;

  toggle() {
    setState(() {
      isBalance = !isBalance;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const Header(
        isBack: true,
      ),
      body: SafeArea(
        child: Text(widget.title),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: const ExpandableFab(),
      bottomNavigationBar: bottomBar(isBalance, toggle, context),
    );
  }

  FloatingActionButton newMethod() {
    return FloatingActionButton(
      heroTag: widget.key,
      onPressed: () {},
      tooltip: "Ajouter un element",
      elevation: 4.0,
      child: Container(
        margin: const EdgeInsets.all(15.0),
        child: const Icon(Icons.add),
      ),
    );
  }
}
