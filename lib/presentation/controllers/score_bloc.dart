import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:scoreboard/data/models/score_model.dart';
import 'package:scoreboard/data/repositories/score_repository.dart';

part 'score_event.dart';
part 'score_state.dart';

class ScoreBloc extends Bloc<ScoreEvent, ScoreState> {
  ScoreBloc(this._repository) : super(const ScoreInitial()) {
    on<LoadScore>(loadScore);
    on<IncrementTeamA>(_incrementTeamA);
    on<DecrementTeamA>(decrementTeamA);
    on<IncrementTeamB>(incrementTeamB);
    on<DecrementTeamB>(decrementTeamB);

    _score = _repository.getScore().listen((event) {
      add(LoadScore(event));
    });
  }

  final ScoreRepository _repository;
  late final StreamSubscription<ScoreModel> _score;

  @override
  Future<void> close() {
    _score.cancel();
    return super.close();
  }

  FutureOr<void> loadScore(event, emit) async {
    emit(ScoreLoadSuccess(event.score));
  }

  FutureOr<void> decrementTeamB(event, emit) async {
    if (state is ScoreLoadSuccess) {
      final currentScore = (state as ScoreLoadSuccess).scoreModel;
      final updateScore = currentScore.copyWith(
        teamBScore: currentScore.teamAScore - 1,
      );
      emit(ScoreLoadSuccess(updateScore));
      try {
        await _repository.updateScore(updateScore);
      } catch (e) {
        print(e.toString());
      }
    }
  }

  FutureOr<void> incrementTeamB(event, emit) async {
    if (state is ScoreLoadSuccess) {
      final currentScore = (state as ScoreLoadSuccess).scoreModel;
      final updateScore = currentScore.copyWith(
        teamBScore: currentScore.teamBScore + 1,
      );
      emit(ScoreLoadSuccess(updateScore));
      try {
        await _repository.updateScore(updateScore);
      } catch (e) {
        print(e.toString());
      }
    }
  }

  FutureOr<void> decrementTeamA(event, emit) async {
    if (state is ScoreLoadSuccess) {
      final currentScore = (state as ScoreLoadSuccess).scoreModel;
      final updateScore = currentScore.copyWith(
        teamAScore: currentScore.teamAScore - 1,
      );
      emit(ScoreLoadSuccess(updateScore));
      try {
        await _repository.updateScore(updateScore);
      } catch (e) {
        print(e.toString());
      }
    }
  }

  FutureOr<void> _incrementTeamA(event, emit) async {
    if (state is ScoreLoadSuccess) {
      final currentScore = (state as ScoreLoadSuccess).scoreModel;
      final updateScore = currentScore.copyWith(
        teamAScore: currentScore.teamAScore + 1,
      );
      emit(ScoreLoadSuccess(updateScore));
      try {
        await _repository.updateScore(updateScore);
      } catch (e) {
        print(e.toString());
      }
    }
  }
}
