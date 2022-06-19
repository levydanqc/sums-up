import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';

import '../../themes/constants.dart';

class FabMenu extends StatefulWidget {
  const FabMenu({super.key});

  @override
  State<FabMenu> createState() => _FabMenuState();
}

const Color _backgroundColor = secondaryLight;
const Color _foregroundColor = Colors.black;
const Color _iconForegroundColor = secondary;
const Color _iconBackgroundColor = Colors.white;

class _FabMenuState extends State<FabMenu> {
  final ValueNotifier<bool> _fabOpen = ValueNotifier<bool>(false);

  @override
  Widget build(BuildContext context) {
    return SpeedDial(
      animationDuration: const Duration(milliseconds: 450),
      icon: Icons.add,
      activeIcon: Icons.close,
      spacing: 3,
      openCloseDial: _fabOpen,
      spaceBetweenChildren: 4,
      // iconTheme: const IconThemeData(size: 30),
      overlayColor: primaryLight,
      // onOpen: () => debugPrint('OPENING DIAL'),
      // onClose: () => debugPrint('DIAL CLOSED'),
      useRotationAnimation: true,
      tooltip: 'Add an operation',
      foregroundColor: Colors.white,
      backgroundColor: primary,
      activeForegroundColor: Colors.white,
      activeBackgroundColor: primary,
      animationCurve: Curves.easeOutQuart,
      shape: const StadiumBorder(),
      children: [
        SpeedDialChild(
          child: const Icon(Icons.swap_horiz_rounded),
          backgroundColor: _iconBackgroundColor,
          foregroundColor: _iconForegroundColor,
          labelBackgroundColor: _backgroundColor,
          labelStyle: const TextStyle(color: _foregroundColor),
          label: 'Transfer',
          onTap: () => debugPrint('THIRD CHILD'),
        ),
        SpeedDialChild(
          child: const Icon(Icons.call_received_rounded),
          backgroundColor: _iconBackgroundColor,
          foregroundColor: _iconForegroundColor,
          labelBackgroundColor: _backgroundColor,
          labelStyle: const TextStyle(color: _foregroundColor),
          label: 'Expense',
          onTap: () => debugPrint('SECOND CHILD'),
        ),
        SpeedDialChild(
          child: const Icon(Icons.call_made_rounded),
          backgroundColor: _iconBackgroundColor,
          foregroundColor: _iconForegroundColor,
          labelBackgroundColor: _backgroundColor,
          labelStyle: const TextStyle(color: _foregroundColor),
          label: 'Income',
          onTap: () => setState(() => debugPrint('FIRST')),
        ),
      ],
    );
  }
}
