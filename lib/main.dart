import 'package:flutter/material.dart';
import 'package:flutter_localization/flutter_localization.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
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
import 'package:yuhuaren_app/shared/locale.dart';
import 'package:yuhuaren_app/theme.dart';

import 'activity/activity.dart';

void main() {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (_) => DummyNotifier()),
    ],
    child: const MyApp(),
  ));
}

final GoRouter _router = GoRouter(routes: [
  GoRoute(path: '/', redirect: (context, state) => '/login'),
  GoRoute(
    path: '/login',
    builder: (context, state) => const LoginScreen(),
  ),
  GoRoute(
    path: '/register',
    builder: (context, state) => const RegisterScreen(),
  ),
  GoRoute(
    path: '/otp',
    builder: (context, state) => const OtpScreen(),
  ),
  GoRoute(
    path: '/reset-password',
    builder: (context, state) => const ResetPasswordScreen(),
  ),
  GoRoute(
    path: '/home',
    builder: (context, state) => const HomeScreen(),
  ),
  GoRoute(
    path: '/profile',
    builder: (context, state) => const ProfileScreen(),
  ),
  GoRoute(
    path: '/notification',
    builder: (context, state) => const NotificationScreen(),
  ),
  GoRoute(
    path: '/schedule',
    builder: (context, state) => const ScheduleScreen(),
  ),
  GoRoute(
    path: '/activity/:id',
    builder: (context, state) => const ActivityScreen(),
  ),
]);

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final FlutterLocalization _localization = FlutterLocalization.instance;

  @override
  void initState() {
    _localization.init(
      mapLocales: [
        const MapLocale('en', AppLocale.EN),
        const MapLocale('cn', AppLocale.CN),
      ],
      initLanguageCode: 'en',
    );
    _localization.onTranslatedLanguage = _onTranslatedLanguage;
    FlutterNativeSplash.remove();
    super.initState();
  }

  void _onTranslatedLanguage(Locale? locale) {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _router,
      supportedLocales: _localization.supportedLocales,
      localizationsDelegates: _localization.localizationsDelegates,
      theme: themeData,
    );
  }
}

class DummyNotifier extends ChangeNotifier {}
