import '../../../../core/mapper/map.dart';
import '../../../../core/utils/repository_safe_call.dart';
import '../models/number_trivia_models.dart';
import 'package:dartz/dartz.dart';

import '../../../../core/errors/failures.dart';
import '../data_sources/number_trivia_local_data_sources.dart';
import '../data_sources/number_trivia_remote_data_sources.dart';
import '../../domain/entities/numbers_entity.dart';
import '../../domain/repositories/number_trivia_repository.dart';

import '../../../../core/platform/network_info.dart';

class NumberTriviaRepositoryImpl
    with RepositorySafeCall
    implements NumberTriviaRepository {
  final NumberTriviaRemoteDataSources
  remoteDataSources; // depend on the remote data source ...
  final NumberTriviaLocalDataSources
  localDataSources; // depend on the local data source ....
  final NetworkInfo networkInfo; // depend on network information.....
  final Mappr mapper; // depend on mapper [ to map models to entity ]

  NumberTriviaRepositoryImpl(
    this.networkInfo,
    this.mapper, {
    required this.remoteDataSources,
    required this.localDataSources,
  });

  // getConcrete number from Data Source concrete implementation......
  @override
  Future<Either<Failure, NumbersEntity>> getConcreteNumberFromDataSource(
    int number,
  ) async {
    final isConnected = await networkInfo.isConnected;
    //if there is no internet connection ..
    if (!isConnected) {
      final localTrivia = await localDataSources.getLastNumberTriviaFromStorage(); //
      if (localTrivia == null) return left(CacheFailure());
      final NumbersEntity mappedEntity = mapper.convert<NumberTriviaModels, NumbersEntity>(localTrivia);
      return right(mappedEntity);
    }
    // if there is  internet connection....... Call this Generic method... [safeCall]
    return safeCall<NumbersEntity>(() async {
      final NumberTriviaModels fetchedTriviaModel = await remoteDataSources.getConcreteNumberTriviaFromApi(number);
      await localDataSources.cacheNumberTrivia( fetchedTriviaModel, ); // cache the Data in the local datasource....
      final NumbersEntity mappedEntity = mapper.convert<NumberTriviaModels, NumbersEntity>(fetchedTriviaModel);
      return mappedEntity;
    });
  }

  // getRandom number from Data Source  concrete implementation ........
  @override
  Future<Either<Failure, NumbersEntity>> getRandomNumberFromDataSource() {
    throw UnimplementedError();
  }
}
