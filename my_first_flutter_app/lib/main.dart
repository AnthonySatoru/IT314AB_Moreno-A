import 'package:flutter/material.dart';

class Profile {
  String? studentId;
  String? name;
  String? courseSection;
  String? yearLevel;
  String? favouriteSubject;
  int? age;
  String? hobby;
  double? height;
  String? gender;
  bool isStudent;
  String imagePath;
  Color color;
  bool isFavorite;
  bool isActive;

  Profile({
    required this.studentId,
    required this.name,
    required this.courseSection,
    required this.yearLevel,
    required this.favouriteSubject,
    required this.age,
    required this.hobby,
    required this.height,
    required this.gender,
    required this.isStudent,
    required this.imagePath,
    required this.color,
    required this.isFavorite,
    required this.isActive,
  });
}

List<Profile> profiles = [
  Profile(
    studentId: "001",
    name: "Kiyotaka Ayanokoji",
    courseSection: "Advanced Nurturing High School",
    yearLevel: "1st Year",
    favouriteSubject: "Mathematics",
    age: 16,
    hobby: "Reading, exercising",
    height: 5.9,
    gender: "Male",
    isStudent: true,
    imagePath: "assets/ayanokoji.jfif",
    color: Colors.purple,
    isFavorite: false,
    isActive: true,
  ),

  Profile(
    studentId: "002",
    name: "Suzune Horikita",
    courseSection: "Advanced Nurturing High School",
    yearLevel: "1st Year",
    favouriteSubject: "Mathematics",
    age: 16,
    hobby: "Reading, studying",
    height: 5.1,
    gender: "Female",
    isStudent: true,
    imagePath: "assets/Suzune Horikita.jfif",
    color: Colors.cyan,
    isFavorite: false,
    isActive: false,
  ),

  Profile(
    studentId: "003",
    name: "Kakeru Ryuen",
    courseSection: "Advanced Nurturing High School",
    yearLevel: "1st Year",
    favouriteSubject: "Social Studies",
    age: 17,
    hobby: "Fighting, strategizing",
    height: 5.9,
    gender: "Male",
    isStudent: true,
    imagePath: "assets/Kakeru Ryuen 2.jfif",
    color: Colors.green,
    isFavorite: false,
    isActive: false,
  ),

  Profile(
    studentId: "004",
    name: "Kikyo Kushida",
    courseSection: "Advanced Nurturing High School",
    yearLevel: "1st Year",
    favouriteSubject: "English",
    age: 16,
    hobby: "Socializing, making friends",
    height: 5.1,
    gender: "Female",
    isStudent: true,
    imagePath: "assets/Kikyo Kushida.jfif",
    color: Colors.blue,
    isFavorite: false,
    isActive: true,
  ),

  Profile(
    studentId: "005",
    name: "Airi Sakura",
    courseSection: "Advanced Nurturing High School",
    yearLevel: "1st Year",
    favouriteSubject: "Japanese",
    age: 16,
    hobby: "Photography, singing",
    height: 5.0,
    gender: "Female",
    isStudent: true,
    imagePath: "assets/Airi Sakura.jfif",
    color: Colors.orange,
    isFavorite: false,
    isActive: false,
  ),

  Profile(
    studentId: "006",
    name: "Kei Karuizawa",
    courseSection: "Advanced Nurturing High School",
    yearLevel: "1st Year",
    favouriteSubject: "English",
    age: 16,
    hobby: "Shopping, socializing",
    height: 5.0,
    gender: "Female",
    isStudent: true,
    imagePath: "assets/Kei Karuizawa.jfif",
    color: Colors.pink,
    isFavorite: false,
    isActive: true,
  ),
];

