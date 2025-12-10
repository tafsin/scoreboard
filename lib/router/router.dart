import 'package:go_router/go_router.dart';

import '../presentation/pages/edit_screen.dart';
import '../presentation/pages/home_screen.dart';

final router = GoRouter(
  routes: [
    GoRoute(
      path: '/view',
      builder: (_, __) => const HomeScreen(),
    ),
    GoRoute(
      path: '/edit',
      builder: (_, __) => const EditScreen(),
    ),
  ],
  initialLocation: '/view',
);
