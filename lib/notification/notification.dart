import 'package:flutter/material.dart';

import '../navigation/buttom_nav_bar.dart';
import '../shared/color.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: background.first,
        title: Text('Notification'),
        centerTitle: false,
        flexibleSpace: Container(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: InkWell(
              child: Text('Clear All'),
              onTap: () {},
            ),
          ),
          alignment: Alignment.bottomRight,
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: background,
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: ListView(
          children: [
            ListTile(
              title: Text("Sum Yin Chuang"),
              subtitle: Text('teseting subtitle'),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}
