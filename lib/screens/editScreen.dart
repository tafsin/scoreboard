import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:scoreboard/components/editScore.dart';
import 'package:scoreboard/components/teamScore.dart';
import 'package:scoreboard/components/appBackGround.dart';
import 'package:scoreboard/components/scorecard.dart';
import 'package:scoreboard/repository/score_proider.dart';
import '../components/teamDescription.dart';
import '../controller/scoreController.dart';

class EditScreen extends ConsumerWidget {
  const EditScreen({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final score = ref.watch(scoreStreamProvider);
    final controller = ref.read(scoreControllerProvider.notifier);
    return Scaffold(
        body: score.when(data: (scored){
          if (scored == null ) return Center(child: Text("No Data"),);
          final data = scored as Map<String, dynamic>;
          int teamA = data['teamA'];
          int teamB = data['teamB'];
          return LayoutBuilder(
              builder: (_, constraints) {
                return AppBackGround(
                    child: Center(
                      child: Scorecard(
                        child: Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment:  CrossAxisAlignment.center,
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Teamdescription(name: data["teamAName"], image: "assets/images/TeamA.png"),
                                  EditScore(score: teamA, onIncrement: controller.incrementA, onDecrement: controller.decrementA),
                                ],
                              ),
                              Teamscore(teamAScore: teamA, teamBScore: teamB),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Teamdescription(name: data["teamBName"], image: "assets/images/TeamB.png"),
                                  EditScore(score: teamB, onIncrement: controller.incrementB, onDecrement: controller.decrementB),
                                ],
                              ),



                            ],
                          ),
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



