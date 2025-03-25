import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'manage_widget.dart';
import 'settings_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Futuristic App',
      theme: ThemeData(
        brightness: Brightness.dark,
        textTheme: GoogleFonts.poppinsTextTheme(),
      ),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // Indeks halaman yang ditampilkan (0 = Home, 1 = ManageWidget, 2 = Settings)
  int _selectedIndex = 0;

  // Warna background default
  Color _backgroundColor = Colors.deepPurple;

  // List halaman (widget) yang ditampilkan di body
  // Perhatikan bahwa SettingsPage membutuhkan callback untuk mengubah warna
  late List<Widget> _widgetOptions;

  @override
  void initState() {
    super.initState();
    _widgetOptions = <Widget>[
      HomePage(), // Halaman Home
      const ManageWidget(), // Halaman ManageWidget
      SettingsPage(onColorChange: _updateBackgroundColor), // Halaman Settings
    ];
  }

  // Fungsi untuk navigasi via drawer
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    // Menutup drawer setelah pilih menu
    Navigator.pop(context);
  }

  // Fungsi untuk mengubah warna background dari SettingsPage
  void _updateBackgroundColor(Color newColor) {
    setState(() {
      _backgroundColor = newColor;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // AppBar transparan
      appBar: AppBar(
        title: Text('taufiq App', style: GoogleFonts.poppins()),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),

      // Drawer sebagai navigasi utama
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: const BoxDecoration(color: Colors.blueAccent),
              child: Center(
                child: Text(
                  'Menu',
                  style: GoogleFonts.poppins(color: Colors.white, fontSize: 24),
                ),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text('Home'),
              onTap: () => _onItemTapped(0),
            ),
            ListTile(
              leading: const Icon(Icons.widgets),
              title: const Text('Manage Widget'),
              onTap: () => _onItemTapped(1),
            ),
            ListTile(
              leading: const Icon(Icons.settings),
              title: const Text('Settings'),
              onTap: () => _onItemTapped(2),
            ),
          ],
        ),
      ),

      // Body dengan background gradient dan konten di atasnya
      body: Stack(
        children: [
          // Background gradient (menggabungkan warna yang dipilih dan warna hitam)
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [_backgroundColor, Colors.black],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
          ),
          // Konten halaman sesuai _selectedIndex
          _widgetOptions.elementAt(_selectedIndex),
        ],
      ),
    );
  }
}

// Halaman Home
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'hello ',
        style: TextStyle(
          fontSize: 32,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
    );
  }
}
