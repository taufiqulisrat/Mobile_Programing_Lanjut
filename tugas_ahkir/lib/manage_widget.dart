import 'package:flutter/material.dart';

class ManageWidget extends StatefulWidget {
  const ManageWidget({Key? key}) : super(key: key);

  @override
  State<ManageWidget> createState() => _ManageWidgetState();
}

class _ManageWidgetState extends State<ManageWidget> {
  // Daftar untuk menampung status visible masing-masing box
  final List<bool> _visibleBoxes = List.generate(6, (_) => true);

  // Untuk toggle semua box sekaligus
  bool _allVisible = true;

  // Fungsi untuk toggle satu box
  void _toggleBox(int index) {
    setState(() {
      _visibleBoxes[index] = !_visibleBoxes[index];
    });
  }

  // Fungsi untuk toggle semua box
  void _toggleAll() {
    setState(() {
      _allVisible = !_allVisible;
      for (int i = 0; i < _visibleBoxes.length; i++) {
        _visibleBoxes[i] = _allVisible;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          // Tombol Toggle Semua di tengah
          Center(
            child: ElevatedButton(
              onPressed: _toggleAll,
              child: Text(_allVisible ? 'Hide All Boxes' : 'Show All Boxes'),
            ),
          ),
          const SizedBox(height: 20),
          // Agar tampilan lebih rapi di tengah, kita batasi lebar dengan ConstrainedBox
          Center(
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 800),
              child: Wrap(
                alignment: WrapAlignment.center,
                runAlignment: WrapAlignment.center,
                spacing: 20,
                runSpacing: 20,
                children: List.generate(_visibleBoxes.length, (index) {
                  return GestureDetector(
                    onTap:
                        () => _toggleBox(
                          index,
                        ), // Tap box untuk toggle individual
                    child: AnimatedOpacity(
                      duration: const Duration(milliseconds: 600),
                      opacity: _visibleBoxes[index] ? 1.0 : 0.0,
                      child: Container(
                        width: 120,
                        height: 120,
                        decoration: BoxDecoration(
                          color: Colors.blueAccent,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.blueAccent.withOpacity(0.5),
                              blurRadius: 20,
                              spreadRadius: 2,
                            ),
                          ],
                        ),
                        child: const Center(
                          child: Text(
                            'Animated Box',
                            style: TextStyle(fontSize: 16, color: Colors.white),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                  );
                }),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
