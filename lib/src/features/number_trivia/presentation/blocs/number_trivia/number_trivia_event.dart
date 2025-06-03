part of 'number_trivia_bloc.dart';

@freezed
abstract class NumberTriviaEvent with _$NumberTriviaEvent {
  const factory NumberTriviaEvent.numberStringEvent(String numberString) =
      _NumberStringEvent;
   const factory NumberTriviaEvent.randomEvent() = _RandomEvent;
}
