import 'package:flutter/material.dart';

class MarkerInherited extends InheritedWidget {
  final ValueChanged<int?> onMarkerIdChanged;

  const MarkerInherited(
      {super.key, required super.child, required this.onMarkerIdChanged});

  static MarkerInherited of(BuildContext context) =>
      context.findAncestorWidgetOfExactType<MarkerInherited>()!;

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) => false;
}
