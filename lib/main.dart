import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:yuhuaren_app/home/home.dart';
import 'package:yuhuaren_app/login/login.dart';
import 'package:yuhuaren_app/notification/notification.dart';
import 'package:yuhuaren_app/otp/otp.dart';
import 'package:yuhuaren_app/profile/profile.dart';
import 'package:yuhuaren_app/register/register.dart';
import 'package:yuhuaren_app/reset_password/reset_password.dart';
import 'package:yuhuaren_app/schedule/schedule.dart';

import 'activity/activity.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (_) => DummyNotifier()),
    ],
    child: const MyApp(),
  ));
}

final GoRouter _router = GoRouter(routes: [
  GoRoute(path: '/', redirect: (context, state) => '/login'),
  GoRoute(path: '/login', builder: (context, state) => const LoginScreen()),
  GoRoute(
      path: '/register', builder: (context, state) => const RegisterScreen()),
  GoRoute(path: '/otp', builder: (context, state) => const OtpScreen()),
  GoRoute(
    path: '/reset-password',
    builder: (context, state) => const ResetPasswordScreen(),
  ),
  GoRoute(
    path: '/home',
    builder: (context, state) => const HomeScreen(),
  ),
  GoRoute(path: '/profile', builder: (context, state) => const ProfileScreen()),
  GoRoute(path: '/notification', builder: (context, state) => const NotificationScreen()),
  GoRoute(path: '/schedule', builder: (context, state) => const ScheduleScreen()),
  GoRoute(path: '/activity/:id', builder: (context, state) => const ActivityScreen()),
]);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _router,
    );
  }
}

class DummyScreen extends StatelessWidget {
  const DummyScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('hello world'),
      ),
    );
  }
}

class DummyNotifier extends ChangeNotifier {}
