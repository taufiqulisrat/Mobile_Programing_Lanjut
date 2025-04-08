import 'package:flutter/material.dart';

class TabNavigation extends StatelessWidget {
  const TabNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Navigasi Tab"),
          bottom: const TabBar(
            tabs: [
              Tab(icon: Icon(Icons.home), text: "Home"),
              Tab(icon: Icon(Icons.star), text: "Favorite"),
              Tab(icon: Icon(Icons.settings), text: "Setting"),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            Center(child: Text("Tab 1: Home")),
            Center(child: Text("Tab 2: Favorite")),
            Center(child: Text("Tab 3: Setting")),
          ],
        ),
      ),
    );
  }
}
