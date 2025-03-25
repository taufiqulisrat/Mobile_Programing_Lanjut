import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  final Function(Color) onColorChange;

  // Menerima callback onColorChange dari HomeScreen
  const SettingsPage({super.key, required this.onColorChange});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'Choose Background Color',
            style: TextStyle(fontSize: 24, color: Colors.white),
          ),
          const SizedBox(height: 20),
          Wrap(
            spacing: 10,
            runSpacing: 10,
            children: [
              ElevatedButton(
                onPressed: () => onColorChange(Colors.deepPurple),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.deepPurple,
                ),
                child: const Text('Purple'),
              ),
              ElevatedButton(
                onPressed: () => onColorChange(Colors.blueAccent),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueAccent,
                ),
                child: const Text('Blue'),
              ),
              ElevatedButton(
                onPressed: () => onColorChange(Colors.redAccent),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.redAccent,
                ),
                child: const Text('Red'),
              ),
              ElevatedButton(
                onPressed: () => onColorChange(Colors.green),
                style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
                child: const Text('Green'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
