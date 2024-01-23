import 'package:equatable/equatable.dart';

//// State used for request blocs.
sealed class StateTemplate<T> extends Equatable {
  /// Returns a new [StateTemplate] object.
  const StateTemplate({this.data});

  /// Creates an [InitialRequestState].
  const factory StateTemplate.initial() = InitialRequestState<T>;

  /// Creates an [InitializedRequestState].
  const factory StateTemplate.initialized({T? data}) =
      InitializedRequestState<T>;

  /// Creates an [LoadingRequestState].
  const factory StateTemplate.loading({T? previousData}) =
      LoadingRequestState<T>;

  /// Creates an [LoadedRequestState]
  const factory StateTemplate.loaded({required T? data}) =
      LoadedRequestState<T>;

  /// Creates an [ErrorRequestState].
  const factory StateTemplate.error() = ErrorRequestState<T>;

  /// Storages the current value of the operation. Its type is defined by
  /// the class itself.
  final T? data;

  @override
  List<Object?> get props => [data];
}

/// State where request is initializing.
class InitialRequestState<T> extends StateTemplate<T> {
  /// Creates an [InitialRequestState].
  const InitialRequestState() : super();
}

/// Request is initialized, but not processed yet.
class InitializedRequestState<T> extends StateTemplate<T> {
  /// Creates an [InitializedRequestState].
  const InitializedRequestState({T? data}) : super(data: data);
}

/// State where request is loading.
class LoadingRequestState<T> extends StateTemplate<T> {
  /// Creates an [LoadingRequestState].
  const LoadingRequestState({T? previousData}) : super(data: previousData);
}

/// State where request is loaded.
class LoadedRequestState<T> extends StateTemplate<T> {
  /// Creates an [LoadedRequestState].
  const LoadedRequestState({required T? data}) : super(data: data);
}

/// State where request has an error.
class ErrorRequestState<T> extends StateTemplate<T> {
  /// Creates an [ErrorRequestState].
  const ErrorRequestState() : super();
}
