// Project: Weather Poser
// Author: Daniel Krentzlin
// Project begin: 18.18.2022
// Dev Environment: Android Studio
// Platform: Windows 11
// Copyright: Walnut IT 2023
// ID: 20231005094046
// 05.10.2023 09:40
import 'package:cubit_example/features/dashboard/presentation/cubit/bulb_cubit.dart';
import 'package:cubit_example/features/dashboard/presentation/cubit/bulb_state.dart';
import 'package:cubit_example/features/dashboard/presentation/widgets/bottom_button.dart';
import 'package:cubit_example/features/dashboard/presentation/widgets/bulb.dart';
import 'package:cubit_example/ui/widgets/screen_template.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/// The `Dashboard` widget is a Flutter `StatelessWidget` that represents the
/// main dashboard of your application. It wraps its content with a
/// `BlocProvider` for managing the `BulbCubit` and initializes it with an
/// initial state. The main content is displayed using the `_DashboardContent`
/// widget.
class Dashboard extends StatelessWidget {
  /// Constructor for the `Dashboard` widget.
  ///
  /// [key] is an optional parameter that can be used to provide a key for
  /// this widget.
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) => BlocProvider<BulbCubit>(
    create: (context) => BulbCubit(
      const BulbState.initial(),
    )..initialize(),
    child: _DashboardContent(),
  );
}

/// The `_DashboardContent` widget is a Flutter `StatelessWidget` that represents
/// the content of the dashboard. It displays a column of widgets, including a
/// `Bulb` widget and a `BottomButton` widget, separated by `SizedBox` widgets
/// for spacing.
class _DashboardContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) => const ScreenTemplate(
      widget: Column(
        children: [
          SizedBox(
            height: 96.0,
          ),
          Bulb(),
          SizedBox(
            height: 96.0,
          ),
          BottomButton(),
        ],
      ));
}

