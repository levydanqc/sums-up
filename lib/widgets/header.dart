import 'package:flutter/material.dart';
import 'package:sums_up/themes/constants.dart';

class Header extends StatelessWidget implements PreferredSizeWidget {
  final double height = 100;
  final bool isAccount;
  final bool isBack;

  const Header({Key? key, this.isAccount = false, this.isBack = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text('Flutter'),
      actions: <Widget>[
        if (isAccount)
          IconButton(
            icon: const Icon(Icons.account_circle_outlined),
            onPressed: () {},
          ),
      ],
      leadingWidth: 150,
      leading: isBack
          ? Container(
              margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              child: FloatingActionButton.extended(
                elevation: 0,
                extendedPadding: const EdgeInsets.all(10),
                backgroundColor: primary,
                label: const Text('Back'),
                icon: const Icon(Icons.arrow_back_ios_new_outlined),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            )
          : null,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(height);
}
