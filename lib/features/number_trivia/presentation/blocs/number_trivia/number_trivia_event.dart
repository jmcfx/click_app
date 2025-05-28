part of 'number_trivia_bloc.dart';

@freezed
abstract class NumberTriviaEvent with _$NumberTriviaEvent {
  const factory NumberTriviaEvent.numberString(String ? numberString) = _NumberString;
//  const factory NumberTriviaEvent.inputConverter() = _NumberString;
}
