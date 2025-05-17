import '../../../../core/errors/failures.dart';
import '../../../../core/usecase/usecase.dart';
import '../entities/numbers_entity.dart';
import '../repositories/number_trivia_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

class GetConcreteNumberTriviaUseCase
    implements UseCase<NumbersEntity, ConcreteNumberTriviaParams> {
  NumberTriviaRepository numberTriviaRepo;
  GetConcreteNumberTriviaUseCase({required this.numberTriviaRepo});

  // the use case should always have a call method.....
  @override
  Future<Either<Failure, NumbersEntity>> call(
    ConcreteNumberTriviaParams params,
  ) async {
    return await numberTriviaRepo.getConcreteNumberFromDataSource(
      params.number,
    );
  }
}

class ConcreteNumberTriviaParams extends Equatable {
  final int number;

  const ConcreteNumberTriviaParams({required this.number});
  @override
  List<Object?> get props => [number];
}
