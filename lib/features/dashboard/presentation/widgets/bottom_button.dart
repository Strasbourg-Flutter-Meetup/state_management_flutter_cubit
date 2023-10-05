// Project: Weather Poser
// Author: Daniel Krentzlin
// Project begin: 18.18.2022
// Dev Environment: Android Studio
// Platform: Windows 11
// Copyright: Walnut IT 2023
// ID: 20231005094220
// 05.10.2023 09:42
import 'package:cubit_example/features/dashboard/presentation/cubit/bulb_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/// The `BottomButton` widget is a Flutter `StatelessWidget` that represents a
/// button displayed at the bottom of the screen. When pressed, it toggles the
/// state of the `BulbCubit` by reading the current state from the `context`.
class BottomButton extends StatelessWidget {
  /// Constructor for the `BottomButton` widget.
  ///
  /// [key] is an optional parameter that can be used to provide a key for
  /// this widget.
  const BottomButton({super.key});

  @override
  Widget build(BuildContext context) => ElevatedButton(
      onPressed: () {
        final cubit = context.read<BulbCubit>();
        if (cubit.bulbIsOn) {
          cubit.switchBulbOff();
        } else {
          cubit.switchBulbOn();
        }
      },
      child: const Text('Click me'));
}
