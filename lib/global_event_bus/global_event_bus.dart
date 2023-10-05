// Project: Cubit Example
// Author: Daniel Krentzlin
// Project begin: 05.10.2023
// Dev Environment: Android Studio
// Platform: Windows 11
// Copyright: Walnut IT 2022
// ID: .event_bus
// 23.08.2022 08:12
import 'dart:async';

import 'global_event.dart';

/// The [GlobalEventBus] class provides a simple event bus mechanism for
/// broadcasting and listening to global events in the application.
class GlobalEventBus {
  GlobalEventBus._();

  /// A singleton instance of the [GlobalEventBus] class.
  static final GlobalEventBus instance = GlobalEventBus._();

  /// A stream controller used for broadcasting events.
  final StreamController _eventBus = StreamController.broadcast();

  /// Returns a stream that allows subscribers to listen to events.
  Stream get eventBus => _eventBus.stream;

  /// Adds a [GlobalEvent] to the event bus, broadcasting it to all listeners.
  ///
  /// [event] is the global event to be added to the bus.
  void addEvent(GlobalEvent event) {
    _eventBus.add(event);
  }

  /// Closes the event bus stream when it's no longer needed.
  ///
  /// This should be called to release resources and prevent memory leaks.
  Future<void> disposeEventBus() async {
    await _eventBus.close();
  }
}

