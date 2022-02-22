import 'package:flutter/material.dart';

import 'behavior.dart';

/// Define a Widget to set touch and mouse scroll behaviors to the [child]
class TouchMouseScrollable extends StatelessWidget {
  const TouchMouseScrollable({Key? key, required this.child}) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return ScrollConfiguration(
      behavior: TouchMouseScrollBehavior(),
      child: child,
    );
  }
}
