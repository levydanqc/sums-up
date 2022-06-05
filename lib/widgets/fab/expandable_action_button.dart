import 'package:flutter/material.dart';

@immutable
class ExpandableActionButton extends StatelessWidget {
  const ExpandableActionButton({
    super.key,
    required this.distance,
    required this.progress,
    required this.child,
  });

  final double distance;
  final Animation<double> progress;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: progress,
      builder: (context, child) {
        return Positioned(
          bottom: progress.value * (distance + 10),
          child: child!,
        );
      },
      child: FadeTransition(
        opacity: progress,
        child: child,
      ),
    );
  }
}
