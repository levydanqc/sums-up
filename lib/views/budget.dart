import 'package:flutter/material.dart';
import 'package:sums_up/widgets/bottom_bar.dart';
import 'package:sums_up/widgets/header.dart';

class Budget extends StatefulWidget {
  final String title;

  const Budget({super.key, required this.title});

  @override
  State<Budget> createState() => _BudgetState();
}

class _BudgetState extends State<Budget> {
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
      floatingActionButton: FloatingActionButton(
        heroTag: widget.key,
        onPressed: () {},
        tooltip: "Ajouter un element",
        elevation: 4.0,
        child: Container(
          margin: const EdgeInsets.all(15.0),
          child: const Icon(Icons.add),
        ),
      ),
      bottomNavigationBar: bottomBar(isBalance, toggle),
    );
  }
}
