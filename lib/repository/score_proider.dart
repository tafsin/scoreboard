import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:riverpod/riverpod.dart';

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