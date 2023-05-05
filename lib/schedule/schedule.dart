import 'package:flutter/material.dart';
import 'package:yuhuaren_app/activity/tile.dart';
import 'package:yuhuaren_app/shared/color.dart';

import '../navigation/buttom_nav_bar.dart';
import 'calendar.dart';

class ScheduleScreen extends StatelessWidget {
  const ScheduleScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: background.first,
        title: Text('Schedule'),
        centerTitle: false,
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: background,
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(25.0, 25, 25, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Calendar(),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 10.0, 0, 40),
                child: Align(
                  alignment: AlignmentDirectional.center,
                  child: Wrap(
                    alignment: WrapAlignment.spaceEvenly,
                    runAlignment: WrapAlignment.spaceEvenly,
                    spacing: 16,
                    runSpacing: 8,
                    children: const [
                      Marker(
                        label: 'Today',
                        color: secondary,
                      ),
                      Marker(
                        label: 'Joined',
                        color: primary,
                      ),
                      Marker(
                        label: 'Events of the day',
                        color: Color(0xffB0B0FF),
                      ),
                    ],
                  ),
                ),
              ),
              Text(
                'Events of the month',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              Expanded(
                child: ListView(
                  children: cards,
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavBar(),
    );
  }

  get cards {
    List<Widget> widgets = [];
    for (int i = 0; i < 100; i++) {
      widgets.add(const EventTile());
    }
    return widgets;
  }
}
