part of 'number_trivia_bloc.dart';

@freezed
sealed class NumberTriviaState with _$NumberTriviaState {
  const factory NumberTriviaState([
    @Default(ViewState.idle) ViewState viewState,
    final int? number,
     final String? trivia,
    final String? errorMessage,
  ]) = _NumberTriviaState;
}
