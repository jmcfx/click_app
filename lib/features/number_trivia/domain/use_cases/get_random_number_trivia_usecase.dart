import '../../../../core/errors/failures.dart';
import '../../../../core/use_case/use_case.dart';
import '../entities/numbers_entity.dart';
import '../repositories/number_trivia_repository.dart';
import 'package:dartz/dartz.dart';

class GetRandomNumberTriviaUseCase implements UseCase<NumbersEntity, NoParams> {
  final NumberTriviaRepository numberTriviaRepo;

  GetRandomNumberTriviaUseCase({required this.numberTriviaRepo});

  @override
  Future<Either<Failure, NumbersEntity>> call(NoParams param) async {
    return await numberTriviaRepo.getRandomNumberFromDataSource();
    
  }
}
