import 'package:flutter/material.dart';

class a2 extends StatelessWidget {
  const a2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Image.asset(
            ('assets/Lake Oeschinen.jpeg'), 
            width: double.infinity,
            height: 240,
            fit: BoxFit.cover,
          ),
// jika miss cindy melihat ini saya dengan sedih dan ngeluh mengatakan bahwa saya malas nyari gambarnya :`(
          Padding(
            padding: const EdgeInsets.all(16),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Oeschinen Lake Campground",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        "Kandersteg, Switzerland",
                        style: TextStyle(color: Colors.grey[600]),
                      ),
                    ],
                  ),
                ),
                const Icon(Icons.star, color: Colors.red),
                const SizedBox(width: 4),
                const Text("41"),
              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildButton(Icons.call, "CALL"),
                _buildButton(Icons.near_me, "ROUTE"),
                _buildButton(Icons.share, "SHARE"),
              ],
            ),
          ),

          const Padding(
            padding: EdgeInsets.all(16),
            child: Text(
              "Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese Alps. "
              "Situated 1,578 meters above sea level, it is one of the larger Alpine Lakes. "
              "A gondola ride from Kandersteg, followed by a half-hour walk through pastures "
              "and pine forest, leads you to the lake, which warms to 20 degrees Celsius in the summer. "
              "Activities enjoyed here include rowing, and riding the summer toboggan run.",
              softWrap: true,
            ),
          ),
        ],
      ),
    );
  }

  Column _buildButton(IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: Colors.blue),
        const SizedBox(height: 8),
        Text(
          label,
          style: const TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w400,
            color: Colors.blue,
          ),
        ),
      ],
    );
  }
}
