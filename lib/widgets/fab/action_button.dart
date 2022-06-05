import 'package:flutter/material.dart';

@immutable
class ActionButton extends StatelessWidget {
  const ActionButton({
    super.key,
    this.onTap,
    required this.icon,
  });

  final VoidCallback? onTap;
  final Widget icon;

  @override
  Widget build(BuildContext context) {
    return Material(
      shape: const CircleBorder(),
      clipBehavior: Clip.antiAlias,
      color: Theme.of(context).colorScheme.secondary,
      elevation: 4.0,
      child: IconButton(
        onPressed: () {
          print("object");
        },
        splashColor: Colors.amber,
        highlightColor: Colors.amber,
        icon: icon,
        color: Colors.white,
      ),
    );
  }
}
