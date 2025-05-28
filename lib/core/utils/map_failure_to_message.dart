import 'package:click_app/core/utils/app_error_message.dart';

import '../errors/failures.dart';

String mapFailureToMessage(Failure param) {
  return switch (param) {
    CacheFailure() => AppErrorMessages.cacheFailure,
    _ => AppErrorMessages.serverFailure,
  };
}
