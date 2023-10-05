// Project: Leopold Homepage
// Author: Daniel Krentzlin
// Project begin: 23.06.2023
// Dev Environment: Android Studio
// Platform: Windows 11
// Copyright: Walnut IT 2022
// ID: .state_template
// 07.07.2022 16:15

import 'package:equatable/equatable.dart';

/// Variable that represents the current state of the request operation.
enum StateTemplateType {
  /// In initial state.
  initial,

  /// Request is initialized but not processed yet.
  initialized,

  /// State requesting data.
  loading,

  /// Request finished.
  loaded,

  /// Request could not be done / an error happened.
  error,
}

/// State used for request blocs.
class StateTemplate<T> extends Equatable {
  /// Returns a new [StateTemplate] object.
  const StateTemplate(this.type, {this.data});

  /// Creates an [StateTemplate]
  /// of the type [StateTemplateType.initial]
  ///
  /// ID: application.controller.ui.flutter_bloc.view.request_state.RequestState.initial
  const factory StateTemplate.initial() = _InitialRequestState<T>;

  /// Creates an [StateTemplate]
  /// of the type [StateTemplateType.initial]
  ///
  /// ID: application.controller.ui.flutter_bloc.view.request_state.RequestState.initial
  const factory StateTemplate.initialized({T? data}) =
      _InitializedRequestState<T>;

  /// Creates an [StateTemplate]
  /// of the type [StateTemplateType.loading]
  ///
  /// ID: application.controller.ui.flutter_bloc.view.request_state.RequestState.loading
  const factory StateTemplate.loading({T? previousData}) =
      _LoadingRequestState<T>;

  /// Creates an [StateTemplate]
  /// of the type [StateTemplateType.loaded]
  ///
  /// ID: application.controller.ui.flutter_bloc.view.request_state.RequestState.loaded
  const factory StateTemplate.loaded({required T? data}) =
      _LoadedRequestState<T>;

  /// Creates an [StateTemplate]
  /// of the type [StateTemplateType.error]
  ///
  /// ID: application.controller.ui.flutter_bloc.view.request_state.RequestState.error
  const factory StateTemplate.error() = _ErrorRequestState<T>;

  /// Variable that represents the current state of the request operation
  final StateTemplateType type;

  /// Storages the current value of the operation. Its type is defined by
  /// the class itself.
  final T? data;

  @override
  List<Object?> get props => [type, data];
}

///State where request is initializing.
class _InitialRequestState<T> extends StateTemplate<T> {
  ///Creates an [_InitialRequestState].
  const _InitialRequestState() : super(StateTemplateType.initial);
}

/// Request is initialized, but not processed yet.
class _InitializedRequestState<T> extends StateTemplate<T> {
  ///Creates an [_InitializedRequestState].
  const _InitializedRequestState({T? data})
      : super(StateTemplateType.initialized, data: data);
}

///State where request is loading.
class _LoadingRequestState<T> extends StateTemplate<T> {
  ///Creates an [_LoadingRequestState].
  const _LoadingRequestState({T? previousData})
      : super(StateTemplateType.loading, data: previousData);
}

///State where request is loaded.
class _LoadedRequestState<T> extends StateTemplate<T> {
  ///Creates an [_LoadedRequestState].
  ///
  ///Give [loadingMessage] to display a alert.
  const _LoadedRequestState({required T? data})
      : super(StateTemplateType.loaded, data: data);
}

///State where request has an error.
class _ErrorRequestState<T> extends StateTemplate<T> {
  ///Creates an [_InitialRequestState].
  const _ErrorRequestState() : super(StateTemplateType.error);
}
