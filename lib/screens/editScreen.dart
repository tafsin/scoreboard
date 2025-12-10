import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:scoreboard/bloc/score_event.dart';
import 'package:scoreboard/components/appBackGround.dart';
import 'package:scoreboard/components/scorecard.dart';
import '../bloc/score_bloc.dart';
import '../bloc/score_state.dart';
import '../components/teamDescription.dart';
import '../components/teamsScores.dart';

class EditScreen extends StatelessWidget {
  const EditScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: BlocBuilder<ScoreBloc,ScoreState>
          (builder: (context,state){
          if(state is ScoreLoadInProgress){
            return Center(child: CircularProgressIndicator(),);
          }
          else if (state is ScoreLoadSuccess){
            final scoreModel = state.scoreModel;
            return AppBackGround(
              child: Scorecard(child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Teamdescription(name: scoreModel.teamAName, image: "assets/images/TeamA.png"),
                    SizedBox(width: 10,),
                    TeamsScores(score: scoreModel.teamAScore, onIncrement: () => context.read<ScoreBloc>().add(IncrementTeamA()),
                        onDecrement: () => context.read<ScoreBloc>().add(DecrementTeamA()),),
                    SizedBox(width: 5,),
                    Icon(Icons.remove, size: 30, color: Colors.grey),
                    SizedBox(width: 5,),
                    TeamsScores(score: scoreModel.teamBScore, onIncrement: () => context.read<ScoreBloc>().add(IncrementTeamB()),
                      onDecrement: () => context.read<ScoreBloc>().add(DecrementTeamB()),),
                    SizedBox(width: 10,),
                    Teamdescription(name: scoreModel.teamBName, image: "assets/images/TeamB.png"),
                  ],
                ),
              ),
              ),
            );
          }
          else{
            return Center( child: Text('No Data'),);
          }
        }
        )

    );
  }
}



