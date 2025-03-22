import 'package:flutter/material.dart';

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
                  borderRadius: BorderRadius.circular(
                    50,
                  ), // Membuat logo sedikit melengkung
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(
                        0.5,
                      ), // Efek bayangan logo
                      blurRadius: 10,
                      offset: const Offset(3, 3), // Posisi bayangan
                    ),
                  ],
                ),
                child: Image.network(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR35JpEgn45Pqmt1rJUQBoCsFuFVbsKTJJPVg&s',
                  width: 50, // Ukuran logo
                  height: 50, // Ukuran logo
                  errorBuilder: (
                    BuildContext context,
                    Object exception,
                    StackTrace? stackTrace,
                  ) {
                    return const Text('Logo UNP');
                  },
                ),
              ),
              const SizedBox(width: 10), // Spasi antara logo dan teks
              const Text('App TAUFIQUL ISRAT'),
            ],
          ),
        ),
        body: Center(
          child: Container(
            // Latar belakang dengan border elegan
            decoration: BoxDecoration(
              color: const Color.fromARGB(
                100,
                136,
                141,
                143,
              ), // Warna latar belakang dengan transparansi
              borderRadius: BorderRadius.circular(
                30,
              ), // Membuat sudut border melengkung
              border: Border.all(
                color: Colors.white.withOpacity(0.3), // Border transparan
                width: 4,
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(
                    0.2,
                  ), // Bayangan hitam transparan
                  blurRadius: 15,
                  offset: const Offset(5, 5), // Posisi bayangan
                ),
              ],
            ),
            padding: const EdgeInsets.all(
              20,
            ), // Menambahkan padding di sekitar konten
            child: Column(
              crossAxisAlignment:
                  CrossAxisAlignment.start, // Posisikan ikon di kiri
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Menyusun ikon secara vertikal di kiri
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Icon 1
                        InkWell(
                          onHover: (hovering) {
                            setState(() {
                              _isHovering1 = hovering;
                            });
                          },
                          child: AnimatedContainer(
                            duration: const Duration(milliseconds: 300),
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              color:
                                  _isHovering1
                                      ? Colors.white
                                      : Colors.transparent,
                              borderRadius: BorderRadius.circular(20),
                              boxShadow:
                                  _isHovering1
                                      ? [
                                        BoxShadow(
                                          color: Colors.black.withOpacity(0.3),
                                          blurRadius: 10,
                                          offset: const Offset(4, 4),
                                        ),
                                      ]
                                      : [],
                            ),
                            child: const Icon(
                              Icons.star,
                              size: 50,
                              color: Colors.amber,
                            ),
                          ),
                        ),
                        const SizedBox(height: 10), // Spasi antara ikon
                        // Icon 2
                        InkWell(
                          onHover: (hovering) {
                            setState(() {
                              _isHovering2 = hovering;
                            });
                          },
                          child: AnimatedContainer(
                            duration: const Duration(milliseconds: 300),
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              color:
                                  _isHovering2
                                      ? Colors.white
                                      : Colors.transparent,
                              borderRadius: BorderRadius.circular(20),
                              boxShadow:
                                  _isHovering2
                                      ? [
                                        BoxShadow(
                                          color: Colors.black.withOpacity(0.3),
                                          blurRadius: 10,
                                          offset: const Offset(4, 4),
                                        ),
                                      ]
                                      : [],
                            ),
                            child: const Icon(
                              Icons.favorite,
                              size: 50,
                              color: Colors.red,
                            ),
                          ),
                        ),
                        const SizedBox(height: 10), // Spasi antara ikon
                        // Icon 3
                        InkWell(
                          onHover: (hovering) {
                            setState(() {
                              _isHovering3 = hovering;
                            });
                          },
                          child: AnimatedContainer(
                            duration: const Duration(milliseconds: 300),
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              color:
                                  _isHovering3
                                      ? Colors.white
                                      : Colors.transparent,
                              borderRadius: BorderRadius.circular(20),
                              boxShadow:
                                  _isHovering3
                                      ? [
                                        BoxShadow(
                                          color: Colors.black.withOpacity(0.3),
                                          blurRadius: 10,
                                          offset: const Offset(4, 4),
                                        ),
                                      ]
                                      : [],
                            ),
                            child: const Icon(
                              Icons.home,
                              size: 50,
                              color: Colors.green,
                            ),
                          ),
                        ),
                        const SizedBox(height: 10), // Spasi antara ikon
                        // Icon 4
                        InkWell(
                          onHover: (hovering) {
                            setState(() {
                              _isHovering4 = hovering;
                            });
                          },
                          child: AnimatedContainer(
                            duration: const Duration(milliseconds: 300),
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              color:
                                  _isHovering4
                                      ? Colors.white
                                      : Colors.transparent,
                              borderRadius: BorderRadius.circular(20),
                              boxShadow:
                                  _isHovering4
                                      ? [
                                        BoxShadow(
                                          color: Colors.black.withOpacity(0.3),
                                          blurRadius: 10,
                                          offset: const Offset(4, 4),
                                        ),
                                      ]
                                      : [],
                            ),
                            child: const Icon(
                              Icons.phone,
                              size: 50,
                              color: Colors.blue,
                            ),
                          ),
                        ),
                        const SizedBox(height: 10), // Spasi antara ikon
                        // Icon 5
                        InkWell(
                          onHover: (hovering) {
                            setState(() {
                              _isHovering5 = hovering;
                            });
                          },
                          child: AnimatedContainer(
                            duration: const Duration(milliseconds: 300),
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              color:
                                  _isHovering5
                                      ? Colors.white
                                      : Colors.transparent,
                              borderRadius: BorderRadius.circular(20),
                              boxShadow:
                                  _isHovering5
                                      ? [
                                        BoxShadow(
                                          color: Colors.black.withOpacity(0.3),
                                          blurRadius: 10,
                                          offset: const Offset(4, 4),
                                        ),
                                      ]
                                      : [],
                            ),
                            child: const Icon(
                              Icons.settings,
                              size: 50,
                              color: Color.fromARGB(255, 185, 12, 12),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(width: 20), // Spasi antara ikon dan teks
                    // Teks Welcome berada di tengah
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
                          const SizedBox(
                            height: 20,
                          ), // Spasi antara teks dan gambar
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              // Gambar 1 dari URL
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(
                                    20,
                                  ), // Membuat sudut border melengkung
                                  border: Border.all(
                                    color: Colors.white.withOpacity(
                                      0.5,
                                    ), // Border transparan
                                    width: 4,
                                  ),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black.withOpacity(
                                        0.3,
                                      ), // Bayangan hitam transparan
                                      blurRadius: 10,
                                      offset: const Offset(
                                        4,
                                        4,
                                      ), // Posisi bayangan
                                    ),
                                  ],
                                ),
                                child: Image.network(
                                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRYZVN3-uMdk1V8piSSsXDIJ5EjfbbsjoJQqQ&s', // URL gambar
                                  width: 120, // Sesuaikan ukuran gambar
                                  height: 120,
                                  errorBuilder: (context, error, stackTrace) {
                                    return const Text('Gagal Memuat Gambar');
                                  },
                                ),
                              ),
                              const SizedBox(width: 20), // Spasi antara gambar
                              // Gambar 2 dari file lokal
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(
                                    20,
                                  ), // Membuat sudut border melengkung
                                  border: Border.all(
                                    color: Colors.white.withOpacity(
                                      0.5,
                                    ), // Border transparan
                                    width: 4,
                                  ),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black.withOpacity(
                                        0.3,
                                      ), // Bayangan hitam transparan
                                      blurRadius: 10,
                                      offset: const Offset(
                                        4,
                                        4,
                                      ), // Posisi bayangan
                                    ),
                                  ],
                                ),
                                child: Image.asset(
                                  'assets/image.png', // Ganti dengan nama file lokal Anda
                                  width: 120, // Sesuaikan ukuran gambar
                                  height: 120,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 20,
                          ), // Spasi antara gambar dan input teks
                          // Input teks
                          TextField(
                            controller: _controller,
                            decoration: InputDecoration(
                              labelText: 'Masukkan teks di sini',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ), // Spasi antara input dan tombol
                          // Tombol untuk menampilkan teks
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
                          const SizedBox(
                            height: 20,
                          ), // Spasi antara tombol dan hasil teks
                          // Menampilkan teks yang diinputkan
                          Text(
                            _displayText,
                            style: const TextStyle(fontSize: 24),
                          ),
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
    );
  }
}
