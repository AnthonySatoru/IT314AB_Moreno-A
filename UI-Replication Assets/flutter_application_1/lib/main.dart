import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Valorant Match details',
      theme: ThemeData(

        colorScheme: .fromSeed(seedColor: Colors.black),
      ),
      home: const MyHomePage(title: 'Match Details'),
      backgroundColor: const Color(black),

    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: const Color(black),
      appBar: AppBar(
        toolbarHeight: 70,

      ),
      body: Column(

        child: row(
          children: [
        padding: const EdgeInsets.only(left: 20),
            Text('My Team'),

        row

            ),
          ],
        ),
      ),

    );
  }
}
