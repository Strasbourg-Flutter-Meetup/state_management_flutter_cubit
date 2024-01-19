// Project: Riverpod Example
// Author: Daniel Krentzlin
// Dev Environment: Android Studio
// Platform: Windows 11
// Copyright:  2024
// ID: 20240104114241
// 04.01.2024 11:42
/// A mixin for classes that need to manage and update state data of type [T].
/// This mixin provides properties and methods to get, set, and update the state data.

mixin StateDataUpdaterMixin<T> {
  /// Gets the current state data of type [T].
  T get stateData;

  /// Sets the state data of type [T].
  ///
  /// The [data] parameter represents the new state data to be set.
  set stateData(T data);

  /// Updates the state data.
  ///
  /// This method can be called to perform any necessary updates to the state data.
  /// Implementing classes should provide the logic for updating the state data
  /// based on the current state and any external factors.
  void updateStateData();
}
