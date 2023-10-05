// Project: Cubit Example
// Author: Daniel Krentzlin
// Project begin: 05.10.2023
// Dev Environment: Android Studio
// Platform: Windows 11
// Copyright: Walnut IT 2023
// ID: 20231005110914
// 05.10.2023 11:09

import 'package:cubit_example/features/second_screen/presentation/screen/second_screen.dart';
import 'package:flutter/material.dart';

/// The [RouterButton] widget is a Flutter [StatelessWidget] that represents
/// a button used for navigating to the next screen.
class RouterButton extends StatelessWidget {
  /// Constructor for the [RouterButton] widget.
  ///
  /// [key] is an optional parameter that can be used to provide a key for
  /// this widget.
  const RouterButton({super.key});

  @override
  Widget build(BuildContext context) {
    // This widget displays an elevated button with the text "Go to next screen."
    // When clicked, it triggers navigation to the [SecondScreen] using the
    // [Navigator] class.
    return ElevatedButton(
      onPressed: () {
        // Navigates to the [SecondScreen] using a [MaterialPageRoute].
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => const SecondScreen(),
          ),
        );
      },
      child: const Text('Go to next screen'),
    );
  }
}
