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
        appBar: AppBar(
          title: const Text('My First Flutter Application'),
        ),

        body: Center(
          child: Column(
            children: [
              Card(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const CircleAvatar(
                      radius: 100,
                      backgroundImage: AssetImage('assets/images.jpg'),
                    ),

                    const SizedBox(height: 15),

                    const Text(
                      'Moreno, Anthony Josh',
                      style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    const SizedBox(height: 10),

                    const Text(
                      'BSIT 3',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.normal,
                      ),
                    ),

                    const SizedBox(height: 10),

                    const Text(
                      'My First Flutter Application',
                      style: TextStyle(
                        fontSize: 20,
                        fontStyle: FontStyle.italic,
                      ),
                    ),

                    const SizedBox(height: 10),

                    const Text(
                      'August 4, 2026',
                      style: TextStyle(
                        fontSize: 14,
                      ),
                    ),

                    const Text(
                      'Gym',
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),

                    const SizedBox(height: 15),

                    const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text('21'),
                        Text('August 4,2005'),
                      ],
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 15),

              Card(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text(
                      'MY FAVORITES',
                      style: TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    const SizedBox(height: 15),

                    const Text(
                      'Favorite Game: Growtopia',
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),

                    const SizedBox(height: 10),

                    const Text(
                      'Favorite Food: Burger',
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),

                    const SizedBox(height: 15),

                    const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text('Favorite Movie: '),
                        Text('Spider-Man'),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
