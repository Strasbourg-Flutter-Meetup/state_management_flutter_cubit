// Project: Cubit Example
// Author: Daniel Krentzlin
// Project begin: 05.10.2023
// Dev Environment: Android Studio
// Platform: Windows 11
// Copyright: Walnut IT 2023
// ID: 20231005093207
// 05.10.2023 09:32
import 'package:flutter/material.dart';

/// The [ScreenTemplate] widget is a Flutter [StatelessWidget] that provides a
/// basic template for creating screens or pages. It includes common layout
/// elements such as a safe area, scaffold, and a scrollable content area.
class ScreenTemplate extends StatelessWidget {
  /// Constructor for the [ScreenTemplate] widget.
  ///
  /// [key] is an optional parameter that can be used to provide a key for
  /// this widget.
  ///
  /// [widget] is a required parameter that specifies the main content widget
  /// to be displayed within the screen. This widget will be placed inside a
  /// scrollable container.
  const ScreenTemplate({super.key, required this.widget});

  /// The main content widget to be displayed within the screen.
  final Widget widget;

  @override
  Widget build(BuildContext context) {
    // This widget provides a safe area and a scaffold for building screens.
    return SafeArea(
      child: Scaffold(
        // The body of the scaffold contains a single column with an expanded
        // scrollable area that displays the provided [widget].
        body: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: widget,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

