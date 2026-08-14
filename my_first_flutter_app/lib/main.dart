import 'package:flutter/material.dart';

class Profile {
  String? name;
  String? courseSection;
  int? age;
  String? hobby;
  double? height;
  bool isStudent;
  String imagePath;
  Color color;

  Profile({
    required this.name,
    required this.courseSection,
    required this.age,
    required this.hobby,
    required this.height,
    required this.isStudent,
    required this.imagePath,
    required this.color,
  });
}

List<Profile> profiles = [
  Profile(
    name: "Gojo",
    courseSection: "Special Sorcerer",
    age: 21,
    hobby: null,
    height: 5.9,
    isStudent: true,
    imagePath: "assets/images.jpg",
    color: Colors.purple
  ),

  Profile(
    name: null,
    courseSection: "CURSE",
    age: null,
    hobby: null,
    height: null,
    isStudent: false,
    imagePath: "assets/sukuna.avif",
      color: Colors.red
  ),

  Profile(
    name: "Toji",
    courseSection: null,
    age: 30,
    hobby: null,
    height: 6.2,
    isStudent: false,
    imagePath: "assets/Toji1.jfif",
      color: Colors.green
  ),

  Profile(
    name: "Yuji",
    courseSection: "Sorcerer",
    age: 18,
    hobby: "Running",
    height: 5.8,
    isStudent: true,
    imagePath: "assets/yuji.jfif",
      color: Colors.blue
  ),

  Profile(
    name: "Yuta",
    courseSection: null,
    age: 22,
    hobby: "Travel",
    height: 5.9,
    isStudent: true,
    imagePath: "assets/yuta.jfif",
      color: Colors.orange
  ),
];

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
          title: const Text('My Third Flutter Application'),
        ),
        body: ListView(
          children: profiles.map((profile) {
            return Card(
              color: profile.color,

              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 100,
                    backgroundImage: AssetImage(profile.imagePath),
                  ),

                  Padding(
                    padding: const EdgeInsets.all(25.0),
                    child: Column(
                      children: [
                        Text(profile.name ?? "Name: not provided",),
                        Text(profile.courseSection ?? "Unknown",),
                        Text('Age: ${profile.age ?? "Unkown"}'),
                        Text('Hobby: ${profile.hobby ?? "not provided"}'),
                        Text('Height: ${profile.height ?? "Missing"}',),
                        Text('Student: ${profile.isStudent}',),
                      ],
                    ),
                  ),
                ],
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}