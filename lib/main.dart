import 'package:cubit_example/features/dashboard/presentation/screen/dashboard.dart';
import 'package:flutter/material.dart';

/// The [MyApp] widget is the root of the Flutter application. It defines the
/// top-level configuration for the app, including its title, theme, and the
/// initial screen to display.
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget builds and configures the MaterialApp, which serves as the
  // top-level widget for the application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // The title of the application, displayed in the device's app switcher.
      title: 'Cubits Examples',

      // The theme configuration for the entire application. Here, it sets
      // the color scheme to use deep purple as the primary color.
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),

        // Enables the use of Material 3 design components, if available.
        useMaterial3: true,
      ),

      // The initial screen to be displayed when the app is launched, which
      // is set to the `Dashboard` widget.
      home: const Dashboard(),
    );
  }
}

void main() {
  // Runs the Flutter application, with `MyApp` as the root widget.
  runApp(const MyApp());
}
