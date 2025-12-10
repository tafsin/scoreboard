part of 'score_bloc.dart';

abstract class ScoreState extends Equatable {
  const ScoreState();

  @override
  List<Object?> get props => [];
}

class ScoreInitial extends ScoreState {
  const ScoreInitial();
}

class ScoreLoadInProgress extends ScoreState {
  const ScoreLoadInProgress();
}

class ScoreLoadSuccess extends ScoreState {
  const ScoreLoadSuccess(this.scoreModel);

  final ScoreModel scoreModel;
  @override
  List<Object?> get props => [scoreModel];
}

class ScoreLoadFailure extends ScoreState {
  const ScoreLoadFailure(this.error);

  final String error;

  @override
  List<Object?> get props => [error];
}
