import 'dart:convert';

import 'package:click_app/src/core/errors/exceptions.dart';
import 'package:click_app/src/features/number_trivia/data/models/number_trivia_models.dart';
import 'package:http/http.dart' as https;

abstract class NumberTriviaRemoteDataSources {
  ///calls the http://numbersapi.com/{number}   endpoint
  /// throws a [ServerException] for all error codes.
  Future<NumberTriviaModels> getConcreteNumberTriviaFromApi(int number);

  ///Calls the http://numberapi.com/random endpoint
  /// throws a [ServerException] for all error codes.
  Future<NumberTriviaModels> getRandomNumberTriviaFromApi();
}

class NumberTriviaRemoteDataSourcesImpl
    implements NumberTriviaRemoteDataSources {
  final https.Client client;

  NumberTriviaRemoteDataSourcesImpl({required this.client});
  @override
  Future<NumberTriviaModels> getConcreteNumberTriviaFromApi(int number) =>
      _getNumberTriviaModels(url: 'http://numbersapi.com/$number?json');

  @override
  Future<NumberTriviaModels> getRandomNumberTriviaFromApi() =>
      _getNumberTriviaModels(url: 'http://numbersapi.com/random?json');


//created a private function that takes the url as param and returns a model....
  Future<NumberTriviaModels> _getNumberTriviaModels({
    required String url,
  }) async {
    final response = await client.get(
      Uri.parse(url),
    );
    if (response.statusCode case 200) {
      final Map<String,dynamic> jsonResponse = jsonDecode(response.body);
      return NumberTriviaModels.fromJson(jsonResponse);
    }
    throw ServerException();
  }
}
