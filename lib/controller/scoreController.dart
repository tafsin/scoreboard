import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:riverpod/riverpod.dart';

import '../repository/score_proider.dart';

class ScoreController extends Notifier<void>{
  DocumentReference get _ref => ref.read(matchRefProvider);
  @override
  void build() {
    // No state, so leave empty
  }



  Future<void> incrementA(){
    return _ref.update({"teamA":FieldValue.increment(1)});
  }
  Future<void> incrementB(){
    return _ref.update({"teamB":FieldValue.increment(1)});
  }
  Future<void> decrementA(){
    return _ref.update({"teamA":FieldValue.increment(-1)});
  }
  Future<void> decrementB(){
    return _ref.update({"teamB":FieldValue.increment(-1)});
  }
}

final scoreControllerProvider = NotifierProvider<ScoreController, void>(()=>ScoreController());