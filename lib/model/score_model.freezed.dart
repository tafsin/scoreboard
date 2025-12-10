// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'score_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ScoreModel _$ScoreModelFromJson(Map<String, dynamic> json) {
  return _ScoreModel.fromJson(json);
}

/// @nodoc
mixin _$ScoreModel {
  String get teamAName => throw _privateConstructorUsedError;
  String get teamBName => throw _privateConstructorUsedError;
  int get teamAScore => throw _privateConstructorUsedError;
  int get teamBScore => throw _privateConstructorUsedError;

  /// Serializes this ScoreModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ScoreModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ScoreModelCopyWith<ScoreModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScoreModelCopyWith<$Res> {
  factory $ScoreModelCopyWith(
          ScoreModel value, $Res Function(ScoreModel) then) =
      _$ScoreModelCopyWithImpl<$Res, ScoreModel>;
  @useResult
  $Res call(
      {String teamAName, String teamBName, int teamAScore, int teamBScore});
}

/// @nodoc
class _$ScoreModelCopyWithImpl<$Res, $Val extends ScoreModel>
    implements $ScoreModelCopyWith<$Res> {
  _$ScoreModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ScoreModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? teamAName = null,
    Object? teamBName = null,
    Object? teamAScore = null,
    Object? teamBScore = null,
  }) {
    return _then(_value.copyWith(
      teamAName: null == teamAName
          ? _value.teamAName
          : teamAName // ignore: cast_nullable_to_non_nullable
              as String,
      teamBName: null == teamBName
          ? _value.teamBName
          : teamBName // ignore: cast_nullable_to_non_nullable
              as String,
      teamAScore: null == teamAScore
          ? _value.teamAScore
          : teamAScore // ignore: cast_nullable_to_non_nullable
              as int,
      teamBScore: null == teamBScore
          ? _value.teamBScore
          : teamBScore // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ScoreModelImplCopyWith<$Res>
    implements $ScoreModelCopyWith<$Res> {
  factory _$$ScoreModelImplCopyWith(
          _$ScoreModelImpl value, $Res Function(_$ScoreModelImpl) then) =
      __$$ScoreModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String teamAName, String teamBName, int teamAScore, int teamBScore});
}

/// @nodoc
class __$$ScoreModelImplCopyWithImpl<$Res>
    extends _$ScoreModelCopyWithImpl<$Res, _$ScoreModelImpl>
    implements _$$ScoreModelImplCopyWith<$Res> {
  __$$ScoreModelImplCopyWithImpl(
      _$ScoreModelImpl _value, $Res Function(_$ScoreModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ScoreModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? teamAName = null,
    Object? teamBName = null,
    Object? teamAScore = null,
    Object? teamBScore = null,
  }) {
    return _then(_$ScoreModelImpl(
      teamAName: null == teamAName
          ? _value.teamAName
          : teamAName // ignore: cast_nullable_to_non_nullable
              as String,
      teamBName: null == teamBName
          ? _value.teamBName
          : teamBName // ignore: cast_nullable_to_non_nullable
              as String,
      teamAScore: null == teamAScore
          ? _value.teamAScore
          : teamAScore // ignore: cast_nullable_to_non_nullable
              as int,
      teamBScore: null == teamBScore
          ? _value.teamBScore
          : teamBScore // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ScoreModelImpl implements _ScoreModel {
  const _$ScoreModelImpl(
      {required this.teamAName,
      required this.teamBName,
      required this.teamAScore,
      required this.teamBScore});

  factory _$ScoreModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ScoreModelImplFromJson(json);

  @override
  final String teamAName;
  @override
  final String teamBName;
  @override
  final int teamAScore;
  @override
  final int teamBScore;

  @override
  String toString() {
    return 'ScoreModel(teamAName: $teamAName, teamBName: $teamBName, teamAScore: $teamAScore, teamBScore: $teamBScore)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ScoreModelImpl &&
            (identical(other.teamAName, teamAName) ||
                other.teamAName == teamAName) &&
            (identical(other.teamBName, teamBName) ||
                other.teamBName == teamBName) &&
            (identical(other.teamAScore, teamAScore) ||
                other.teamAScore == teamAScore) &&
            (identical(other.teamBScore, teamBScore) ||
                other.teamBScore == teamBScore));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, teamAName, teamBName, teamAScore, teamBScore);

  /// Create a copy of ScoreModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ScoreModelImplCopyWith<_$ScoreModelImpl> get copyWith =>
      __$$ScoreModelImplCopyWithImpl<_$ScoreModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ScoreModelImplToJson(
      this,
    );
  }
}

abstract class _ScoreModel implements ScoreModel {
  const factory _ScoreModel(
      {required final String teamAName,
      required final String teamBName,
      required final int teamAScore,
      required final int teamBScore}) = _$ScoreModelImpl;

  factory _ScoreModel.fromJson(Map<String, dynamic> json) =
      _$ScoreModelImpl.fromJson;

  @override
  String get teamAName;
  @override
  String get teamBName;
  @override
  int get teamAScore;
  @override
  int get teamBScore;

  /// Create a copy of ScoreModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ScoreModelImplCopyWith<_$ScoreModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
