// Project: Cubit Example
// Author: Daniel Krentzlin
// Project begin: 05.10.2023
// Dev Environment: Android Studio
// Platform: Windows 11
// Copyright: Walnut IT 2023
// ID: 20231005113334
// 05.10.2023 11:33
import 'package:cubit_example/global_event_bus/global_event.dart';
import 'package:cubit_example/global_event_bus/global_event_bus.dart';
import 'package:flutter/material.dart';

/// The [SecondaryBulbButton] widget is a Flutter [StatelessWidget] that represents
/// a secondary button used to trigger a global event for updating the bulb state.
class SecondaryBulbButton extends StatelessWidget {
  /// Constructor for the [SecondaryBulbButton] widget.
  ///
  /// [key] is an optional parameter that can be used to provide a key for
  /// this widget.
  const SecondaryBulbButton({super.key});

  @override
  Widget build(BuildContext context) {
    // This widget displays an elevated button with the text "Click me." When
    // clicked, it triggers a global event to update the bulb state.
    return ElevatedButton(
      onPressed: () {
        // Adds a global event to the event bus to update the bulb state.
        GlobalEventBus.instance.addEvent(GlobalEvent.updateBulbState);
        Navigator.of(context).pop();
      },
      child: const Text('Click me'),
    );
  }
}
