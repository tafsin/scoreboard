import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:scoreboard/domain/repositories/score_repository.dart';

import '../models/score_model.dart';

class ScoreRepository implements IScoreRepository {
  const ScoreRepository(this._firestore);

  final FirebaseFirestore _firestore;

  @override
  Stream<ScoreModel> getScore() {
    final docRef = _firestore.collection('scoreboard').doc('match1');
    return docRef.snapshots().map((snap) {
      final data = snap.data();
      if (data != null) {
        return ScoreModel.fromJson(data);
      } else {
        throw Exception('No score data found');
      }
    });
  }

  @override
  Future<void> updateScore(ScoreModel score) async {
    await _firestore
        .collection('scoreboard')
        .doc('match1')
        .update(score.toJson());
  }
}
