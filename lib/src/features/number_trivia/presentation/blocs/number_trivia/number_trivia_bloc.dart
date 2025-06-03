import 'package:click_app/src/core/use_case/use_case.dart';

import '../../../../../core/utils/input_converter.dart';
import '../../../../../core/utils/map_failure_to_message.dart';
import '../../../../../core/utils/type_def.dart';
import '../../../domain/entities/numbers_entity.dart';
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
  final InputConverter inputConverter;
  NumberTriviaBloc({
    required this.getConcreteNumberTriviaUseCase,
    required this.getRandomNumberTriviaUseCase,
    required this.inputConverter,
  }) : super(const NumberTriviaState()) {
    on<_NumberStringEvent>(_onConcreteNumberTriviaEvent);
    on<_RandomEvent>(_onRandomNumberTriviaEvent);
  }

  // Concrete Number Trivia Event Handler.....
  void _onConcreteNumberTriviaEvent(
    _NumberStringEvent event,
    Emitter<NumberTriviaState> emit,
  ) async {
    emit(state.copyWith(viewState: ViewState.loading));

    final FailureOr<int> inputEither = inputConverter.stringToUnsignedInteger(
      event.numberString,
    );

    // Handle invalid input. before calling the useCase......
    if (inputEither.isLeft()) {
      final failure = inputEither.fold((f) => f, (_) => null)!;
      emit(state.copyWith(errorMessage: mapFailureToMessage(failure)));
      return;
    }

    final int number = inputEither.getOrElse(() => 0);
    //call a useCase.....
    final FailureOr<NumbersEntity> result =
        await getConcreteNumberTriviaUseCase(
          ConcreteNumberTriviaParams(number: number),
        );
    // return failure or success .....
    result.fold(
      (failure) => emit(
        state.copyWith(
          viewState: ViewState.error,
          errorMessage: mapFailureToMessage(failure),
        ),
      ),
      (trivia) => emit(
        state.copyWith(
          viewState: ViewState.success,
          number: trivia.number,
          trivia: trivia.text,
        ),
      ),
    );
  }

  // Random Number Trivia Event...

  void _onRandomNumberTriviaEvent(
    _RandomEvent event,
    Emitter<NumberTriviaState> emit,
  ) async {
    emit(state.copyWith(viewState: ViewState.loading));

    final FailureOr<NumbersEntity> results = await getRandomNumberTriviaUseCase(
      NoParams(),
    );

    results.fold(
      (failure) => emit(
        state.copyWith(
          viewState: ViewState.error,
          errorMessage: mapFailureToMessage(failure),
        ),
      ),
      (trivia) => emit(
        state.copyWith(
          viewState: ViewState.success,
          trivia: trivia.text,
          number: trivia.number,
        ),
      ),
    );
  }
}
