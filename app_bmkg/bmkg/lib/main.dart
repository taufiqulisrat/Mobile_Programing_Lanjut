import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'developer_page.dart';
import 'style.dart';

void main() {
  runApp(const BMKGWeatherApp());
}

class BMKGWeatherApp extends StatelessWidget {
  const BMKGWeatherApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Prakiraan Cuaca BMKG',
      debugShowCheckedModeBanner: false,
      theme: appTheme,
      routes: {'/developer': (context) => const DeveloperPage()},
      home: const WeatherHomePage(),
    );
  }
}

class WeatherHomePage extends StatefulWidget {
  const WeatherHomePage({super.key});

  @override
  State<WeatherHomePage> createState() => _WeatherHomePageState();
}

class _WeatherHomePageState extends State<WeatherHomePage>
    with SingleTickerProviderStateMixin {
  List<dynamic> weatherList = [];
  bool loading = true;
  String error = '';

  late final AnimationController _animationController;
  late final Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    fetchWeather();

    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    )..repeat(reverse: true);

    _animation = Tween<double>(begin: 0, end: 8).animate(
      CurvedAnimation(parent: _animationController, curve: Curves.easeInOut),
    );
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  Future<void> fetchWeather() async {
    final url = Uri.parse(
      'https://api.bmkg.go.id/publik/prakiraan-cuaca?adm4=13.01.05.2003',
    );

    try {
      final response = await http.get(url);
      if (response.statusCode == 200) {
        final jsonData = json.decode(response.body);
        final List<dynamic> cuaca = jsonData['data'][0]['cuaca'];
        final List<dynamic> cuacaFlat =
            cuaca.expand((e) => e is List ? e : [e]).toList();

        setState(() {
          weatherList = cuacaFlat;
          loading = false;
          error = '';
        });
      } else {
        setState(() {
          loading = false;
          error = 'Gagal mengambil data: ${response.statusCode}';
        });
      }
    } catch (e) {
      setState(() {
        loading = false;
        error = 'Error: $e';
      });
    }
  }

  String weatherEmoji(String desc) {
    final d = desc.toLowerCase();
    if (d.contains('cerah')) return '☀️';
    if (d.contains('berawan')) return '☁️';
    if (d.contains('hujan petir')) return '⛈️';
    if (d.contains('hujan ringan')) return '🌦️';
    if (d.contains('hujan sedang')) return '🌧️';
    if (d.contains('hujan lebat')) return '🌧️';
    if (d.contains('kabut')) return '🌫️';
    if (d.contains('bercak kabut')) return '🌫️';
    if (d.contains('berkabut')) return '🌫️';
    if (d.contains('salju')) return '❄️';
    return '';
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    // Sesuaikan jumlah kolom grid berdasarkan lebar layar
    int crossAxisCount;
    if (screenWidth >= 600) {
      crossAxisCount = 7;
    } else if (screenWidth >= 400) {
      crossAxisCount = 5;
    } else {
      crossAxisCount = 2; // untuk layar kecil, 2 kolom agar tidak terlalu kecil
    }

    // Sesuaikan ukuran emoji berdasarkan layar
    double emojiSize;
    if (screenWidth >= 600) {
      emojiSize = 48;
    } else if (screenWidth >= 400) {
      emojiSize = 36;
    } else {
      emojiSize = 32; // sedikit lebih besar supaya tetap terbaca
    }

    // Padding responsive untuk layar kecil
    EdgeInsetsGeometry padding =
        screenWidth < 400 ? const EdgeInsets.all(8) : const EdgeInsets.all(12);

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Prakiraan Cuaca BMKG Sumbar – Pesisir Selatan, Sago Salido',
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.person),
            tooltip: 'Developer',
            onPressed: () {
              Navigator.pushNamed(context, '/developer');
            },
          ),
        ],
      ),
      body:
          loading
              ? const Center(child: CircularProgressIndicator())
              : error.isNotEmpty
              ? Center(child: Text(error))
              : Padding(
                padding: padding,
                child: GridView.builder(
                  itemCount: weatherList.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: crossAxisCount,
                    childAspectRatio: 0.65, // agar kartu agak lebih tinggi
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                  ),
                  itemBuilder: (context, index) {
                    final item = weatherList[index];
                    final rawTime = item['local_datetime'] ?? '';
                    final parsedTime =
                        DateTime.tryParse(rawTime) ?? DateTime.now();
                    final formattedDate =
                        '${parsedTime.day}/${parsedTime.month}';
                    final formattedHour =
                        '${parsedTime.hour.toString().padLeft(2, '0')}:00';

                    final temp = item['t']?.toString() ?? '-';
                    final desc = item['weather_desc'] ?? '-';

                    return Card(
                      margin: const EdgeInsets.all(4),
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              formattedDate,
                              style: Theme.of(context).textTheme.labelMedium
                                  ?.copyWith(fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(height: 6),
                            AnimatedBuilder(
                              animation: _animation,
                              builder: (context, child) {
                                return Transform.translate(
                                  offset: Offset(0, -_animation.value),
                                  child: child,
                                );
                              },
                              child: Text(
                                weatherEmoji(desc),
                                style: TextStyle(fontSize: emojiSize),
                              ),
                            ),
                            const SizedBox(height: 6),
                            Text(
                              desc,
                              textAlign: TextAlign.center,
                              style: Theme.of(context).textTheme.bodyMedium,
                            ),
                            const SizedBox(height: 6),
                            Text(
                              '$temp °C',
                              style: Theme.of(context).textTheme.headlineSmall,
                            ),
                            const SizedBox(height: 6),
                            Text(
                              formattedHour,
                              style: Theme.of(context).textTheme.labelMedium,
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
    );
  }
}
