// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'number_trivia_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$NumberTriviaState implements DiagnosticableTreeMixin {

 ViewState get viewState; int? get number; String? get trivia; String? get errorMessage;
/// Create a copy of NumberTriviaState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NumberTriviaStateCopyWith<NumberTriviaState> get copyWith => _$NumberTriviaStateCopyWithImpl<NumberTriviaState>(this as NumberTriviaState, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'NumberTriviaState'))
    ..add(DiagnosticsProperty('viewState', viewState))..add(DiagnosticsProperty('number', number))..add(DiagnosticsProperty('trivia', trivia))..add(DiagnosticsProperty('errorMessage', errorMessage));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NumberTriviaState&&(identical(other.viewState, viewState) || other.viewState == viewState)&&(identical(other.number, number) || other.number == number)&&(identical(other.trivia, trivia) || other.trivia == trivia)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,viewState,number,trivia,errorMessage);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'NumberTriviaState(viewState: $viewState, number: $number, trivia: $trivia, errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class $NumberTriviaStateCopyWith<$Res>  {
  factory $NumberTriviaStateCopyWith(NumberTriviaState value, $Res Function(NumberTriviaState) _then) = _$NumberTriviaStateCopyWithImpl;
@useResult
$Res call({
 ViewState viewState, int? number, String? trivia, String? errorMessage
});




}
/// @nodoc
class _$NumberTriviaStateCopyWithImpl<$Res>
    implements $NumberTriviaStateCopyWith<$Res> {
  _$NumberTriviaStateCopyWithImpl(this._self, this._then);

  final NumberTriviaState _self;
  final $Res Function(NumberTriviaState) _then;

/// Create a copy of NumberTriviaState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? viewState = null,Object? number = freezed,Object? trivia = freezed,Object? errorMessage = freezed,}) {
  return _then(_self.copyWith(
viewState: null == viewState ? _self.viewState : viewState // ignore: cast_nullable_to_non_nullable
as ViewState,number: freezed == number ? _self.number : number // ignore: cast_nullable_to_non_nullable
as int?,trivia: freezed == trivia ? _self.trivia : trivia // ignore: cast_nullable_to_non_nullable
as String?,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// @nodoc


class _NumberTriviaState with DiagnosticableTreeMixin implements NumberTriviaState {
  const _NumberTriviaState([this.viewState = ViewState.idle, this.number, this.trivia, this.errorMessage]);
  

@override@JsonKey() final  ViewState viewState;
@override final  int? number;
@override final  String? trivia;
@override final  String? errorMessage;

/// Create a copy of NumberTriviaState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NumberTriviaStateCopyWith<_NumberTriviaState> get copyWith => __$NumberTriviaStateCopyWithImpl<_NumberTriviaState>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'NumberTriviaState'))
    ..add(DiagnosticsProperty('viewState', viewState))..add(DiagnosticsProperty('number', number))..add(DiagnosticsProperty('trivia', trivia))..add(DiagnosticsProperty('errorMessage', errorMessage));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NumberTriviaState&&(identical(other.viewState, viewState) || other.viewState == viewState)&&(identical(other.number, number) || other.number == number)&&(identical(other.trivia, trivia) || other.trivia == trivia)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,viewState,number,trivia,errorMessage);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'NumberTriviaState(viewState: $viewState, number: $number, trivia: $trivia, errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class _$NumberTriviaStateCopyWith<$Res> implements $NumberTriviaStateCopyWith<$Res> {
  factory _$NumberTriviaStateCopyWith(_NumberTriviaState value, $Res Function(_NumberTriviaState) _then) = __$NumberTriviaStateCopyWithImpl;
@override @useResult
$Res call({
 ViewState viewState, int? number, String? trivia, String? errorMessage
});




}
/// @nodoc
class __$NumberTriviaStateCopyWithImpl<$Res>
    implements _$NumberTriviaStateCopyWith<$Res> {
  __$NumberTriviaStateCopyWithImpl(this._self, this._then);

  final _NumberTriviaState _self;
  final $Res Function(_NumberTriviaState) _then;

/// Create a copy of NumberTriviaState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? viewState = null,Object? number = freezed,Object? trivia = freezed,Object? errorMessage = freezed,}) {
  return _then(_NumberTriviaState(
null == viewState ? _self.viewState : viewState // ignore: cast_nullable_to_non_nullable
as ViewState,freezed == number ? _self.number : number // ignore: cast_nullable_to_non_nullable
as int?,freezed == trivia ? _self.trivia : trivia // ignore: cast_nullable_to_non_nullable
as String?,freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc
mixin _$NumberTriviaEvent implements DiagnosticableTreeMixin {




@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'NumberTriviaEvent'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NumberTriviaEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'NumberTriviaEvent()';
}


}

/// @nodoc
class $NumberTriviaEventCopyWith<$Res>  {
$NumberTriviaEventCopyWith(NumberTriviaEvent _, $Res Function(NumberTriviaEvent) __);
}


/// @nodoc


class _NumberStringEvent with DiagnosticableTreeMixin implements NumberTriviaEvent {
  const _NumberStringEvent(this.numberString);
  

 final  String numberString;

/// Create a copy of NumberTriviaEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NumberStringEventCopyWith<_NumberStringEvent> get copyWith => __$NumberStringEventCopyWithImpl<_NumberStringEvent>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'NumberTriviaEvent.numberStringEvent'))
    ..add(DiagnosticsProperty('numberString', numberString));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NumberStringEvent&&(identical(other.numberString, numberString) || other.numberString == numberString));
}


@override
int get hashCode => Object.hash(runtimeType,numberString);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'NumberTriviaEvent.numberStringEvent(numberString: $numberString)';
}


}

/// @nodoc
abstract mixin class _$NumberStringEventCopyWith<$Res> implements $NumberTriviaEventCopyWith<$Res> {
  factory _$NumberStringEventCopyWith(_NumberStringEvent value, $Res Function(_NumberStringEvent) _then) = __$NumberStringEventCopyWithImpl;
@useResult
$Res call({
 String numberString
});




}
/// @nodoc
class __$NumberStringEventCopyWithImpl<$Res>
    implements _$NumberStringEventCopyWith<$Res> {
  __$NumberStringEventCopyWithImpl(this._self, this._then);

  final _NumberStringEvent _self;
  final $Res Function(_NumberStringEvent) _then;

/// Create a copy of NumberTriviaEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? numberString = null,}) {
  return _then(_NumberStringEvent(
null == numberString ? _self.numberString : numberString // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _RandomEvent with DiagnosticableTreeMixin implements NumberTriviaEvent {
  const _RandomEvent();
  





@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'NumberTriviaEvent.randomEvent'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RandomEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'NumberTriviaEvent.randomEvent()';
}


}




// dart format on
