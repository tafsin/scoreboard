part of 'score_bloc.dart';

sealed class ScoreEvent extends Equatable {
  const ScoreEvent();

  @override
  List<Object?> get props => [];
}

class LoadScore extends ScoreEvent {
  const LoadScore(this.score);

  final ScoreModel score;
}

class IncrementTeamA extends ScoreEvent {
  const IncrementTeamA();
}

class IncrementTeamB extends ScoreEvent {
  const IncrementTeamB();
}

class DecrementTeamA extends ScoreEvent {
  const DecrementTeamA();
}

class DecrementTeamB extends ScoreEvent {
  const DecrementTeamB();
}
