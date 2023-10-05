// Project: Weather Poser
// Author: Daniel Krentzlin
// Project begin: 18.18.2022
// Dev Environment: Android Studio
// Platform: Windows 11
// Copyright: Walnut IT 2023
// ID: 20231005094420
// 05.10.2023 09:44
import 'package:cubit_example/features/dashboard/presentation/cubit/bulb_cubit.dart';
import 'package:cubit_example/state_template/state_template.dart';
import 'package:cubit_example/ui/widgets/center_template.dart';
import 'package:cubit_example/ui/widgets/error_message.dart';
import 'package:cubit_example/ui/widgets/loading_cycle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/// The `Bulb` widget is a Flutter `StatelessWidget` that displays the state of
/// a bulb using the `BulbCubit` state management. It listens to changes in the
/// `BulbCubit` state via the `context` and displays appropriate UI based on
/// the state.
class Bulb extends StatelessWidget {
  /// Constructor for the `Bulb` widget.
  ///
  /// [key] is an optional parameter that can be used to provide a key for
  /// this widget.
  const Bulb({super.key});

  @override
  Widget build(BuildContext context) {
    // Obtain the current state from the BulbCubit using the context.
    final state = context.watch<BulbCubit>().state;

    // Determine the UI to display based on the state.
    switch (state.type) {
      case StateTemplateType.initial:
      case StateTemplateType.loading:
      // Display a loading indicator.
        return const CenterTemplate(
          child: LoadingCycle(),
        );
      case StateTemplateType.error:
      // Display an error message.
        return const CenterTemplate(
          child: ErrorMessage(),
        );

      default:
        final stateData = state.data;

        // If stateData is null, display an error message.
        if (stateData == null) {
          return const CenterTemplate(
            child: ErrorMessage(),
          );
        }

        // Display a message indicating whether the bulb is on or off.
        return Center(
          child: stateData.bulbIsOn
              ? const Text('Bulb is on!')
              : const Text('Bulb is off!'),
        );
    }
  }
}

