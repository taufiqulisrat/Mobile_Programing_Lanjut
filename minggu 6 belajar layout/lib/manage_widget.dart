import 'package:flutter/material.dart';

class ManageWidget extends StatefulWidget {
  @override
  _ManageWidgetState createState() => _ManageWidgetState();
}

class _ManageWidgetState extends State<ManageWidget> {
  bool _visible = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Manage Widget', style: TextStyle(fontSize: 20.0)),
        elevation: 4.0, // Memberi bayangan pada AppBar
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              AnimatedOpacity(
                opacity: _visible ? 1.0 : 0.0,
                duration: Duration(seconds: 1),
                child: Container(
                  width: 200.0,
                  height: 200.0,
                  decoration: BoxDecoration(
                    color: Colors.teal, // Warna harmonis
                    borderRadius: BorderRadius.circular(15.0),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black26,
                        blurRadius: 8.0,
                        offset: Offset(4, 4),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20.0),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    _visible = !_visible;
                  });
                },
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(
                    horizontal: 24.0,
                    vertical: 12.0,
                  ),
                  backgroundColor:
                      Colors
                          .teal
                          .shade700, // Ganti 'primary' dengan 'backgroundColor'
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                      12.0,
                    ), // Membuat tombol lebih modern
                  ),
                ),
                child: Text(
                  _visible ? 'Hide Widget' : 'Show Widget',
                  style: TextStyle(fontSize: 16.0, color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
