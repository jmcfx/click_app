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

 ViewState get viewState; String? get success; String? get errorMessage;
/// Create a copy of NumberTriviaState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NumberTriviaStateCopyWith<NumberTriviaState> get copyWith => _$NumberTriviaStateCopyWithImpl<NumberTriviaState>(this as NumberTriviaState, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'NumberTriviaState'))
    ..add(DiagnosticsProperty('viewState', viewState))..add(DiagnosticsProperty('success', success))..add(DiagnosticsProperty('errorMessage', errorMessage));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NumberTriviaState&&(identical(other.viewState, viewState) || other.viewState == viewState)&&(identical(other.success, success) || other.success == success)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,viewState,success,errorMessage);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'NumberTriviaState(viewState: $viewState, success: $success, errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class $NumberTriviaStateCopyWith<$Res>  {
  factory $NumberTriviaStateCopyWith(NumberTriviaState value, $Res Function(NumberTriviaState) _then) = _$NumberTriviaStateCopyWithImpl;
@useResult
$Res call({
 ViewState viewState, String? success, String? errorMessage
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
@pragma('vm:prefer-inline') @override $Res call({Object? viewState = null,Object? success = freezed,Object? errorMessage = freezed,}) {
  return _then(_self.copyWith(
viewState: null == viewState ? _self.viewState : viewState // ignore: cast_nullable_to_non_nullable
as ViewState,success: freezed == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as String?,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// @nodoc


class _NumberTriviaState with DiagnosticableTreeMixin implements NumberTriviaState {
  const _NumberTriviaState([this.viewState = ViewState.idle, this.success, this.errorMessage]);
  

@override@JsonKey() final  ViewState viewState;
@override final  String? success;
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
    ..add(DiagnosticsProperty('viewState', viewState))..add(DiagnosticsProperty('success', success))..add(DiagnosticsProperty('errorMessage', errorMessage));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NumberTriviaState&&(identical(other.viewState, viewState) || other.viewState == viewState)&&(identical(other.success, success) || other.success == success)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,viewState,success,errorMessage);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'NumberTriviaState(viewState: $viewState, success: $success, errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class _$NumberTriviaStateCopyWith<$Res> implements $NumberTriviaStateCopyWith<$Res> {
  factory _$NumberTriviaStateCopyWith(_NumberTriviaState value, $Res Function(_NumberTriviaState) _then) = __$NumberTriviaStateCopyWithImpl;
@override @useResult
$Res call({
 ViewState viewState, String? success, String? errorMessage
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
@override @pragma('vm:prefer-inline') $Res call({Object? viewState = null,Object? success = freezed,Object? errorMessage = freezed,}) {
  return _then(_NumberTriviaState(
null == viewState ? _self.viewState : viewState // ignore: cast_nullable_to_non_nullable
as ViewState,freezed == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as String?,freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc
mixin _$NumberTriviaEvent implements DiagnosticableTreeMixin {

 String? get numberString;
/// Create a copy of NumberTriviaEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NumberTriviaEventCopyWith<NumberTriviaEvent> get copyWith => _$NumberTriviaEventCopyWithImpl<NumberTriviaEvent>(this as NumberTriviaEvent, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'NumberTriviaEvent'))
    ..add(DiagnosticsProperty('numberString', numberString));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NumberTriviaEvent&&(identical(other.numberString, numberString) || other.numberString == numberString));
}


@override
int get hashCode => Object.hash(runtimeType,numberString);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'NumberTriviaEvent(numberString: $numberString)';
}


}

/// @nodoc
abstract mixin class $NumberTriviaEventCopyWith<$Res>  {
  factory $NumberTriviaEventCopyWith(NumberTriviaEvent value, $Res Function(NumberTriviaEvent) _then) = _$NumberTriviaEventCopyWithImpl;
@useResult
$Res call({
 String? numberString
});




}
/// @nodoc
class _$NumberTriviaEventCopyWithImpl<$Res>
    implements $NumberTriviaEventCopyWith<$Res> {
  _$NumberTriviaEventCopyWithImpl(this._self, this._then);

  final NumberTriviaEvent _self;
  final $Res Function(NumberTriviaEvent) _then;

/// Create a copy of NumberTriviaEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? numberString = freezed,}) {
  return _then(_self.copyWith(
numberString: freezed == numberString ? _self.numberString : numberString // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// @nodoc


class _NumberString with DiagnosticableTreeMixin implements NumberTriviaEvent {
  const _NumberString(this.numberString);
  

@override final  String? numberString;

/// Create a copy of NumberTriviaEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NumberStringCopyWith<_NumberString> get copyWith => __$NumberStringCopyWithImpl<_NumberString>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'NumberTriviaEvent.numberString'))
    ..add(DiagnosticsProperty('numberString', numberString));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NumberString&&(identical(other.numberString, numberString) || other.numberString == numberString));
}


@override
int get hashCode => Object.hash(runtimeType,numberString);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'NumberTriviaEvent.numberString(numberString: $numberString)';
}


}

/// @nodoc
abstract mixin class _$NumberStringCopyWith<$Res> implements $NumberTriviaEventCopyWith<$Res> {
  factory _$NumberStringCopyWith(_NumberString value, $Res Function(_NumberString) _then) = __$NumberStringCopyWithImpl;
@override @useResult
$Res call({
 String? numberString
});




}
/// @nodoc
class __$NumberStringCopyWithImpl<$Res>
    implements _$NumberStringCopyWith<$Res> {
  __$NumberStringCopyWithImpl(this._self, this._then);

  final _NumberString _self;
  final $Res Function(_NumberString) _then;

/// Create a copy of NumberTriviaEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? numberString = freezed,}) {
  return _then(_NumberString(
freezed == numberString ? _self.numberString : numberString // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
