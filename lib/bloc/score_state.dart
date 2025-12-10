import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:scoreboard/model/score_model.dart';

@immutable
abstract class ScoreState extends Equatable{
  @override
  List<Object?> get props => [];

}
class ScoreInitial extends ScoreState{}
class ScoreLoadInProgress extends ScoreState {}
class ScoreLoadSuccess extends ScoreState{
  final ScoreModel scoreModel;
  ScoreLoadSuccess(this.scoreModel);
  @override
  List<Object?> get props => [scoreModel];
}
class ScoreLoadFailure extends ScoreState{
  final String error;
  ScoreLoadFailure (this.error);
  @override
  List<Object?> get props => [error];
}