import 'package:calendar_date_picker2/calendar_date_picker2.dart';
import 'package:flutter/material.dart';
import 'package:yuhuaren_app/schedule/event.dart';

import '../navigation/buttom_nav_bar.dart';
import 'calendar.dart';

class ScheduleScreen extends StatelessWidget {
  const ScheduleScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text('Schedule'),
        centerTitle: false,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: CalendarDatePicker2(
                config: CalendarDatePicker2Config(), value: []),
          ),
          Wrap(
            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            alignment: WrapAlignment.spaceEvenly,
            runAlignment: WrapAlignment.spaceEvenly,
            spacing: 16,
            runSpacing: 8,
            children: const [
              Marker(
                label: 'Today',
                color: Colors.red,
              ),
              Marker(
                label: 'Joined',
                color: Colors.blue,
              ),
              Marker(
                label: 'Events of the day',
                color: Colors.green,
              ),
            ],
          ),
          const Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'Events of the month',
              ),
            ),
          ),
          Expanded(
            child: ListView(
              children: cards,
            ),
          )
        ],
      ),
      bottomNavigationBar: BottomNavBar(),
    );
  }

  get cards {
    List<Widget> widgets = [];
    for (int i= 0; i < 100; i++) {
      widgets.add(const EventCard());
    }
    return widgets;
  }
}
