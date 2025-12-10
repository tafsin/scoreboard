import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../controllers/score_bloc.dart';
import '../widgets/app_background.dart';
import '../widgets/scorecard.dart';
import '../widgets/team_description.dart';
import '../widgets/teams_scores.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<ScoreBloc, ScoreState>(
        builder: (context, state) {
          return switch (state) {
            ScoreInitial() => const Center(
              child: Text('No Data'),
            ),
            ScoreLoadInProgress() => const Center(
              child: CircularProgressIndicator(),
            ),
            ScoreLoadFailure() => const Center(
              child: Text('Failed to load score'),
            ),
            ScoreLoadSuccess(:final scoreModel) => AppBackGround(
              child: Scorecard(
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Teamdescription(
                        name: scoreModel.teamAName,
                        image: 'assets/images/TeamA.png',
                      ),
                      const SizedBox(width: 10),
                      TeamsScores(score: scoreModel.teamAScore),
                      const SizedBox(width: 5),
                      const Icon(Icons.remove, size: 30, color: Colors.grey),
                      const SizedBox(width: 5),
                      TeamsScores(score: scoreModel.teamBScore),
                      const SizedBox(width: 10),
                      Teamdescription(
                        name: scoreModel.teamBName,
                        image: 'assets/images/TeamB.png',
                      ),
                    ],
                  ),
                ),
              ),
            ),
            _ => const Center(
              child: Text('No Data'),
            ),
          };
        },
      ),
    );
  }
}
