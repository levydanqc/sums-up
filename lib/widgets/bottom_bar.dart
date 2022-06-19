import 'package:flutter/material.dart';

bottomBar(isBalance, Function onTap, BuildContext context) {
  Color selected = Theme.of(context).primaryColor;

  return BottomAppBar(
    shape: const CircularNotchedRectangle(),
    notchMargin: 5.0,
    elevation: 20.0,
    color: Colors.white,
    child: Container(
      margin: const EdgeInsets.only(left: 12.0, right: 12.0),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Expanded(
            child: IconButton(
              onPressed: () => onTap('listView'),
              iconSize: 27.0,
              icon: Icon(
                Icons.money_rounded,
                color: isBalance ? Colors.grey.shade400 : selected,
              ),
            ),
          ),
          Expanded(
            child: IconButton(
              onPressed: () => onTap('balanceView'),
              iconSize: 27.0,
              icon: Icon(
                Icons.balance_outlined,
                color: isBalance ? selected : Colors.grey.shade400,
              ),
            ),
          ),
        ],
      ),
    ),
  );
}
