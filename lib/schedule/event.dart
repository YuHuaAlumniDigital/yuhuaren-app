import 'package:flutter/material.dart';

class EventCard extends StatelessWidget {
  const EventCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Row(
        children: [
          Expanded(
              child: ListTile(
            title: Text('Event 1'),
            subtitle: Text('DD/MM/YYYY HH:mm:SS AM'),
          )),
          ElevatedButton(
            onPressed: () {},
            child: Text('Set Reminder'),
            style: ButtonStyle(
                shape: MaterialStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18)))),
          )
        ],
      ),
    );
  }
}
