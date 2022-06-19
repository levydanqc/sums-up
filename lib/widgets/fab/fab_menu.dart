import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';

import '../../themes/constants.dart';

class FabMenu extends StatefulWidget {
  const FabMenu({super.key});

  @override
  State<FabMenu> createState() => _FabMenuState();
}

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
      iconTheme: const IconThemeData(size: 30),

      /// If false, backgroundOverlay will not be rendered.
      overlayColor: primaryLight,
      onOpen: () => debugPrint('OPENING DIAL'),
      onClose: () => debugPrint('DIAL CLOSED'),
      useRotationAnimation: true,
      tooltip: 'Add an operation',
      // foregroundColor: Colors.black,
      // backgroundColor: Colors.white,
      // activeForegroundColor: Colors.red,
      // activeBackgroundColor: Colors.blue,
      animationCurve: Curves.easeOutQuart,
      shape: const StadiumBorder(),
      // ? const RoundedRectangleBorder()
      // : const StadiumBorder(),
      // childMargin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      children: [
        SpeedDialChild(
          child: const Icon(Icons.swap_horiz_rounded),
          backgroundColor: Colors.indigo,
          foregroundColor: Colors.white,
          label: 'Transfer',
          onTap: () => debugPrint('THIRD CHILD'),
        ),
        SpeedDialChild(
          child: const Icon(Icons.call_received_rounded),
          backgroundColor: Colors.deepOrange,
          foregroundColor: Colors.white,
          label: 'Expense',
          onTap: () => debugPrint('SECOND CHILD'),
        ),
        SpeedDialChild(
          child: const Icon(Icons.call_made_rounded),
          backgroundColor: Colors.red,
          foregroundColor: Colors.white,
          label: 'Income',
          onTap: () => setState(() => debugPrint('FIRST')),
        ),
      ],
    );
  }
}
