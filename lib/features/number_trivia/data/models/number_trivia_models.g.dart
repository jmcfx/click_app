// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'number_trivia_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_NumberTriviaModels _$NumberTriviaModelsFromJson(Map<String, dynamic> json) =>
    _NumberTriviaModels(
      text: json['text'] as String,
      number: (json['number'] as num).toInt(),
    );

Map<String, dynamic> _$NumberTriviaModelsToJson(_NumberTriviaModels instance) =>
    <String, dynamic>{'text': instance.text, 'number': instance.number};
