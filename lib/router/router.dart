import 'package:go_router/go_router.dart';
import 'package:scoreboard/screens/homescreen.dart';


final router = GoRouter(
  routes: [
    GoRoute(
      path: '/view',
      builder: (_, __) => const HomeScreen(),
    ),
    GoRoute(
      path: '/edit',
      builder: (_, __) => const HomeScreen(),
    ),
  ],
  initialLocation: '/view',
);
