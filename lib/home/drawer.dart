import 'package:flutter/material.dart';

class HomeDrawer extends StatelessWidget {
  const HomeDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          ListTile(
            leading: Icon(Icons.person),
            title: Text("Sum Yin Chuang"),
          ),
          ListTile(
            leading: Icon(Icons.favorite),
            title: Text("Favorite"),
          ),
          ListTile(
            leading: Icon(Icons.history),
            title: Text("Event History"),
          ),
          ListTile(
            leading: Icon(Icons.policy),
            title: Text("Policy & Privacy"),
          ),
          ListTile(
            leading: Icon(Icons.help),
            title: Text("Help"),
          ),
          ListTile(
            leading: Icon(Icons.details),
            title: Text("About Us"),
          ),
          Divider(),
          ListTile(
            title: Text('Language'),
          ),
          ListTile(
            leading: Icon(Icons.catching_pokemon_outlined),
            title: Text("Chinese"),
          ),
          ListTile(
            leading: Icon(Icons.catching_pokemon_outlined),
            title: Text("English"),
          ),
          ListTile(),
          ListTile(
            leading: Icon(Icons.logout),
            title: Text("Log Out"),
          )
        ],
      ),
    );
  }
}
