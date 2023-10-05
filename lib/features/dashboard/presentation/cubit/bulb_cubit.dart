// Project: Weather Poser
// Author: Daniel Krentzlin
// Project begin: 18.18.2022
// Dev Environment: Android Studio
// Platform: Windows 11
// Copyright: Walnut IT 2023
// ID: 20231005095140
// 05.10.2023 09:51
import 'package:cubit_example/features/dashboard/presentation/cubit/bulb_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/// The `BulbCubit` class is responsible for managing the state of a light bulb
/// in a Flutter application. It extends the `Cubit` class and provides methods
/// for initializing the bulb state, switching the bulb on, and switching the
/// bulb off.
class BulbCubit extends Cubit<BulbState> {
  /// Constructor for the `BulbCubit` class.
  ///
  /// [initialState] is the initial state of the bulb.
  BulbCubit(super.initialState);

  BulbStateData? _stateData;

  bool _bulbIsOn = false;

  /// Getter method to check if the bulb is on.
  bool get bulbIsOn => _bulbIsOn;

  /// Initializes the bulb state.
  ///
  /// This method emits a loading state, updates the state data, and then emits a
  /// loaded state with the updated data.
  void initialize() {
    emit(const BulbState.loading());

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

  /// Updates the `_stateData` with the current bulb state.
  void _updateStateData() {
    _stateData = BulbStateData(bulbIsOn: _bulbIsOn);
  }
}
