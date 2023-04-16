import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.schedule),
          label: 'Schedule',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.notifications),
          label: 'Notification',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: 'Profile',
        ),
      ],
      currentIndex: getCurrentIndex(context),
      selectedItemColor: Colors.black,
      onTap: (idx) {
        route(context, idx);
      },
      unselectedItemColor: Colors.grey,
      showUnselectedLabels: true,
      selectedFontSize: 12,
      unselectedFontSize: 12,
    );
  }

  String getRoute(int idx) {
    switch (idx) {
      case 1:
        return '/schedule';
      case 2:
        return '/notification';
      case 3:
        return '/profile';
      case 0:
      default:
        return '/home';
    }
  }

  int getIdx(String route) {
    switch (route) {
      case '/schedule':
        return 1;
      case '/notification':
        return 2;
      case '/profile':
        return 3;
      case '/home':
      default:
        return 0;
    }
  }

  void route(BuildContext context, int idx) {
    context.go(getRoute(idx));
  }

  int getCurrentIndex(BuildContext context) {
    return getIdx(GoRouter.of(context).location);
  }
}
