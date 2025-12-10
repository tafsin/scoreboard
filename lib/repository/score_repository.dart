import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:riverpod/riverpod.dart';
import 'package:scoreboard/model/score_model.dart';

class ScoreRepository{
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  Stream<ScoreModel>getScore(){
    final docRef = _firestore.collection("scoreboard").doc("match1");
    return docRef.snapshots().map((snap) {
      final data = snap.data();
      if (data != null) {
        return ScoreModel.fromJson(data);
      } else {
        throw Exception('No score data found');
      }
    });
  }

  Future<void> updateScore(ScoreModel score) async {
    await _firestore.collection("scoreboard").doc("match1").update(score.toJson());
  }

}

final matchRefProvider = Provider<DocumentReference>((ref){
  return FirebaseFirestore.instance.collection("scoreboard").doc('match1');
});

final scoreStreamProvider = StreamProvider.autoDispose((ref) {
  final docRef = ref.watch(matchRefProvider);
  return docRef.snapshots().map((snap) {
    final data = snap.data();
    return data;
  });
});