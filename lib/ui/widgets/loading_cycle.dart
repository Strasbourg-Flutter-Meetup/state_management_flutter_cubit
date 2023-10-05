// Project: Cubit Example
// Author: Daniel Krentzlin
// Project begin: 05.10.2023
// Dev Environment: Android Studio
// Platform: Windows 11
// Copyright: Walnut IT 2023
// ID: 20231005093743
// 05.10.2023 09:37
import 'package:flutter/material.dart';

/// The [LoadingCycle] widget is a Flutter [StatelessWidget] that displays a
/// circular loading indicator in the form of a [CircularProgressIndicator].
/// This widget is commonly used to indicate that a process or operation is in
/// progress and the user should wait for it to complete.
class LoadingCycle extends StatelessWidget {
  /// Constructor for the [LoadingCycle] widget.
  ///
  /// [key] is an optional parameter that can be used to provide a key for
  /// this widget.
  const LoadingCycle({super.key});

  @override
  Widget build(BuildContext context) {
    // This widget displays a circular loading indicator with a light green color.
    return const CircularProgressIndicator(
      // The color of the indicator.
      color: Colors.lightGreen,
      // The background color of the indicator.
      backgroundColor: Colors.transparent,
    );
  }
}