void main() {
  profiles.sort((a, b){return a.name!.compareTo(b.name!);
  });

  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 5), () {
      setState(() {
        isLoading = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My First Flutter Application',

      home: Scaffold(
        appBar: AppBar(
          title: const Text('My Sixth Flutter Application'),
        ),
        body: isLoading
            ? const Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircularProgressIndicator(),
              SizedBox(height: 15),
              Text(
                "Loading students",
                style: TextStyle(fontSize: 20),
              ),
            ],
          ),
        )
            : profiles.isEmpty
            ? Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(
                Icons.person_off,
                size: 100,
                color: Colors.grey,
              ),
              const SizedBox(height: 15),
              const Text(
                "No students found",
                style: TextStyle(fontSize: 25),
              ),
              const SizedBox(height: 15),
              ElevatedButton.icon(
                icon: const Icon(Icons.add),
                label: const Text("Add Student"),
                onPressed: () {
                  print("Add Student pressed");
                },
              ),
            ],
          ),
        )
            : ListView.builder(
          itemCount: profiles.length,

          itemBuilder: (context, index) {
            final profile = profiles[index];

            return GestureDetector(
              onTap: (){
                print("Student Card tapped: ${profile.name}",);
              },

              child: Card(
                color: profile.color,

                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,

                  children: [
                    CircleAvatar(
                      radius: 100,
                      backgroundImage: AssetImage(
                        profile.imagePath,
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.all(25),

                      child: Column(
                        children: [
                          Text(
                            profile.name ?? "Name: not provided",),

                          Text(
                            profile.courseSection ?? "Unknown",),

                          Text(
                            'Year Level: ${profile.yearLevel ?? "Unknown"}',
                          ),

                          Text(
                            'Favourite Subject: ${profile.favouriteSubject ?? "Unknown"}',
                          ),

                          Text(
                            'Age: ${profile.age ?? "Unknown"}',
                          ),

                          Text(
                            'Hobby: ${profile.hobby ?? "Not provided"}',
                          ),

                          Text(
                            'Height: ${profile.height ?? "Missing"}',
                          ),

                          Text(
                            'Gender: ${profile.gender ?? "Not provided"}',
                          ),

                          Text(
                            'Student: ${profile.isStudent}',
                          ),
                          const SizedBox(height: 15),

                          Text(
                            profile.isActive ? "Active" : "Inactive",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: profile.isActive ? Colors.green : Colors.red,
                            ),
                          ),

                          if (profile.isFavorite)
                            const Text(
                              "Favorite Student",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.yellow,
                              ),
                            ),

                          if (!profile.isActive)
                            const Text(
                              "Warning: This student is inactive",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.red
                              ),
                            ),


                          Row(mainAxisAlignment:
                          MainAxisAlignment.center,
                              children: [
                                if (profile.isActive)
                                InputChip(
                                    avatar: Icon(
                                      Icons.favorite,
                                      size: 18,
                                      color: profile.isFavorite ? Colors.red : Colors.grey,
                                    ),
                                    label: const Text('Favorite'),

                                    onPressed: (){
                                      setState((){
                                        profile.isFavorite = !profile.isFavorite;
                                      });
                                      print("Favorite pressed for ${profile.name}",);
                                    }
                                ),
                                const SizedBox(height: 10),
                                InputChip(
                                  avatar: const Icon(
                                    Icons.edit,
                                    size: 18,),
                                  label: const Text("Edit"),
                                  onPressed:(){
                                    showDialog<void>(
                                      context: context,
                                      builder: (BuildContext context) {
                                        return AlertDialog(
                                          title: const Text("Edit Student"),
                                          content: Text(
                                            "Edit ${profile.name}?",
                                          ),
                                          actions: <Widget>[
                                            TextButton(
                                              onPressed: () {
                                                Navigator.of(context).pop();
                                              },
                                              child: const Text("Cancel"),
                                            ),
                                            TextButton(
                                              onPressed: () {
                                                Navigator.of(context).pop();
                                                print(
                                                  "Edit pressed for ${profile.name}",
                                                );
                                              },
                                              child: const Text("Edit"),
                                            ),
                                          ],
                                        );
                                      },
                                    );
                                  },
                                ),
                                const SizedBox(height: 10),
                                InputChip(
                                  avatar: const Icon(
                                    Icons.delete,
                                    size: 18,
                                  ),
                                  label: const Text("Delete"),
                                  onPressed: () {
                                    setState(() {
                                      profiles.removeAt(index);
                                    });

                                    print("Deleted ${profile.name}");
                                  },
                                ),

                              ]
                          )
                        ],
                      ),
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