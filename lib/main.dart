import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:scoreboard/bloc/score_bloc.dart';
import 'package:scoreboard/bloc/score_event.dart';
import 'package:scoreboard/repository/score_repository.dart';
import 'package:scoreboard/router/router.dart';


Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: FirebaseOptions(apiKey: "AIzaSyCrrI2-VU11btnYX-KPfiFqVtJLAcKS3No", 
    appId: "1:866108553184:web:e16f8069044034d596dd85", 
    messagingSenderId: "866108553184", 
    projectId: "my-app-548b8")
  );
  final repository = ScoreRepository();
  runApp(
    BlocProvider(create: (context) => ScoreBloc(repository: repository)..add(LoadScore()),
    child: MyApp(),),

  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      routerConfig: router,
    );
  }
}


