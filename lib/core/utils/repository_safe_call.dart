import 'package:click_app/core/errors/exceptions.dart';
import 'type_def.dart';

import '../errors/failures.dart';
import 'package:dartz/dartz.dart';

mixin RepositorySafeCall {
  Future<FailureOr<T>> safeCall<T>(Future<T> Function() call) async {
    try {
      final result = await call(); // await call ;
      return right(result);
    } on ServerException {
      return left(ServerFailure());
    } on CacheException {
      return left(CacheFailure());
    }
  }
}
