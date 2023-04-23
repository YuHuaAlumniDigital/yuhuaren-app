import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:yuhuaren_app/shared/color.dart';

final navBarItems = NavBarRouter([
  NavBarItem(icon: Icons.view_agenda_outlined, label: 'Home', route: '/home'),
  NavBarItem(
    icon: Icons.calendar_today_outlined,
    label: 'Schedule',
    route: '/schedule',
  ),
  NavBarItem(
    icon: Icons.notifications_none_outlined,
    label: 'Notification',
    route: '/notification',
    number: 1,
  ),
  NavBarItem(
    icon: Icons.account_circle_outlined,
    label: 'Profile',
    route: '/profile',
  ),
]);

class NavBarItem {
  final IconData icon;
  final String label;
  final String route;
  final int? number;

  NavBarItem(
      {required this.icon,
      required this.label,
      required this.route,
      this.number});

  BottomNavigationBarItem get bottomNavBarItem {
    return BottomNavigationBarItem(
      icon: _hasNumber() ? NumberOnTop(child: nonActive) : nonActive,
      activeIcon: _hasNumber() ? NumberOnTop(child: active) : active,
      label: label,
    );
  }

  bool _hasNumber() => number != null && number! > 0 ;

  Widget get active {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0),
      child: Container(
        constraints: const BoxConstraints(minWidth: 64, minHeight: 32),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16), color: primary),
        child: Icon(
          icon,
          color: Colors.white,
        ),
      ),
    );
  }

  Widget get nonActive {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0),
      child: Container(
        constraints: const BoxConstraints(minWidth: 64, minHeight: 32),
        child: Icon(
          icon,
          color: primary,
        ),
      ),
    );
  }
}

class NumberOnTop extends StatelessWidget {
  final Widget child;

  const NumberOnTop({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      child,
      Positioned(
        right: 18,
        top: 5,
        child: Container(
          padding: EdgeInsets.all(1),
          decoration: BoxDecoration(
            color: Color(0xffB3261E),
            shape: BoxShape.circle
          ),
          constraints: BoxConstraints(
            minWidth: 14,
            minHeight: 14,
          ),
          child: Text(
            '1',
            style: new TextStyle(
              color: Colors.white,
              fontSize: 10,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      )
    ]);
  }
}

class NavBarRouter {
  final List<NavBarItem> items;
  final int defaultIdx = 0;
  late NavBarItem defaultItem;
  late Map<String, int> routeMap;
  late final List<BottomNavigationBarItem> bottomNavBarItem;

  NavBarRouter(this.items) {
    defaultItem = items.first;
    routeMap = _generateMap(items);
    bottomNavBarItem =
        items.map((item) => item.bottomNavBarItem).toList(growable: false);
  }

  Map<String, int> _generateMap(List<NavBarItem> items) {
    return items
        .asMap()
        .map((index, item) => MapEntry<String, int>(item.route, index));
  }

  String getRouteByIndex(int idx) {
    if (idx < items.length) {
      return items[idx].route;
    }

    return defaultItem.route;
  }

  int getIdxByRoute(String route) {
    return routeMap[route] ?? defaultIdx;
  }
}

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final currentIndex = getCurrentIndex(context);

    var children = navBarItems.bottomNavBarItem;

    return Container(
      decoration: const BoxDecoration(
          border: Border(
        top: BorderSide(
          color: Color(0xff979797),
        ),
      )),
      child: BottomNavigationBar(
        items: children,
        currentIndex: currentIndex,
        selectedItemColor: primary,
        onTap: (idx) {
          route(context, idx);
        },
        unselectedItemColor: primary,
        showUnselectedLabels: true,
        selectedFontSize: 12,
        unselectedFontSize: 12,
      ),
    );
  }

  void route(BuildContext context, int idx) {
    context.go(getRoute(idx));
  }

  int getCurrentIndex(BuildContext context) {
    return getIdx(GoRouter.of(context).location);
  }

  String getRoute(int idx) => navBarItems.getRouteByIndex(idx);

  int getIdx(String route) => navBarItems.getIdxByRoute(route);
}
