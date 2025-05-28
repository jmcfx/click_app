import 'package:click_app/core/utils/map_failure_to_message.dart';

import '../../../../../core/enum/view_state.dart';
import '../../../domain/use_cases/get_concrete_number_trivia_use_case.dart';
import '../../../domain/use_cases/get_random_number_trivia_use_case.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'number_trivia_state.dart';
part 'number_trivia_event.dart';
part 'number_trivia_bloc.freezed.dart';

class NumberTriviaBloc extends Bloc<NumberTriviaEvent, NumberTriviaState> {
  final GetConcreteNumberTriviaUseCase getConcreteNumberTriviaUseCase;
  final GetRandomNumberTriviaUseCase getRandomNumberTriviaUseCase;
  NumberTriviaBloc(
    this.getConcreteNumberTriviaUseCase,
    this.getRandomNumberTriviaUseCase,
  ) : super(const NumberTriviaState()) {
    on<_NumberString>(_onNumberTriviaEvent);
  }

  //Number Trivia Event Handler.....
  void _onNumberTriviaEvent(
    _NumberString event,
    Emitter<NumberTriviaState> emit,
  ) async {
    emit(state.copyWith(viewState: ViewState.loading));

    // Parse the string to int
    final number = int.tryParse(event.numberString ?? '');
    if (number case null) {
      emit(
        state.copyWith(
          viewState: ViewState.error,
          errorMessage: 'Invalid number input',
        ),
      );
      return;
    }

    final result = await getConcreteNumberTriviaUseCase.numberTriviaRepo
        .getConcreteNumberTrivia(number);
    result.fold(
      (failure) => emit(
        state.copyWith(
          viewState: ViewState.error,
          errorMessage: mapFailureToMessage(failure),
        ),
      ),
      (trivia) => emit(state.copyWith()),
    );
  }
}
