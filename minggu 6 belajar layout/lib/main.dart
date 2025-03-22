import 'package:flutter/material.dart';
import 'manage_widget.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.teal,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('apk taufiq', style: TextStyle(fontSize: 20.0)),
        elevation: 4.0, // Menambahkan bayangan ke AppBar
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.teal, // Warna drawer sesuai tema
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Menu',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.widgets,
                color: Colors.teal,
              ), // Ikon di samping menu
              title: Text('Manage Widget'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ManageWidget()),
                );
              },
            ),
            ListTile(
              leading: Icon(
                Icons.exit_to_app,
                color: Colors.teal,
              ), // Ikon di samping menu
              title: Text('Keluar'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      body: Center(
        child: Container(
          margin: EdgeInsets.only(top: 50.0),
          padding: EdgeInsets.all(20.0),
          decoration: BoxDecoration(
            color: Colors.teal.shade600,
            borderRadius: BorderRadius.circular(12.0),
            boxShadow: [
              BoxShadow(
                color: Colors.black26,
                blurRadius: 8.0,
                spreadRadius: 1.0,
                offset: Offset(2, 4),
              ),
            ],
          ),
          child: Text(
            'text responsif',
            style: TextStyle(
              color: Colors.white,
              fontSize: MediaQuery.of(context).size.width * 0.06,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
