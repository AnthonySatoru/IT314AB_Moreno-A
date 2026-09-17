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
      home: const SocialPage(),
    );
  }
}

class SocialPage extends StatefulWidget {
  const SocialPage({super.key});

  @override
  State<SocialPage> createState() => _SocialPageState();
}

class _SocialPageState extends State<SocialPage> {
  List<Map<String, dynamic>> friends = [
    {
      'name': 'MissYouLikeKrazy',
      'status': 'Online - VALORANT',
      'online': true,
    },
    {
      'name': 'bread',
      'status': 'Playing - VALORANT',
      'online': true,
    },
    {
      'name': 'The14th',
      'status': 'Playing - VALORANT',
      'online': true,
    },
    {
      'name': 'Carlvendish',
      'status': 'Away - Riot Mobile',
      'online': false,
    },
    {
      'name': 'D1yah',
      'status': 'Away - Riot Mobile',
      'online': false,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text(
          'Social',
          style: TextStyle(
            color: Colors.white,
            fontSize: 28,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.all(20),
            child: Row(
              children: [
                Text(
                  'Friends',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(width: 40),
                Text(
                  'Messages',
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
                SizedBox(width: 40),
                Text(
                  'Requests',
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 20),
            height: 50,
            decoration: BoxDecoration(
              color: Colors.grey[900],
              borderRadius: BorderRadius.circular(15),
            ),
            child: const Row(
              children: [
                SizedBox(width: 15),
                Icon(
                  Icons.search,
                  color: Colors.grey,
                ),
                SizedBox(width: 10),
                Text(
                  'Search',
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 20,
              top: 25,
            ),
            child: Row(
              children: [
                Icon(
                  Icons.circle,
                  color: Colors.grey,
                  size: 50,
                ),
                SizedBox(
                  width: 15,
                ),
                Text(
                  "VALORANT",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  "3",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 20,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          Expanded(
            child: ListView.builder(
              itemCount: friends.length,
              itemBuilder: (context, index) {
                String name = friends[index]['name'];
                String status = friends[index]['status'];
                bool isOnline = friends[index]['online'];

                return ListTile(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Message(
                          name: name,
                        ),
                      ),
                    );
                  },
                  leading: CircleAvatar(
                    backgroundColor: Colors.grey[900],
                    child: const Icon(
                      Icons.person,
                      color: Colors.red,
                    ),
                  ),
                  title: Text(
                    name,
                    style: const TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  subtitle: Row(
                    children: [
                      Icon(
                        isOnline
                            ? Icons.monitor
                            : Icons.mobile_friendly,
                        color: isOnline
                            ? Colors.green
                            : Colors.grey,
                        size: 16,
                      ),
                      const SizedBox(width: 5),
                      Text(
                        status,
                        style: const TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class Message extends StatelessWidget {
  final String name;

  const Message({
    super.key,
    required this.name,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          name,
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Column(
        children: [
          const Expanded(
            child: Center(
              child: Text(
                '',
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.all(15),
            padding: const EdgeInsets.symmetric(
              horizontal: 15,
            ),
            height: 50,
            decoration: BoxDecoration(
              color: Colors.grey[900],
              borderRadius: BorderRadius.circular(15),
            ),
            child: const Row(
              children: [
                Expanded(
                  child: Text(
                    'Send a message',
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                ),
                Icon(
                  Icons.send,
                  color: Colors.grey,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}