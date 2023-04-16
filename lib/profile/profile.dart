import 'package:flutter/material.dart';
import 'package:yuhuaren_app/shared/bottom_nav_bar/buttom_nav_bar.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
        centerTitle: false,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text('profile'),
          ),
          TextFormField(decoration: InputDecoration(labelText: 'Username', suffix: InkWell(child: Text('edit'), onTap: (){},)), initialValue: 'xxx', enabled: false,)
        ],
      ),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}
