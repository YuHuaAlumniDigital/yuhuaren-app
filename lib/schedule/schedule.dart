import 'package:flutter/material.dart';

import '../navigation/buttom_nav_bar.dart';

class ScheduleScreen extends StatelessWidget {
  const ScheduleScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Schedule'),
        centerTitle: false,
      ),
      body: Column(
        children: [
          Center(child: Text('schedule'),)
        ],
      ),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}
