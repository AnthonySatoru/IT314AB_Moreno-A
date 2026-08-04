import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My First Flutter Application',

      home: Scaffold(
        appBar: AppBar(title: const Text('My First Flutter Application')),

        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Flag 12: Display image from assets
              Image.asset(
                'assets/gojo.webp',
                width: 200,
                height: 200,
                fit: BoxFit.cover,
              ),

              const SizedBox(height: 15),

              const Text(
                'Moreno, Anthony Josh',
                style: TextStyle(fontSize: 24),
              ),

              const SizedBox(height: 10),

              const Text('BSIT 3', style: TextStyle(fontSize: 20)),

              const SizedBox(height: 10),

              const Text(
                'My First Flutter Application',
                style: TextStyle(fontSize: 20),
              ),

              const SizedBox(height: 10),

              const Text('August 4, 2026', style: TextStyle(fontSize: 18)),
            ],
          ),
        ),
      ),
    );
  }
}
