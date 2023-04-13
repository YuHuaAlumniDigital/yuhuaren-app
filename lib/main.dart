import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:yuhuaren_app/login/login.dart';
import 'package:yuhuaren_app/register/register.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (_) => DummyNotifier()),
    ],
    child: const MyApp(),
  ));
}

final GoRouter _router = GoRouter(routes: [
  GoRoute(path: '/', redirect: (context, state) => '/register'),
  GoRoute(path: '/login', builder: (context, state) => const LoginScreen()),
  GoRoute(path: '/register', builder: (context, state) => const RegisterScreen()),
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
