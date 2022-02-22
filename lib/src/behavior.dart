import 'dart:ui';
import 'package:flutter/material.dart';

/// Enable both touch and mouse behavior for Web inside ListView or SingleChildScrollView
/// Use this like following:
/// ```dart
/// ScrollConfiguration(
///     behavior: TouchMouseScrollBehavior(),
///     child: SingleChildScrollView(),
/// )
/// ```
class TouchMouseScrollBehavior extends MaterialScrollBehavior {
  @override
  Set<PointerDeviceKind> get dragDevices => {
        PointerDeviceKind.touch,
        PointerDeviceKind.mouse,
      };
}
