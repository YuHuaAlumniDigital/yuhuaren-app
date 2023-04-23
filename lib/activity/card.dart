import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:yuhuaren_app/shared/color.dart';

class ActivityCard extends StatelessWidget {
  final String title = 'Chinese New Year Ceremony';
  final String date = '11/1/2024 Saturday, at 6.30p.m.';
  final String tag = 'SJKC';

  const ActivityCard({
    super.key,
  });

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
                            child: Text(
                              tag,
                              style: TextStyle(
                                color: primary,
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                              ),
                            )),
                      ))),
            ],
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 16, 5, 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
                  child: Text(
                    date,
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
                            onPressed: () {},
                            icon: Icon(
                              Icons.favorite,
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

class MinimizedActivityCard extends StatelessWidget {
  const MinimizedActivityCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // width: 250.0,
      // height: 120,
      constraints: BoxConstraints(maxHeight: 120, maxWidth: 300),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.white,
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
                child: Image.asset(
                  'assets/images/test_activity.png',
                  fit: BoxFit.cover,
                ),
            ),
          ),
        ],
      ),
    );
  }
}
