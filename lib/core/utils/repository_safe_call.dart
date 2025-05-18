import 'package:click_app/core/errors/exceptions.dart';

import '../errors/failures.dart';
import 'package:dartz/dartz.dart';

mixin RepositorySafeCall {
  Future<Either<Failure, T>> safeCall<T>(Future<T> Function() call) async {
    try {
      final result = await call(); // await call ;
      return right(result);
    } on ServerException {
      return left(ServerFailure());
    }
  }
}
