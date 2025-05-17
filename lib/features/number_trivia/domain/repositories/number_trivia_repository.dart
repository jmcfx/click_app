import 'package:dartz/dartz.dart';
import '../../../../core/errors/failures.dart';
import '../entities/numbers_entity.dart';

abstract interface class NumberTriviaRepository {
  Future<Either<Failure, NumbersEntity>> getConcreteNumberFromDataSource(
    int number,
  );
  Future<Either<Failure, NumbersEntity>> getRandomNumberFromDataSource();
}
