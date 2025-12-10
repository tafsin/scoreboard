// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'score_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ScoreModelImpl _$$ScoreModelImplFromJson(Map<String, dynamic> json) =>
    _$ScoreModelImpl(
      teamAName: json['teamAName'] as String,
      teamBName: json['teamBName'] as String,
      teamAScore: (json['teamAScore'] as num).toInt(),
      teamBScore: (json['teamBScore'] as num).toInt(),
    );

Map<String, dynamic> _$$ScoreModelImplToJson(_$ScoreModelImpl instance) =>
    <String, dynamic>{
      'teamAName': instance.teamAName,
      'teamBName': instance.teamBName,
      'teamAScore': instance.teamAScore,
      'teamBScore': instance.teamBScore,
    };
