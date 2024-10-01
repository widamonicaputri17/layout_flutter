import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // Perbaikan nama metode dan tipe pengembalian (return type)
  Column buildButtonColumn(Color color, IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter layout: Button Column Example',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Button Column Demo'),
        ),
        body: Center(
          child: buildButtonColumn(Colors.blue, Icons.thumb_up, 'Like'),
        ),
      ),
    );
  }
}
