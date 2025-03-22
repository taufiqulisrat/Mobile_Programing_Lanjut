import 'package:flutter/material.dart';
import 'raised_button.dart';
import 'flat_button.dart';
import 'icon_button.dart';
import 'floating_action_button.dart';
import 'cupertino_button.dart';
import 'custom_gesture.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Buttons Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ButtonMenu(),
    );
  }
}

class ButtonMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Button Types')),
      body: ListView(
        children: [
          ListTile(
            title: Text('Raised Button'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => RaisedButtonExample()),
              );
            },
          ),
          ListTile(
            title: Text('Flat Button'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => FlatButtonExample()),
              );
            },
          ),
          ListTile(
            title: Text('Icon Button'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => IconButtonExample()),
              );
            },
          ),
          ListTile(
            title: Text('Floating Action Button'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => FloatingActionButtonExample()),
              );
            },
          ),
          ListTile(
            title: Text('Cupertino Button'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => CupertinoButtonExample()),
              );
            },
          ),
          ListTile(
            title: Text('Custom Gesture Button'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => CustomGestureButton()),
              );
            },
          ),
        ],
      ),
    );
  }
}
