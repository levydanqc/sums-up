import 'package:flutter/material.dart';

import 'overlay_builder.dart';

class AnchoredOverlay extends StatelessWidget {
  final bool showOverlay;
  final Widget Function(BuildContext, Offset anchor) overlayBuilder;
  final Widget child;

  const AnchoredOverlay(
      {required this.showOverlay,
      required this.overlayBuilder,
      required this.child,
      super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      return OverlayBuilder(
        showOverlay: showOverlay,
        overlayBuilder: (BuildContext overlayContext) {
          RenderBox box = context.findRenderObject() as RenderBox;
          final center =
              box.size.center(box.localToGlobal(const Offset(0.0, 0.0)));

          return overlayBuilder(overlayContext, center);
        },
        child: child,
      );
    });
  }
}