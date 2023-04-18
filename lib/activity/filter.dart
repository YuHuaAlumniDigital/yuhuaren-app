import 'package:flutter/material.dart';

class ActivityTypeFilter extends StatefulWidget {
  const ActivityTypeFilter({Key? key}) : super(key: key);

  @override
  State<ActivityTypeFilter> createState() => _ActivityTypeFilterState();
}

class _ActivityTypeFilterState extends State<ActivityTypeFilter> {
  @override
  Widget build(BuildContext context) {
    return Wrap(
      // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      spacing: 16,
      runSpacing: 8,
      children: [
        ElevatedButton(
          onPressed: () {},
          child: Text(
            'All',
            style: TextStyle(fontSize: 16),
          ),
          style: ButtonStyle(
              shape: MaterialStateProperty.all(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18)))),
        ),
        ElevatedButton(
          onPressed: () {},
          child: Text(
            'SJKC',
            style: TextStyle(fontSize: 16),
          ),
          style: ButtonStyle(
              shape: MaterialStateProperty.all(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18)))),
        ),
        ElevatedButton(
          onPressed: () {},
          child: Text(
            'SMJK',
            style: TextStyle(fontSize: 16),
          ),
          style: ButtonStyle(
              shape: MaterialStateProperty.all(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18)))),
        ),
      ],
    );
  }
}