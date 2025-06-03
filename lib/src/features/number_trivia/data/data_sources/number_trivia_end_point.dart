class NumberTriviaEndpoints {
  NumberTriviaEndpoints._();
  static const String baseUrl = 'http://numbersapi.com';

  static String concrete(int number) => '$baseUrl/$number?json';
  static String random() => '$baseUrl/random?json';
}
