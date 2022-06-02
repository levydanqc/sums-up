import 'package:flutter/material.dart';
import 'package:sums_up/widgets/header.dart';

class Budget extends StatefulWidget {
  final String title;

  const Budget({super.key, required this.title});

  @override
  State<Budget> createState() => _BudgetState();
}

class _BudgetState extends State<Budget> {
  bool isBalance = false;

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
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        //color of the BottomAppBar
        color: Colors.white,
        child: Container(
          margin: const EdgeInsets.only(left: 12.0, right: 12.0),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Expanded(
                child: IconButton(
                  onPressed: () {
                    setState(() {
                      isBalance = !isBalance;
                    });
                  },
                  iconSize: 27.0,
                  icon: Icon(
                    Icons.money_rounded,
                    color:
                        isBalance ? Colors.grey.shade400 : Colors.blue.shade900,
                  ),
                ),
              ),
              //to leave space in between the bottom app bar items and below the FAB
              Expanded(
                child: IconButton(
                  onPressed: () {
                    setState(() {
                      isBalance = !isBalance;
                    });
                  },
                  iconSize: 27.0,
                  icon: Icon(
                    Icons.balance_outlined,
                    color:
                        isBalance ? Colors.blue.shade900 : Colors.grey.shade400,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
