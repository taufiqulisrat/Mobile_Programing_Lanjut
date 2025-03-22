import 'package:flutter/material.dart';

class FloatingActionButtonExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Floating Action Button Example')),
      body: Center(child: Text('Floating Action Button Example')),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print('Floating Action Button Pressed');
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
