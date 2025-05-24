import 'package:flutter/material.dart';

class WeatherCard extends StatelessWidget {
  final String formattedDate;
  final String emoji;
  final String description;
  final String temperature;
  final String formattedHour;
  final Animation<double> animation;

  const WeatherCard({
    super.key,
    required this.formattedDate,
    required this.emoji,
    required this.description,
    required this.temperature,
    required this.formattedHour,
    required this.animation,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(6.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              formattedDate,
              style: Theme.of(
                context,
              ).textTheme.labelMedium?.copyWith(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 4),
            AnimatedBuilder(
              animation: animation,
              builder: (context, child) {
                return Transform.translate(
                  offset: Offset(0, -animation.value),
                  child: child,
                );
              },
              child: Text(emoji, style: const TextStyle(fontSize: 36)),
            ),
            const SizedBox(height: 4),
            Text(
              description,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            const SizedBox(height: 4),
            Text(
              '$temperature °C',
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            const SizedBox(height: 4),
            Text(formattedHour, style: Theme.of(context).textTheme.labelMedium),
          ],
        ),
      ),
    );
  }
}
