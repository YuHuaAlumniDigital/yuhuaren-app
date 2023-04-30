import 'package:go_router/go_router.dart';
import 'package:yuhuaren_app/profile/profile.dart';
import 'package:yuhuaren_app/register/register.dart';
import 'package:yuhuaren_app/reset_password/reset_password.dart';
import 'package:yuhuaren_app/schedule/schedule.dart';

import 'activity/activity.dart';
import 'home/home.dart';
import 'login/login.dart';
import 'notification/notification.dart';
import 'otp/otp.dart';

const LOGIN_ROUTE = '/login';
const REGISTER_ROUTE = '/register';
const OTP_ROUTE = '/otp';
const RESET_PASSWORD_ROUTE = '/reset-password';
const HOME_ROUTE = '/home';
const PROFILE_ROUTE = '/profile';
const NOTIFICATION_ROUTE = '/notification';
const SCHEDULE_ROUTE = '/schedule';
const ACITIVTY_ROUTE = '/activity';

final GoRouter router = GoRouter(routes: [
  GoRoute(path: '/', redirect: (context, state) => HOME_ROUTE),
  GoRoute(
    path: LOGIN_ROUTE,
    builder: (context, state) => const LoginScreen(),
  ),
  GoRoute(
    path: REGISTER_ROUTE,
    builder: (context, state) => const RegisterScreen(),
  ),
  GoRoute(
    path: OTP_ROUTE,
    builder: (context, state) => const OtpScreen(),
  ),
  GoRoute(
    path: RESET_PASSWORD_ROUTE,
    builder: (context, state) => const ResetPasswordScreen(),
  ),
  GoRoute(
    path: HOME_ROUTE,
    builder: (context, state) => const HomeScreen(),
  ),
  GoRoute(
    path: PROFILE_ROUTE,
    builder: (context, state) => const ProfileScreen(),
  ),
  GoRoute(
    path: NOTIFICATION_ROUTE,
    builder: (context, state) => const NotificationScreen(),
  ),
  GoRoute(
    path: SCHEDULE_ROUTE,
    builder: (context, state) => const ScheduleScreen(),
  ),
  GoRoute(
    path: ACITIVTY_ROUTE,
    builder: (context, state) => const ActivityScreen(),
  ),
]);
