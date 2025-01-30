// uygulamada sayfalari ve navigasyon islemlerini burada tanimlicaz

import 'package:flutter/material.dart';
import 'package:flutter_app/screens/drink_screen.dart';
import 'package:flutter_app/screens/login_screen.dart';
import 'package:flutter_app/screens/register_screen.dart';
import 'package:flutter_app/screens/shopping_screen.dart';
import 'package:flutter_app/screens/sweet_screen.dart';
import 'package:go_router/go_router.dart';
import '../screens/loading_screen.dart';
import '../screens/home_screen.dart';

// Router yapılandırması
final router = GoRouter(
  initialLocation: '/', // Başlangıç rotası
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const LoadingScreen(),
    ),
    GoRoute(
      path: '/home',
      builder: (context, state) => const HomeScreen(),
    ),
    GoRoute(
      path: '/drinks',
      builder: (context, state) => const DrinkScreen(),
    ),
    GoRoute(
      path: '/sweet',
      builder: (context, state) => const SweetScreen(),
    ),
    GoRoute(
      path: '/shopping',
      builder: (context, state) => const ShoppingScreen(),
    ),
    GoRoute(
      path: '/login',
      builder: (context, state) => const LoginScreen(),
    ),
    GoRoute(
      path: '/register',
      builder: (context, state) => const RegisterScreen(),
    ),
  ],
);
