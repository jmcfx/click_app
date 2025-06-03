import 'package:click_app/src/core/mapper/map.dart';
import 'package:click_app/src/core/network/network_info.dart';
import 'package:click_app/src/features/number_trivia/data/data_sources/local_data_source/number_trivia_local_data_sources.dart';
import 'package:click_app/src/features/number_trivia/data/data_sources/remote_data_source/number_trivia_remote_data_sources.dart';
import 'package:http/http.dart' as http;
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../core/utils/input_converter.dart';
import '../features/number_trivia/data/repositories_impl/number_trivia_repository_imp.dart';
import 'package:click_app/src/features/number_trivia/domain/repositories/number_trivia_repository.dart';
import '../features/number_trivia/domain/use_cases/get_concrete_number_trivia_use_case.dart';
import '../features/number_trivia/domain/use_cases/get_random_number_trivia_use_case.dart';

import '../features/number_trivia/presentation/blocs/number_trivia/number_trivia_bloc.dart';
import 'package:get_it/get_it.dart';

final sl = GetIt.I;

Future<void> init() async {
  //! Features -  .....
  ///Bloc....
  sl.registerFactory(
    () => NumberTriviaBloc(
      getConcreteNumberTriviaUseCase: sl(),
      getRandomNumberTriviaUseCase: sl(),
      inputConverter: sl(),
    ),
  );

  // Use case...
  sl.registerLazySingleton(
    () => GetConcreteNumberTriviaUseCase(numberTriviaRepo: sl()),
  );
  sl.registerLazySingleton(
    () => GetRandomNumberTriviaUseCase(numberTriviaRepo: sl()),
  );

  //Repository....
  sl.registerLazySingleton<NumberTriviaRepository>(
    () => NumberTriviaRepositoryImpl(
      networkInfo: sl(),
      mapper: sl(),
      remoteDataSources: sl(),
      localDataSources: sl(),
    ),
  );

  //Data sources
  sl.registerLazySingleton<NumberTriviaRemoteDataSources>(
    () => NumberTriviaRemoteDataSourcesImpl(client: sl()),
  );

  sl.registerLazySingleton<NumberTriviaLocalDataSources>(
    () => NumberTriviaLocalDataSourcesImpl(sharedPreferences: sl()),
  );
  //! Core ....

  sl.registerLazySingleton(() => InputConverter.instance);
  sl.registerLazySingleton<NetworkInfo>(
    () => NetworkInfoImpl(connectionChecker: sl()),
  );

  //! External ...
  final sharedPreferences = await SharedPreferences.getInstance();
  sl.registerLazySingleton(() => sharedPreferences);
  sl.registerLazySingleton(() => http.Client());
  sl.registerLazySingleton(() => InternetConnectionChecker.instance);
  sl.registerLazySingleton(() => Mappr());
}
