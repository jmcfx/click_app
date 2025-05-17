// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'number_trivia_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$NumberTriviaModels implements DiagnosticableTreeMixin {

@JsonKey(name: 'text') String get text;@JsonKey(name: 'number') int get number;
/// Create a copy of NumberTriviaModels
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NumberTriviaModelsCopyWith<NumberTriviaModels> get copyWith => _$NumberTriviaModelsCopyWithImpl<NumberTriviaModels>(this as NumberTriviaModels, _$identity);

  /// Serializes this NumberTriviaModels to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'NumberTriviaModels'))
    ..add(DiagnosticsProperty('text', text))..add(DiagnosticsProperty('number', number));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NumberTriviaModels&&(identical(other.text, text) || other.text == text)&&(identical(other.number, number) || other.number == number));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,text,number);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'NumberTriviaModels(text: $text, number: $number)';
}


}

/// @nodoc
abstract mixin class $NumberTriviaModelsCopyWith<$Res>  {
  factory $NumberTriviaModelsCopyWith(NumberTriviaModels value, $Res Function(NumberTriviaModels) _then) = _$NumberTriviaModelsCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'text') String text,@JsonKey(name: 'number') int number
});




}
/// @nodoc
class _$NumberTriviaModelsCopyWithImpl<$Res>
    implements $NumberTriviaModelsCopyWith<$Res> {
  _$NumberTriviaModelsCopyWithImpl(this._self, this._then);

  final NumberTriviaModels _self;
  final $Res Function(NumberTriviaModels) _then;

/// Create a copy of NumberTriviaModels
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? text = null,Object? number = null,}) {
  return _then(_self.copyWith(
text: null == text ? _self.text : text // ignore: cast_nullable_to_non_nullable
as String,number: null == number ? _self.number : number // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// @nodoc

@JsonSerializable(explicitToJson: true)
class _NumberTriviaModels with DiagnosticableTreeMixin implements NumberTriviaModels {
  const _NumberTriviaModels({@JsonKey(name: 'text') required this.text, @JsonKey(name: 'number') required this.number});
  factory _NumberTriviaModels.fromJson(Map<String, dynamic> json) => _$NumberTriviaModelsFromJson(json);

@override@JsonKey(name: 'text') final  String text;
@override@JsonKey(name: 'number') final  int number;

/// Create a copy of NumberTriviaModels
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NumberTriviaModelsCopyWith<_NumberTriviaModels> get copyWith => __$NumberTriviaModelsCopyWithImpl<_NumberTriviaModels>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$NumberTriviaModelsToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'NumberTriviaModels'))
    ..add(DiagnosticsProperty('text', text))..add(DiagnosticsProperty('number', number));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NumberTriviaModels&&(identical(other.text, text) || other.text == text)&&(identical(other.number, number) || other.number == number));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,text,number);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'NumberTriviaModels(text: $text, number: $number)';
}


}

/// @nodoc
abstract mixin class _$NumberTriviaModelsCopyWith<$Res> implements $NumberTriviaModelsCopyWith<$Res> {
  factory _$NumberTriviaModelsCopyWith(_NumberTriviaModels value, $Res Function(_NumberTriviaModels) _then) = __$NumberTriviaModelsCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'text') String text,@JsonKey(name: 'number') int number
});




}
/// @nodoc
class __$NumberTriviaModelsCopyWithImpl<$Res>
    implements _$NumberTriviaModelsCopyWith<$Res> {
  __$NumberTriviaModelsCopyWithImpl(this._self, this._then);

  final _NumberTriviaModels _self;
  final $Res Function(_NumberTriviaModels) _then;

/// Create a copy of NumberTriviaModels
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? text = null,Object? number = null,}) {
  return _then(_NumberTriviaModels(
text: null == text ? _self.text : text // ignore: cast_nullable_to_non_nullable
as String,number: null == number ? _self.number : number // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
