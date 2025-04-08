import 'package:flutter/material.dart';
import 'page_one.dart';
import 'tab_navigation.dart';

class HomeWithDrawer extends StatelessWidget {
  const HomeWithDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Beranda')),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(color: Colors.teal),
              child: Text('Menu Navigasi', style: TextStyle(color: Colors.white)),
            ),
            ListTile(
              leading: const Icon(Icons.pages),
              title: const Text('Navigasi Stack'),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (_) => const PageOne()));
              },
            ),
            ListTile(
              leading: const Icon(Icons.tab),
              title: const Text('TabBar Navigation'),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (_) => const TabNavigation()));
              },
            ),
          ],
        ),
      ),
      body: const Center(child: Text("Selamat Datang!")),
    );
  }
}
