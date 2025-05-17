import 'package:click_app/features/number_trivia/data/models/number_trivia_models.dart';

abstract class NumberTriviaLocalDataSources {
  Future<NumberTriviaModels> getLastNumberTriviaFromStorage();

}
 