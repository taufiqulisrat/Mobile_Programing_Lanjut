import 'package:flutter/material.dart';

class RaisedButtonExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Raised Button Example')),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            print('Raised Button Pressed');
          },
          child: Text('Raised Button'),
        ),
      ),
    );
  }
}
