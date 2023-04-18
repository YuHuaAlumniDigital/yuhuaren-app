import 'dart:typed_data';

import 'package:flutter/material.dart';

class ActivityCard extends StatelessWidget {
  final Uint8List data;

  const ActivityCard({
    super.key,
    required this.data,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250.0,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12), color: Colors.grey),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.memory(data),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 0, 0, 8),
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('title'),
                          Text('subtitle'),
                        ],
                      ),
                      Spacer(),
                      ElevatedButton(onPressed: () {}, child: Text('SJKC'))
                    ],
                  ),
                ),
                Text('description.......\n'
                    '.......'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class MinimizedActivityCard extends StatelessWidget {
  final Uint8List data;

  const MinimizedActivityCard({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // width: 250.0,
      // height: 120,
      constraints: BoxConstraints(maxHeight: 120, maxWidth: 250),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.grey,
      ),
      child: Row(
        children: [
          Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Drawing Competition"),
              Text('13/3/2023'),
              Text('Sunday 10:00am'),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.red,
                ),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 8, horizontal: 15.0),
                  child: Text('You missed it!'),
                ),
              )
            ],
          ),
          Container(
            width: 110,
            height: 130,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Colors.red,
            ),
            child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.memory(
                  data,
                  fit: BoxFit.cover,
                )),
          ),
        ],
      ),
    );
  }
}
