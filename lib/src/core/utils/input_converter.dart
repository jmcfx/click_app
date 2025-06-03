import 'package:click_app/src/core/utils/type_def.dart';
import 'package:dartz/dartz.dart';

import '../errors/failures.dart';

class InputConverter {
  const InputConverter._();

  static const instance = InputConverter._();

  FailureOr<int> stringToUnsignedInteger(String str) {
    final number = int.tryParse(str);
    if (number == null || number < 0) {
      return left(InvalidInputFailure());
    }
    return right(number);
  }
}
