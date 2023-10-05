import 'package:cubit_example/features/second_screen/presentation/widgets/secondary_bulb_button.dart';
import 'package:cubit_example/ui/widgets/center_template.dart';
import 'package:cubit_example/ui/widgets/screen_template.dart';
import 'package:flutter/material.dart';

/// The [SecondScreen] widget is a Flutter `StatelessWidget` that represents
/// the second screen or page of the application. It provides a basic template
/// with common layout elements such as a safe area, scaffold, and a scrollable
/// content area.
class SecondScreen extends StatelessWidget {
  /// Constructor for the [SecondScreen] widget.
  ///
  /// [key] is an optional parameter that can be used to provide a key for
  /// this widget.
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // This widget provides a safe area and a scaffold for building screens.
    return const ScreenTemplate(
      // The main content of the screen consists of a centered column with
      // elements.
      widget: CenterTemplate(
        child: Column(
          children: [
            SizedBox(
              height: 96.0,
            ),
            // Displays a secondary bulb button in the center of the screen.
            SecondaryBulbButton(),
            SizedBox(
              height: 96.0,
            ),
          ],
        ),
      ),
    );
  }
}

