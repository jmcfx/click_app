import 'package:auto_mappr_annotation/auto_mappr_annotation.dart';
import 'package:click_app/src/features/number_trivia/data/models/number_trivia_models.dart';
import 'package:click_app/src/features/number_trivia/domain/entities/numbers_entity.dart';

import 'map.auto_mappr.dart';

@AutoMappr([MapType<NumberTriviaModels, NumbersEntity>()])
class Mappr extends $Mappr {}
