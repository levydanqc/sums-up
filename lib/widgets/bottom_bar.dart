import 'package:flutter/material.dart';

bottomBar(isBalance, Function onTap) {
  return BottomAppBar(
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
              onPressed: () => onTap(),
              iconSize: 27.0,
              icon: Icon(
                Icons.money_rounded,
                color: isBalance ? Colors.grey.shade400 : Colors.blue.shade900,
              ),
            ),
          ),
          Expanded(
            child: IconButton(
              onPressed: () => onTap(),
              iconSize: 27.0,
              icon: Icon(
                Icons.balance_outlined,
                color: isBalance ? Colors.blue.shade900 : Colors.grey.shade400,
              ),
            ),
          ),
        ],
      ),
    ),
  );
}
