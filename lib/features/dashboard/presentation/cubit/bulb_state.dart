// Project: Cubit Example
// Author: Daniel Krentzlin
// Project begin: 05.10.2023
// Dev Environment: Android Studio
// Platform: Windows 11
// Copyright: Walnut IT 2023
// ID: 20231005094537
// 05.10.2023 09:45
import 'package:cubit_example/state_template/state_template.dart';
import 'package:equatable/equatable.dart';

/// The [BulbStateData] class represents the data associated with the state of a
/// light bulb in a Flutter application. It extends [Equatable] to facilitate
/// state comparison.
class BulbStateData extends Equatable {
  /// Constructor for the [BulbStateData] class.
  ///
  /// [bulbIsOn] is a boolean indicating whether the bulb is on or off.
  const BulbStateData({required this.bulbIsOn});

  /// Indicates whether the bulb is on (`true`) or off (`false`).
  final bool bulbIsOn;

  @override
  List<Object?> get props => [
    bulbIsOn,
  ];

  /// Creates a copy of the [BulbStateData] object with optional parameter values.
  ///
  /// [bulbIsOn] is an optional parameter to update the `bulbIsOn` property.
  /// If not provided, the current `bulbIsOn` value will be retained.
  BulbStateData copyWith({bool? bulbIsOn}) => BulbStateData(
    bulbIsOn: bulbIsOn ?? this.bulbIsOn,
  );
}

/// A typedef for the [BulbState] using a custom `StateTemplate` with
/// `BulbStateData`.
typedef BulbState = StateTemplate<BulbStateData>;

