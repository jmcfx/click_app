import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

import '../errors/failures.dart';

abstract interface class UseCase<Type, Params > {
  Future<Either<Failure, Type>> call(Params params);
}

//use case that don't take params
 class NoParams extends Equatable {
  @override
  List<Object?> get props => [];
}

