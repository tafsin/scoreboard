// ignore_for_file: annotate_overrides

import 'package:freezed_annotation/freezed_annotation.dart';

part 'score_model.freezed.dart';
part 'score_model.g.dart';

@freezed
@JsonSerializable()
class ScoreModel with _$ScoreModel {
  const ScoreModel({
    required this.teamAName,
    required this.teamBName,
    required this.teamAScore,
    required this.teamBScore,
  });

  factory ScoreModel.fromJson(Map<String, dynamic> json) =>
      _$ScoreModelFromJson(json);

  final String teamAName;
  final String teamBName;
  final int teamAScore;
  final int teamBScore;

  Map<String, dynamic> toJson() => _$ScoreModelToJson(this);
}
