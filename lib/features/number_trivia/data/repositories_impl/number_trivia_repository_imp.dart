import 'package:click_app/core/errors/exceptions.dart';

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

  /// getConcrete number from Data Source concrete implementation......
  @override
  Future<Either<Failure, NumbersEntity>> getConcreteNumberTrivia(
    int number,
  ) async {
    final isConnected = await networkInfo.isConnected;
    //if there is no internet connection .. [safeCall]  Return the the Repo SafeCall mixin..
    if (!isConnected) {
      return safeCall<NumbersEntity>(() async {
        final localTrivia =
            await localDataSources
                .getLastNumberTriviaFromStorage(); // get data from last storage..
        if (localTrivia == null) throw CacheException();
        final NumbersEntity mappedEntity = mapper
            .convert<NumberTriviaModels, NumbersEntity>(localTrivia);
        return mappedEntity;
      });
    }
    // if there is internet connection.......[safeCall] Return the the Repo SafeCall mixin...
    return safeCall<NumbersEntity>(() async {
      final NumberTriviaModels fetchedTriviaModel = await remoteDataSources
          .getConcreteNumberTriviaFromApi(number);
      await localDataSources.cacheNumberTrivia(
        fetchedTriviaModel,
      ); // cache the Data in the local datasource....
      final NumbersEntity mappedEntity = mapper
          .convert<NumberTriviaModels, NumbersEntity>(fetchedTriviaModel);
      return mappedEntity;
    });
  }

  /// getRandom number from Data Source concrete implementation....
  @override
  Future<Either<Failure, NumbersEntity>> getRandomNumberTrivia() async {
    final isConnected = await networkInfo.isConnected;
    //if there is no internet connection .. [safeCall]  Return the the Repo SafeCall mixin..
    if (!isConnected) {
      return safeCall<NumbersEntity>(() async {
        final localTrivia =
            await localDataSources
                .getLastNumberTriviaFromStorage(); // get data from last storage..
        if (localTrivia == null) throw CacheException();
        final NumbersEntity mappedEntity = mapper
            .convert<NumberTriviaModels, NumbersEntity>(localTrivia);
        return mappedEntity;
      });
    }
    // if there is internet connection.......[safeCall] Return the the Repo SafeCall mixin...
    return safeCall<NumbersEntity>(() async {
      final NumberTriviaModels fetchedTriviaModel =
          await remoteDataSources.getRandomNumberTriviaFromApi();
      await localDataSources.cacheNumberTrivia(
        fetchedTriviaModel,
      ); // cache the Data in the local datasource....
      final NumbersEntity mappedEntity = mapper
          .convert<NumberTriviaModels, NumbersEntity>(fetchedTriviaModel);
      return mappedEntity;
    });
  }
}
