import '../models/number_trivia_models.dart';

abstract class NumberTriviaLocalDataSources {
  /// Cache the [ NumberTriviaModels ] locally.
  Future<void> cacheNumberTrivia(NumberTriviaModels triviaToCache);

  ///Get the cached [ NumberTriviaModels ] which was gotten the last time
  /// the user had an internet connection...
  ///  Throw [ CacheException  ] if no cached data is present
  Future<NumberTriviaModels?> getLastNumberTriviaFromStorage();
}
