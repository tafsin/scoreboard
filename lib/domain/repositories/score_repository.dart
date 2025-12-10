import 'package:scoreboard/data/models/score_model.dart';

abstract interface class IScoreRepository {
  Stream<ScoreModel> getScore();
  Future<void> updateScore(ScoreModel score);
}
