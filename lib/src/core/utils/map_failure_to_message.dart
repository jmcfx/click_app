import 'package:click_app/src/core/utils/app_error_message.dart';

import '../errors/failures.dart';

String mapFailureToMessage(Failure param) {
  return switch (param) {
    CacheFailure() => AppErrorMessages.cacheFailure,
    ServerFailure() => AppErrorMessages.serverFailure,
    _ => AppErrorMessages.invalidInputFailure, 
  };
}
