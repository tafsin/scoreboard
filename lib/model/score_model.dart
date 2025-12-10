import 'package:freezed_annotation/freezed_annotation.dart';

part 'score_model.freezed.dart';
part 'score_model.g.dart';
@freezed
class ScoreModel with _$ScoreModel{
 const  factory ScoreModel({
    required String teamAName,
    required String teamBName,
    required int teamAScore,
    required int teamBScore,

}) = _ScoreModel;



  factory ScoreModel.fromJson(Map<String, dynamic> json) => _$ScoreModelFromJson(json);

}