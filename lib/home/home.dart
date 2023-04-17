import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:yuhuaren_app/home/drawer.dart';

import '../navigation/buttom_nav_bar.dart';
import 'activity/filter.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var base64 =
        "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";
    var data = const Base64Decoder().convert(base64);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        flexibleSpace: Container(
          decoration: BoxDecoration(
              // image: DecorationImage(image: MemoryImage(data), fit: BoxFit.scaleDown, alignment: Alignment.centerRight),
              ),
          child: Text(
            'LOGO',
            style: TextStyle(
              color: Colors.white,
              fontSize: 30,
            ),
          ),
          alignment: Alignment.bottomRight,
        ),
      ),
      drawer: HomeDrawer(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Hi, Yin Chuang Sum',
              style: TextStyle(fontSize: 20),
            ),
            Text(
              'Welcome to Yu Hua Alumni',
              style: TextStyle(fontSize: 28),
            ),
            ActivityTypeFilter(),
            Text(
              'Upcoming Events',
              style: TextStyle(fontSize: 16),
            ),
            Container(
              height: 300,
              child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemCount: 10,
                  itemBuilder: (BuildContext context, int index) => Container(
                        width: 250.0,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: Colors.grey),
                        child: Column(
                          children: [
                            Image.memory(data),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(0,0,0,8),
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
                      ),
                  separatorBuilder: (BuildContext context, int index) =>
                      SizedBox(
                        width: 10,
                      )),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}