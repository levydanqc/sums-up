import 'package:flutter/material.dart';
import 'package:sums_up/widgets/fab/action_button.dart';
import 'package:sums_up/widgets/fab/expandable_action_button.dart';

@immutable
class ExpandableFab extends StatefulWidget {
  const ExpandableFab({super.key});

  @override
  State<ExpandableFab> createState() => _ExpandableFabState();
}

class _ExpandableFabState extends State<ExpandableFab>
    with SingleTickerProviderStateMixin {
  late final AnimationController controller;
  late final Animation<double> expandAnimation;

  bool open = false;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      value: open ? 1.0 : 0.0,
      duration: const Duration(milliseconds: 250),
      vsync: this,
    );
    expandAnimation = CurvedAnimation(
      curve: Curves.fastOutSlowIn,
      reverseCurve: Curves.easeOutQuad,
      parent: controller,
    );
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  void toggle() {
    setState(() {
      open = !open;
      if (open) {
        controller.forward();
      } else {
        controller.reverse();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      clipBehavior: Clip.none,
      children: [
        buildTapToCloseFab(),
        ...buildExpandingActionButtons(),
        buildTapToOpenFab(),
      ],
    );
  }

  List<Widget> buildExpandingActionButtons() {
    final children = <Widget>[];
    final icons = [
      Icons.swap_horiz_rounded,
      Icons.call_received_rounded,
      Icons.call_made_rounded,
    ];
    final count = icons.length;
    final step = 120.0 / (count - 1);
    for (var i = 0, distance = 60.0; i < count; i++, distance += step) {
      children.add(
        ExpandableActionButton(
          distance: distance,
          progress: expandAnimation,
          child: ActionButton(
            onTap: () {},
            icon: Icon(icons[i]),
          ),
        ),
      );
    }
    return children;
  }

  Widget buildTapToCloseFab() {
    return Container(
      decoration: const BoxDecoration(
          shape: BoxShape.circle, color: Colors.transparent),
      clipBehavior: Clip.antiAlias,
      // padding: const EdgeInsets.all(8.0),
      child: FloatingActionButton(
        elevation: 1,
        backgroundColor: Colors.transparent,
        onPressed: toggle,
        heroTag: widget.hashCode,
        child: const Icon(Icons.close),
      ),
    );
  }

  Widget buildTapToOpenFab() {
    return IgnorePointer(
      ignoring: open,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 250),
        curve: const Interval(0.0, 0.5, curve: Curves.easeOut),
        child: AnimatedOpacity(
          opacity: open ? 0.0 : 1.0,
          curve: const Interval(0.25, 1.0, curve: Curves.easeInOut),
          duration: const Duration(milliseconds: 250),
          child: FloatingActionButton(
            backgroundColor:
                open ? Colors.transparent : Theme.of(context).primaryColor,
            onPressed: toggle,
            heroTag: widget.key,
            child: const Icon(Icons.create),
          ),
        ),
      ),
    );
  }
}
