import 'package:flutter/material.dart';
import 'raised_button.dart';
import 'flat_button.dart';
import 'icon_button.dart';
import 'floating_action_button.dart';
import 'cupertino_button.dart';
import 'custom_gesture.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final TextEditingController _controller = TextEditingController();
  String _displayText = '';

  // Variabel untuk mengatur apakah mouse sedang hover pada ikon
  bool _isHovering1 = false;
  bool _isHovering2 = false;
  bool _isHovering3 = false;
  bool _isHovering4 = false;
  bool _isHovering5 = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              // Logo UNP dengan bayangan
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.5),
                      blurRadius: 10,
                      offset: const Offset(3, 3),
                    ),
                  ],
                ),
                child: Image.network(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR35JpEgn45Pqmt1rJUQBoCsFuFVbsKTJJPVg&s',
                  width: 50,
                  height: 50,
                  errorBuilder: (context, exception, stackTrace) {
                    return const Text('Logo UNP');
                  },
                ),
              ),
              const SizedBox(width: 10),
              const Text('App TAUFIQUL ISRAT'),
            ],
          ),
        ),
        body: Center(
          child: SingleChildScrollView(
            child: Container(
              decoration: BoxDecoration(
                color: const Color.fromARGB(100, 136, 141, 143),
                borderRadius: BorderRadius.circular(30),
                border: Border.all(
                  color: Colors.white.withOpacity(0.3),
                  width: 4,
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    blurRadius: 15,
                    offset: const Offset(5, 5),
                  ),
                ],
              ),
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      // Ikon vertikal di kiri
                      Column(
                        children: [
                          buildIcon(Icons.star, Colors.amber, _isHovering1, (
                            hovering,
                          ) {
                            setState(() {
                              _isHovering1 = hovering;
                            });
                          }),
                          const SizedBox(height: 10),
                          buildIcon(Icons.favorite, Colors.red, _isHovering2, (
                            hovering,
                          ) {
                            setState(() {
                              _isHovering2 = hovering;
                            });
                          }),
                          const SizedBox(height: 10),
                          buildIcon(Icons.home, Colors.green, _isHovering3, (
                            hovering,
                          ) {
                            setState(() {
                              _isHovering3 = hovering;
                            });
                          }),
                          const SizedBox(height: 10),
                          buildIcon(Icons.phone, Colors.blue, _isHovering4, (
                            hovering,
                          ) {
                            setState(() {
                              _isHovering4 = hovering;
                            });
                          }),
                          const SizedBox(height: 10),
                          buildIcon(
                            Icons.settings,
                            const Color.fromARGB(255, 185, 12, 12),
                            _isHovering5,
                            (hovering) {
                              setState(() {
                                _isHovering5 = hovering;
                              });
                            },
                          ),
                        ],
                      ),
                      const SizedBox(width: 20),
                      Expanded(
                        child: Column(
                          children: [
                            const Text(
                              "Welcome to My App",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 230, 230, 230),
                                shadows: [
                                  Shadow(
                                    blurRadius: 10.0,
                                    color: Colors.black,
                                    offset: Offset(5.0, 5.0),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(height: 20),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                buildImage(
                                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRYZVN3-uMdk1V8piSSsXDIJ5EjfbbsjoJQqQ&s',
                                  120,
                                ),
                                const SizedBox(width: 20),
                                buildImage('assets/image.png', 120),
                              ],
                            ),
                            const SizedBox(height: 20),
                            TextField(
                              controller: _controller,
                              decoration: InputDecoration(
                                labelText: 'Masukkan teks di sini',
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                              ),
                            ),
                            const SizedBox(height: 20),
                            ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  _displayText = _controller.text;
                                });
                              },
                              style: ElevatedButton.styleFrom(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 30,
                                  vertical: 15,
                                ),
                                textStyle: const TextStyle(fontSize: 16),
                              ),
                              child: const Text('Tampilkan Teks'),
                            ),
                            const SizedBox(height: 20),
                            Text(
                              _displayText,
                              style: const TextStyle(fontSize: 24),
                            ),
                            const SizedBox(height: 20),
                            ButtonMenu(), // Menambahkan ButtonMenu di bawah komponen lain
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget buildIcon(
    IconData icon,
    Color color,
    bool isHovering,
    Function(bool) onHover,
  ) {
    return InkWell(
      onHover: onHover,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: isHovering ? Colors.white : Colors.transparent,
          borderRadius: BorderRadius.circular(20),
          boxShadow:
              isHovering
                  ? [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.3),
                      blurRadius: 10,
                      offset: const Offset(4, 4),
                    ),
                  ]
                  : [],
        ),
        child: Icon(icon, size: 50, color: color),
      ),
    );
  }

  Widget buildImage(String imageUrl, double size) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.white.withOpacity(0.5), width: 4),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.3),
            blurRadius: 10,
            offset: const Offset(4, 4),
          ),
        ],
      ),
      child: Image.network(
        imageUrl,
        width: size,
        height: size,
        errorBuilder: (context, error, stackTrace) {
          return const Text('Gagal Memuat Gambar');
        },
      ),
    );
  }
}

class ButtonMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      children: [
        ListTile(
          title: Text('Raised Button'),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => RaisedButtonExample()),
            );
          },
        ),
        ListTile(
          title: Text('Flat Button'),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => FlatButtonExample()),
            );
          },
        ),
        ListTile(
          title: Text('Icon Button'),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => IconButtonExample()),
            );
          },
        ),
        ListTile(
          title: Text('Floating Action Button'),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => FloatingActionButtonExample(),
              ),
            );
          },
        ),
        ListTile(
          title: Text('Cupertino Button'),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => CupertinoButtonExample()),
            );
          },
        ),
        ListTile(
          title: Text('Custom Gesture Button'),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => CustomGestureButton()),
            );
          },
        ),
      ],
    );
  }
}
