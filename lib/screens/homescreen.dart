import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:scoreboard/bloc/score_bloc.dart';
import 'package:scoreboard/bloc/score_state.dart';
import 'package:scoreboard/components/teamDescription.dart';
import 'package:scoreboard/components/appBackGround.dart';
import 'package:scoreboard/components/scorecard.dart';
import 'package:scoreboard/components/teamsScores.dart';



class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
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
                      TeamsScores(score: scoreModel.teamAScore),
                      SizedBox(width: 5,),
                      Icon(Icons.remove, size: 30, color: Colors.grey),
                      SizedBox(width: 5,),
                      TeamsScores(score: scoreModel.teamBScore),
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

