import 'package:flutter/material.dart';

class IconButtonExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Icon Button Example')),
      body: Center(
        child: IconButton(
          icon: Icon(Icons.thumb_up),
          onPressed: () {
            print('Icon Button Pressed');
          },
        ),
      ),
    );
  }
}
