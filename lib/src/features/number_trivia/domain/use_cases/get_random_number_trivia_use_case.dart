import 'package:click_app/src/core/utils/type_def.dart';

import '../../../../core/use_case/use_case.dart';
import '../entities/numbers_entity.dart';
import '../repositories/number_trivia_repository.dart';


class GetRandomNumberTriviaUseCase implements UseCase<NumbersEntity, NoParams> {
  final NumberTriviaRepository numberTriviaRepo;

  GetRandomNumberTriviaUseCase({required this.numberTriviaRepo});

  @override
  Future<FailureOr<NumbersEntity>> call(NoParams params) async {
    return await numberTriviaRepo.getRandomNumberTrivia();
  }
}
