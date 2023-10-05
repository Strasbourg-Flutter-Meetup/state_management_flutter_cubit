// Project: Cubit Example
// Author: Daniel Krentzlin
// Project begin: 05.10.2023
// Dev Environment: Android Studio
// Platform: Windows 11
// Copyright: Walnut IT 2023
// ID: 20231005093643
// 05.10.2023 09:36
import 'package:flutter/material.dart';
/// The [ErrorMessage] widget is a Flutter [StatelessWidget] that displays an
/// error message with an error icon (a red exclamation mark) and a text message.
/// It is commonly used to inform the user about errors or issues that have
/// occurred within the application.
class ErrorMessage extends StatelessWidget {
  /// Constructor for the [ErrorMessage] widget.
  ///
  /// [key] is an optional parameter that can be used to provide a key for
  /// this widget.
  const ErrorMessage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    // This widget displays an error message with an error icon (red exclamation mark)
    // and a text message.
    return const ListTile(
      // The leading widget, which is an icon indicating an error (red exclamation mark).
      leading: Icon(
        Icons.error_outline,
        color: Colors.red,
      ),
      // The title text, which displays the error message.
      title: Text('An error occurred. Please try again later.'),
    );
  }
}