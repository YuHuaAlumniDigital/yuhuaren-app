import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:yuhuaren_app/home/drawer.dart';

import '../navigation/buttom_nav_bar.dart';
import '../activity/card.dart';
import '../activity/filter.dart';
import '../shared/color.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        backgroundColor: background.first,
        flexibleSpace: Container(
          margin: EdgeInsets.fromLTRB(0, 0, 20, 0),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/first_page_logo.png'),
              scale: 3.5,
              fit: BoxFit.scaleDown,
              alignment: Alignment.bottomRight,
            ),
          ),
        ),
      ),
      drawer: HomeDrawer(),
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
          colors: background,
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        )),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: ListView(
            children: [
              Text(
                'Hi, Yin Chuang Sum',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text(
                'Welcome to Yu Hua Alumni',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20.0),
                child: ActivityTypeFilter(filters: ['SJKC', 'SMJK'],),
              ),
              // Text(
              //   'Upcoming Events',
              //   style: TextStyle(fontSize: 16),
              // ),
              // Container(
              //   height: 300,
              //   child: ListView.separated(
              //       scrollDirection: Axis.horizontal,
              //       itemCount: 10,
              //       itemBuilder: (BuildContext context, int index) =>
              //           ActivityCard(data: data),
              //       separatorBuilder: (BuildContext context, int index) =>
              //           SizedBox(
              //             width: 10,
              //           )),
              // ),
              // Text(
              //   'Joined Events',
              //   style: TextStyle(fontSize: 16),
              // ),
              // Container(
              //   height: 300,
              //   child: ListView.separated(
              //       scrollDirection: Axis.horizontal,
              //       itemCount: 10,
              //       itemBuilder: (BuildContext context, int index) =>
              //           ActivityCard(data: data),
              //       separatorBuilder: (BuildContext context, int index) =>
              //           SizedBox(
              //             width: 10,
              //           )),
              // ),
              // Text(
              //   'Past Events',
              //   style: TextStyle(fontSize: 16),
              // ),
              // Container(
              //   height: 130,
              //   child: ListView.separated(
              //       scrollDirection: Axis.horizontal,
              //       itemCount: 10,
              //       itemBuilder: (BuildContext context, int index) =>
              //           MinimizedActivityCard(data: data),
              //       separatorBuilder: (BuildContext context, int index) =>
              //           SizedBox(
              //             width: 10,
              //           )),
              // )
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}
