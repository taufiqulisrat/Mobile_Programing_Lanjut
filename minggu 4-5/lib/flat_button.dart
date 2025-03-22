import 'package:flutter/material.dart';

class FlatButtonExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Flat Button Example')),
      body: Center(
        child: TextButton(
          onPressed: () {
            print('Flat Button Pressed');
          },
          child: Text('Flat Button'),
        ),
      ),
    );
  }
}
