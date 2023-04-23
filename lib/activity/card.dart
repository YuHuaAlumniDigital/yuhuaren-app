import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:yuhuaren_app/shared/color.dart';

class ActivityCard extends StatefulWidget {
  final String title = 'Chinese New Year Ceremony';

  final String date = '11/1/2024 Saturday, at 6.30p.m.';

  final String tag = 'SJKC';

  final bool liked = true;

  const ActivityCard({
    super.key,
  });

  @override
  State<ActivityCard> createState() => _ActivityCardState();
}

class _ActivityCardState extends State<ActivityCard> {
  var _liked = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(
        maxWidth: 300,
      ),
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
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset(
                  'assets/images/test_activity.png',
                ),
              ),
              Container(
                child: Align(
                  alignment: Alignment.topRight,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      padding: EdgeInsets.symmetric(
                        horizontal: 12,
                        vertical: 8,
                      ),
                      child: DepartmentLabel(tag: widget.tag),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 16, 5, 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.title,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
                  child: Text(
                    widget.date,
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 9, 0, 10),
                  child: SizedBox(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: 220,
                          child: Text(
                            '.asdfasdfasdfasdfasdfadfadsfasdfasdfasdfasdfsdfasdfasdfasdfasdfasdfasddsaasdfsdsdfsdsdfasd',
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w300,
                                height: 1.4),
                          ),
                        ),
                        Spacer(),
                        IconButton(
                            padding: EdgeInsets.zero,
                            onPressed: () {
                              print(_liked.toString());
                              setState(() {
                                _liked = !_liked;
                              });
                            },
                            icon: Icon(
                              _liked
                                  ? Icons.favorite
                                  : Icons.favorite_border_outlined,
                              color: primary,
                              size: 26,
                            ))
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class DepartmentLabel extends StatelessWidget {
  const DepartmentLabel({
    super.key,
    required this.tag,
  });

  final String tag;

  @override
  Widget build(BuildContext context) {
    return Text(
      tag,
      style: TextStyle(
        color: primary,
        fontSize: 14,
        fontWeight: FontWeight.w500,
      ),
    );
  }
}

class MinimizedActivityCard extends StatelessWidget {
  final title = "Drawing Competition";
  final date = '13/3/2023';
  final time = 'Sunday 10:00am';
  final tag = 'SJKC';

  const MinimizedActivityCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // width: 250.0,
      // height: 120,
      constraints: BoxConstraints(maxHeight: 150, maxWidth: 330),
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
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(16.0, 0, 0, 0),
            child: Container(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 0, 8.0),
                    child: Text(
                      title,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  Text(
                    date,
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    time,
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 10.0, 0, 0),
                    child: PastEventStatus.JOINED.label,
                  ),
                ],
              ),
            ),
          ),
          Spacer(),
          Stack(
            children: [
              Container(
                width: 120,
                height: 130,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.red,
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.asset(
                    'assets/images/test_activity.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(
                width: 120,
                height: 130,
                child: Align(
                  alignment: Alignment.topRight,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      padding: EdgeInsets.symmetric(
                        horizontal: 12,
                        vertical: 8,
                      ),
                      child: DepartmentLabel(tag: tag),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class PastEventStatus {
  static final PastEventStatus MISSED =
      PastEventStatus('You missed it!', Color(0xffFFDFDF), Color(0xffB3261E));
  static final PastEventStatus JOINED =
      PastEventStatus('Joined!', Color(0xffBEEABD), Color(0xff178C0C));

  final String text;
  final Color background;
  final Color textColor;

  PastEventStatus(this.text, this.background, this.textColor);

  Widget get label {
    return Container(
      constraints: BoxConstraints(minWidth: 150),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: background,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 15.0),
        child: Text(
          text,
          style: TextStyle(
            color: textColor,
            fontSize: 14,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
    );
  }
}
