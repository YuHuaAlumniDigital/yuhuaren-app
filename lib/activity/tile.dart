import 'package:flutter/material.dart';
import 'package:yuhuaren_app/shared/color.dart';

class EventTile extends StatelessWidget {
  const EventTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var eventTypes = EventTypes.UPCOMING;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Color(0xff4DA5A4DE),
              blurRadius: 2,
              spreadRadius: 0,
            ),
            BoxShadow(
              color: Color(0xff406664CC),
              blurRadius: 14,
              spreadRadius: 0,
              offset: Offset(0, 1),
            ),
          ],
        ),
        constraints: BoxConstraints(minHeight: 70),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(10.0, 0, 0, 0),
              child: eventTypes.label,
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(20.0, 0, 10, 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Event 1',
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Text(
                      'DD/MM/YYYY     12:12:00 PM',
                      style: TextStyle(
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: eventTypes.icon,
            ),
          ],
        ),
      ),
    );
  }
}

class EventTypes {
  static final JOINED =
      EventTypes('Joined', const Color(0xff178C0C), Icons.add_alarm);

  static final UPCOMING = EventTypes(
      'Upcoming', const Color(0xffEF5DA8), Icons.add_to_photos_outlined);

  final String text;
  final Color color;
  final IconData iconData;

  EventTypes(this.text, this.color, this.iconData) {}

  Widget get label {
    return Container(
      constraints: BoxConstraints(minHeight: 30, minWidth: 85),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: color, width: 2),
        // color: Color(0xff178C0C),
      ),
      child: Center(
          child: Text(
        text,
        style:
            TextStyle(color: color, fontSize: 14, fontWeight: FontWeight.w500),
      )),
    );
  }

  Widget get icon {
    return Icon(
      iconData,
      color: primary,
    );
  }
}
