import 'package:dartz/dartz.dart';

import '../../../../core/errors/failures.dart';
import '../data_sources/number_trivia_local_data_sources.dart';
import '../data_sources/number_trivia_remote_data_sources.dart';
import '../../domain/entities/numbers_entity.dart';
import '../../domain/repositories/number_trivia_repository.dart';

import '../../../../core/platform/network_info.dart';

class NumberTriviaRepositoryImpl implements NumberTriviaRepository {
  final NumberTriviaRemoteDataSources
  remoteDataSources; // depend on the remote data source ...
  final NumberTriviaLocalDataSources
  localDataSources; // depend on the local data source ....
  final NetworkInfo networkInfo; // depend on network information.....

  NumberTriviaRepositoryImpl(
    this.networkInfo, {
    required this.remoteDataSources,
    required this.localDataSources,
  });

  // getConcrete number from Data Source concrete implementation......
  @override
  Future<Either<Failure, NumbersEntity>> getConcreteNumberFromDataSource(
    int number,
  ) async {
    throw UnimplementedError();
  }

  // getRandom number from Data Source  concrete implementation ........
  @override
  Future<Either<Failure, NumbersEntity>> getRandomNumberFromDataSource() {
    throw UnimplementedError();
  }
}
