import 'package:flutter/material.dart';

class CustomGestureButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Custom Gesture Button Example')),
      body: Center(
        child: GestureDetector(
          onTap: () {
            print('Custom Gesture Button Pressed');
          },
          child: Container(
            padding: EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Text(
              'Custom Gesture Button',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
