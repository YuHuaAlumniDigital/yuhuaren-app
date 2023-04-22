import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:time/time.dart';
import 'package:yuhuaren_app/shared/color.dart';
import 'package:yuhuaren_app/shared/extension/date.dart';

class Calendar extends StatefulWidget {
  const Calendar({Key? key}) : super(key: key);

  @override
  State<Calendar> createState() => _CalendarState();
}

class _CalendarState extends State<Calendar> {
  var calendarFormat = CalendarFormat.month;
  var focusedDay = DateTime.now().date;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Color(0xff4DA5A4DE),
            blurRadius: 2,
            spreadRadius: 1,
          ),
          BoxShadow(
            color: Color(0xff406664CC),
            blurRadius: 14,
            spreadRadius: 2,
            offset: Offset(0, 4),
          ),
        ],
      ),
      child: TableCalendar(
        focusedDay: focusedDay,
        firstDay: (DateTime.now() - 520.weeks).firstDayOfYear,
        lastDay: (DateTime.now() + 520.weeks).firstDayOfYear,
        calendarFormat: calendarFormat,
        availableCalendarFormats: const {
          CalendarFormat.month: 'Month',
        },
        pageJumpingEnabled: true,
        daysOfWeekStyle: DaysOfWeekStyle(
          dowTextFormatter: (time, locale) => time.calendarDay,
        ),
        headerStyle: HeaderStyle(
          titleCentered: true,
          leftChevronIcon: const Icon(
            Icons.chevron_left,
            color: primary,
          ),
          rightChevronIcon: const Icon(
            Icons.chevron_right,
            color: primary,
          ),
        ),
      ),
    );
  }
}

class Marker extends StatelessWidget {
  final String label;
  final Color color;
  final double textSize;
  final FontWeight? fontWeight;
  final double gap;

  const Marker({
    Key? key,
    required this.label,
    required this.color,
    this.textSize = 14,
    this.gap = 8,
    this.fontWeight = FontWeight.w400,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      child: Row(
        children: [
          Container(
              width: markerSize,
              height: markerSize,
              decoration: BoxDecoration(color: color, shape: BoxShape.circle)),
          Padding(
            padding: EdgeInsets.fromLTRB(gap, 0, 0, 0),
            child: Text(
              label,
              style: TextStyle(fontSize: textSize, fontWeight: fontWeight),
            ),
          )
        ],
      ),
    );
  }

  get markerSize {
    return textSize * 2;
  }
}
