// ignore_for_file: invalid_annotation_target

import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'number_trivia_models.freezed.dart';

part 'number_trivia_models.g.dart';

@freezed
abstract class NumberTriviaModels with _$NumberTriviaModels {
  @JsonSerializable(explicitToJson: true)
  const factory NumberTriviaModels({
    @JsonKey(name: 'text') required String text,
    @JsonKey(name: 'number') required int number,
  }) = _NumberTriviaModels;
  
  factory NumberTriviaModels.fromJson(Map<String, dynamic> json) =>
      _$NumberTriviaModelsFromJson(json);
}
