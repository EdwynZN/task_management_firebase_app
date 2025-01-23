import 'package:freezed_annotation/freezed_annotation.dart';

part 'async_state.freezed.dart';

@freezed
sealed class AsyncState<T, E extends Object?> with _$AsyncState {
  const factory AsyncState.data(T data) = AsyncDataState;

  const factory AsyncState.loading() = AsyncLoadingState;

  const factory AsyncState.error(E error) = AsyncErrorState;
}
