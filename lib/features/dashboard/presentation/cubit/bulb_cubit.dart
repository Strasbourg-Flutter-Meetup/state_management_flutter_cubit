// Project: Cubit Example
// Author: Daniel Krentzlin
// Project begin: 05.10.2023
// Dev Environment: Android Studio
// Platform: Windows 11
// Copyright: Walnut IT 2023
// ID: 20231005095140
// 05.10.2023 09:51
import 'dart:async';

import 'package:cubit_example/features/dashboard/presentation/cubit/bulb_state.dart';
import 'package:cubit_example/global_event_bus/global_event.dart';
import 'package:cubit_example/global_event_bus/global_event_bus.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/// The [BulbCubit] class is responsible for managing the state of a light bulb
/// in a Flutter application. It extends the [Cubit] class and provides methods
/// for initializing the bulb state, switching the bulb on, and switching the
/// bulb off.
class BulbCubit extends Cubit<BulbState> {
  /// Constructor for the [BulbCubit] class.
  ///
  /// [initialState] is the initial state of the bulb.
  BulbCubit(
    super.initialState, {
    required this.globalEventBus,
  });

  /// An instance of a global event bus used for inter-widget communication and event handling.
  GlobalEventBus globalEventBus;

  /// Stores the data related to the state of a bulb, indicating whether it is currently on or off.
  BulbStateData? _stateData;

  /// Represents the current state of the bulb, where `true` indicates the bulb is on, and `false` indicates it is off.
  bool _bulbIsOn = false;

  /// A subscription to a stream of events on the global event bus, allowing the application to listen for and react to specific events.
  StreamSubscription? _globalEventBusStreamSubscription;


  /// Getter method to check if the bulb is on.
  bool get bulbIsOn => _bulbIsOn;

  /// Initializes the bulb state.
  ///
  /// This method emits a loading state, updates the state data, and then emits a
  /// loaded state with the updated data.
  void initialize() {
    emit(const BulbState.loading());

    _listenToGlobalEventBus();
    _updateStateData();

    emit(BulbState.loaded(
      data: _stateData,
    ));
  }

  /// Turns the bulb on.
  ///
  /// This method emits a loading state, sets the `_bulbIsOn` flag to `true`,
  /// updates the state data, and then emits a loaded state with the updated data.
  void switchBulbOn() {
    emit(const BulbState.loading());

    _bulbIsOn = true;

    _updateStateData();

    emit(BulbState.loaded(
      data: _stateData,
    ));
  }

  /// Turns the bulb off.
  ///
  /// This method emits a loading state, sets the `_bulbIsOn` flag to `false`,
  /// updates the state data, and then emits a loaded state with the updated data.
  void switchBulbOff() {
    emit(const BulbState.loading());

    _bulbIsOn = false;

    _updateStateData();

    emit(BulbState.loaded(
      data: _stateData,
    ));
  }

  Future<void> cancelGlobalEventBusStreamSubscription() async {
    await _globalEventBusStreamSubscription?.cancel();
  }

  /// Updates the `_stateData` with the current bulb state.
  void _updateStateData() {
    _stateData = BulbStateData(bulbIsOn: _bulbIsOn);
  }

  /// Listens to global events from the event bus and reacts to changes in the
  /// bulb state.
  void _listenToGlobalEventBus() {
    // Subscribe to events on the global event bus that match the
    // GlobalEvent.updateBulbState event.
    _globalEventBusStreamSubscription = globalEventBus.eventBus
        .where(
          (event) => event == GlobalEvent.updateBulbState,
    )
        .listen((event) {
      // When the updateBulbState event is received, toggle the state of the bulb.
      if (_bulbIsOn) {
        switchBulbOff();
      } else {
        switchBulbOn();
      }
    });
  }

}
