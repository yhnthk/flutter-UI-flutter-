import 'package:flutter/material.dart';

class a1 extends StatelessWidget {
  const a1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.all(16),
          children: [
            const Text(
              'Strawberry Pavlova',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 12),

            const Text(
              'Pavlova is a meringue-based dessert named after the Russian ballerina Anna Pavlova. '
              'Pavlova features a crisp crust and soft, light inside, topped with fruit and whipped cream.',
              softWrap: true,
            ),

            const SizedBox(height: 20),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: List.generate(
                    5,
                    (index) => const Icon(
                      Icons.star,
                      color: Colors.black,
                      size: 20,
                    ),
                  ),
                ),
                const SizedBox(width: 12),
                const Text(
                  '170 Reviews',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),

            const SizedBox(height: 24),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildInfo(Icons.kitchen, 'PREP:', '25 min'),
                _buildInfo(Icons.timer, 'COOK:', '1 hr'),
                _buildInfo(Icons.restaurant, 'FEEDS:', '4-6'),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildInfo(IconData icon, String label, String value) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(icon, color: Colors.green),
        const SizedBox(height: 8),
        Text(label, style: const TextStyle(fontWeight: FontWeight.bold)),
        const SizedBox(height: 4),
        Text(value),
      ],
    );
  }
}
