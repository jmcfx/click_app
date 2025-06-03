import 'dart:convert';

import 'package:click_app/src/core/constants/storage.dart';
import 'package:click_app/src/core/errors/exceptions.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../models/number_trivia_models.dart';

abstract class NumberTriviaLocalDataSources {
  /// Cache the [ NumberTriviaModels ] locally.
  Future<void> cacheNumberTrivia(NumberTriviaModels triviaToCache);

  ///Get the cached [ NumberTriviaModels ] which was gotten the last time
  /// the user had an internet connection...
  ///  Throw [ CacheException  ] if no cached data is present
  Future<NumberTriviaModels> getLastNumberTriviaFromStorage();
}

class NumberTriviaLocalDataSourcesImpl implements NumberTriviaLocalDataSources {
  final SharedPreferences sharedPreferences;

  NumberTriviaLocalDataSourcesImpl({
    required this.sharedPreferences,
  }); // depends on shared Preference....

  @override
  /// set a String of key and value for sharePreferences.... Dart Model -> Dart Object[ Map<String,dynamic> ]toJson() ->  jsonEncode
  Future<void> cacheNumberTrivia(NumberTriviaModels triviaToCache) {
    return sharedPreferences.setString(
      Storage.cachedNumberTrivia,
      jsonEncode(triviaToCache.toJson()),
    );
  }

  @override
  ///get a String of key and value for sharePreferences.... jsonDecode -> Dart Object[ Map<String,dynamic> ]  ->  Dart Model.fromJson
  Future<NumberTriviaModels> getLastNumberTriviaFromStorage()async{
    final jsonString = sharedPreferences.getString(Storage.cachedNumberTrivia);
    if (jsonString case null) throw CacheException();
    return NumberTriviaModels.fromJson(jsonDecode(jsonString));
  }
}
