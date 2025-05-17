import 'package:click_app/features/number_trivia/data/models/number_trivia_models.dart';

abstract class NumberTriviaRemoteDataSources {
  ///calls the http://numbersapi.com/{number}   endpoint 
  /// throws a [ServerException] for all error codes.
  Future<NumberTriviaModels> getConcreteNumberTriviaApi(int number);

 ///Calls the http://numberapi.com/random endpoint
 /// throws a [ServerException] for all error codes.
 Future<NumberTriviaModels> getRandomNumberTriviaFromApi();
}
