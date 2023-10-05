// Project: Cubit Example
// Author: Daniel Krentzlin
// Project begin: 05.10.2023
// Dev Environment: Android Studio
// Platform: Windows 11
// Copyright: Walnut IT 2023
// ID: 20231005094220
// 05.10.2023 09:42
import 'package:cubit_example/features/dashboard/presentation/cubit/bulb_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


/// The [PrimaryBulbButton] widget is a Flutter `StatelessWidget` that represents
/// a primary button used to control the state of a bulb.
class PrimaryBulbButton extends StatelessWidget {
  /// Constructor for the [PrimaryBulbButton] widget.
  ///
  /// [key] is an optional parameter that can be used to provide a key for
  /// this widget.
  const PrimaryBulbButton({super.key});

  @override
  Widget build(BuildContext context) {
    // This widget displays an elevated button with the text "Click me." When
    // clicked, it reads the `BulbCubit` from the context and toggles the state
    // of the bulb by calling `switchBulbOn` or `switchBulbOff` methods based on
    // the current state.
    return ElevatedButton(
      onPressed: () {
        // Reads the `BulbCubit` from the context.
        final cubit = context.read<BulbCubit>();

        // Checks the current state of the bulb and toggles it accordingly.
        if (cubit.bulbIsOn) {
          cubit.switchBulbOff();
        } else {
          cubit.switchBulbOn();
        }
      },
      child: const Text('Click me'),
    );
  }
}

