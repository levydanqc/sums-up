import 'package:flutter/material.dart';

class Header extends StatelessWidget implements PreferredSizeWidget {
  final double height;

  const Header({Key? key, required this.height}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text('Flutter Demo Home Page'),
      actions: <Widget>[
        IconButton(
          icon: const Icon(Icons.account_circle_outlined),
          onPressed: () {},
        ),
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(height);
}
