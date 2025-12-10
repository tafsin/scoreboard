import 'package:scoreboard/bloc/score_event.dart';
import 'package:scoreboard/bloc/score_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:scoreboard/model/score_model.dart';
import 'package:scoreboard/repository/score_repository.dart';

class ScoreBloc extends Bloc<ScoreEvent, ScoreState>{
  final ScoreRepository repository;
  late final Stream<ScoreModel> _score;
  ScoreBloc({required this.repository}):super(ScoreInitial()){
    _score = repository.getScore();

    on<LoadScore>((event, emit) async {

     try{
      await emit.forEach<ScoreModel>(
      _score,
          onData:(data)=> ScoreLoadSuccess(data),
          onError: (e, stackTrace) => ScoreLoadFailure(e.toString())
      );
     }
     catch(e){
       emit(ScoreLoadFailure(e.toString()));
     }
    });

    on<IncrementTeamA>((event,emit) async {
     if (state is ScoreLoadSuccess){
       final currentScore =  (state as ScoreLoadSuccess).scoreModel;
       final updateScore = currentScore.copyWith(teamAScore: currentScore.teamAScore +1);
       emit(ScoreLoadSuccess(updateScore));
       try{
         await repository.updateScore(updateScore);
       }
       catch(e){
         print(e.toString());

       }
     }

    });

    on<DecrementTeamA>((event,emit) async {
      if (state is ScoreLoadSuccess){
        final currentScore =  (state as ScoreLoadSuccess).scoreModel;
        final updateScore = currentScore.copyWith(teamAScore: currentScore.teamAScore - 1);
        emit(ScoreLoadSuccess(updateScore));
        try{
          await repository.updateScore(updateScore);
        }
        catch(e){
          print(e.toString());

        }
      }

    });

    on<IncrementTeamB>((event,emit) async {
      if (state is ScoreLoadSuccess){
        final currentScore =  (state as ScoreLoadSuccess).scoreModel;
        final updateScore = currentScore.copyWith(teamBScore: currentScore.teamBScore + 1);
        emit(ScoreLoadSuccess(updateScore));
        try{
          await repository.updateScore(updateScore);
        }
        catch(e){
          print(e.toString());

        }
      }

    });
    on<DecrementTeamB>((event,emit) async {
      if (state is ScoreLoadSuccess){
        final currentScore =  (state as ScoreLoadSuccess).scoreModel;
        final updateScore = currentScore.copyWith(teamBScore: currentScore.teamAScore - 1);
        emit(ScoreLoadSuccess(updateScore));
        try{
          await repository.updateScore(updateScore);
        }
        catch(e){
          print(e.toString());

        }
      }

    });



  }

}