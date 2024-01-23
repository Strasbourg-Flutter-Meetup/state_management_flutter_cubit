// Project: Cubit Example
// Author: Daniel Krentzlin
// Project begin: 05.10.2023
// Dev Environment: Android Studio
// Platform: Windows 11
// Copyright: Walnut IT 2023
// ID: 20231005093458
// 05.10.2023 09:34
import 'package:flutter/material.dart';

/// The [CenterTemplate] widget is a Flutter [StatelessWidget] that centers its
/// child widget within the parent widget. It provides a convenient way to wrap
/// a [child] widget and ensure that it is centered both horizontally and
/// vertically within its parent.
class CenterTemplate extends StatelessWidget {
  /// Constructor for the [CenterTemplate] widget.
  ///
  /// [key] is an optional parameter that can be used to provide a key for
  /// this widget.
  ///
  /// [child] is a required parameter that represents the child widget to be
  /// centered within its parent.
  const CenterTemplate({super.key, required this.child});

  /// The child widget to be centered within its parent.
  final Widget child;

  @override
  Widget build(BuildContext context) {
    // Center the specified [child] widget both horizontally and vertically.
    return Center(
      child: child,
    );
  }
}
