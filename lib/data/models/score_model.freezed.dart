// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'score_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ScoreModel {

 String get teamAName; String get teamBName; int get teamAScore; int get teamBScore;
/// Create a copy of ScoreModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ScoreModelCopyWith<ScoreModel> get copyWith => _$ScoreModelCopyWithImpl<ScoreModel>(this as ScoreModel, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ScoreModel&&(identical(other.teamAName, teamAName) || other.teamAName == teamAName)&&(identical(other.teamBName, teamBName) || other.teamBName == teamBName)&&(identical(other.teamAScore, teamAScore) || other.teamAScore == teamAScore)&&(identical(other.teamBScore, teamBScore) || other.teamBScore == teamBScore));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,teamAName,teamBName,teamAScore,teamBScore);

@override
String toString() {
  return 'ScoreModel(teamAName: $teamAName, teamBName: $teamBName, teamAScore: $teamAScore, teamBScore: $teamBScore)';
}


}

/// @nodoc
abstract mixin class $ScoreModelCopyWith<$Res>  {
  factory $ScoreModelCopyWith(ScoreModel value, $Res Function(ScoreModel) _then) = _$ScoreModelCopyWithImpl;
@useResult
$Res call({
 String teamAName, String teamBName, int teamAScore, int teamBScore
});




}
/// @nodoc
class _$ScoreModelCopyWithImpl<$Res>
    implements $ScoreModelCopyWith<$Res> {
  _$ScoreModelCopyWithImpl(this._self, this._then);

  final ScoreModel _self;
  final $Res Function(ScoreModel) _then;

/// Create a copy of ScoreModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? teamAName = null,Object? teamBName = null,Object? teamAScore = null,Object? teamBScore = null,}) {
  return _then(ScoreModel(
teamAName: null == teamAName ? _self.teamAName : teamAName // ignore: cast_nullable_to_non_nullable
as String,teamBName: null == teamBName ? _self.teamBName : teamBName // ignore: cast_nullable_to_non_nullable
as String,teamAScore: null == teamAScore ? _self.teamAScore : teamAScore // ignore: cast_nullable_to_non_nullable
as int,teamBScore: null == teamBScore ? _self.teamBScore : teamBScore // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [ScoreModel].
extension ScoreModelPatterns on ScoreModel {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({required TResult orElse(),}){
final _that = this;
switch (_that) {
case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(){
final _that = this;
switch (_that) {
case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(){
final _that = this;
switch (_that) {
case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({required TResult orElse(),}) {final _that = this;
switch (_that) {
case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>() {final _that = this;
switch (_that) {
case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>() {final _that = this;
switch (_that) {
case _:
  return null;

}
}

}

// dart format on
