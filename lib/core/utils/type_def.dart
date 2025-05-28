import 'package:click_app/core/errors/failures.dart';
import 'package:dartz/dartz.dart';

typedef FailureOr<T> = Either<Failure, T>;
