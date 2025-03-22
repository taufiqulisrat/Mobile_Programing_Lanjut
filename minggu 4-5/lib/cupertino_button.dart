import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoButtonExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Cupertino Button Example')),
      body: Center(
        child: CupertinoButton(
          child: Text('Cupertino Button'),
          onPressed: () {
            print('Cupertino Button Pressed');
          },
          color: CupertinoColors.activeBlue,
        ),
      ),
    );
  }
}
