import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:scoreboard/components/teamDescription.dart';
import 'package:scoreboard/components/teamScore.dart';
import 'package:scoreboard/components/appBackGround.dart';
import 'package:scoreboard/components/scorecard.dart';
import 'package:scoreboard/repository/score_proider.dart';


class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final score = ref.watch(scoreStreamProvider);
    return Scaffold(
      body: score.when(data: (scored){
            if (scored == null ) return Center(child: Text("No Data"),);
            final data = scored as Map<String, dynamic>;
            int teamA = data['teamA'];
            int teamB = data['teamB'];
            return LayoutBuilder(
              builder: (_, constraints) {
                return AppBackGround(
                        child: Scorecard(
                        child: Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Teamdescription(name: data["teamAName"], image: "assets/images/TeamA.png"),
                              Teamscore(teamAScore: teamA, teamBScore: teamB),
                              Teamdescription(name: data["teamBName"], image: "assets/images/TeamB.png"),

                            ],
                          ),
                        ),
                      ),
                    );


              }
            );
          },
            loading: () => Center(child: CircularProgressIndicator()),
            error: (e, _){
              print(e.toString());
              return Center(child: Text(e.toString()));
            }

          )

    );
  }
}

