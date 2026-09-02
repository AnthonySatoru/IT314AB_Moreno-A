import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

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
          Row(
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
    //underline para sa friend
    Container(
    margin: EdgeInsets.only(left: 10,),
    height: 3,
    width: 50,
    color: Colors.red,
    ),
//for the line margin
          Container(
            margin: EdgeInsets.only(top: 1,),
            height: 2,
            color: Colors.grey,
          ),
//making my search box

          Container(
            margin: EdgeInsets.only(
              top: 20,
              left: 20,
              right: 20,
            ),
            height: 100,
            decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Icon(
                    Icons.search,
                    color: Colors.black,
                    size: 50,
                  ),
                ),

                Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Text("Search",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
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
          Padding(
            padding: EdgeInsets.only(
              left: 50,
              top: 20,
            ),
            child: Row(
              children: [
                Icon(
                  Icons.person,
                  color: Colors.red,
                  size: 40,
                ),
                SizedBox(
                  width: 15,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "MissyoulikeKrazy",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                    Row(
                        children:[
                          Icon(
                              Icons.monitor,color: Colors.green,size: 20),
                          Text(
                            "Online - VALORANT",
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 15,
                            ),
                          ),
                        ]
                    ),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 50,
              top: 20,
            ),
            child: Row(
              children: [
                Icon(
                  Icons.person,
                  color: Colors.red,
                  size: 40,
                ),
                SizedBox(
                  width: 15,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "bread",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                    Row(
                        children:[
                          Icon(
                              Icons.monitor,color: Colors.green,size: 20),
                          Text(
                            "Online - VALORANT",
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 15,
                            ),
                          ),
                        ]
                    ),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 50,
              top: 20,
            ),
            child: Row(
              children: [
                Icon(
                  Icons.person,
                  color: Colors.red,
                  size: 40,
                ),
                SizedBox(
                  width: 15,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "The14th",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                    Row(
                        children:[
                          Icon(
                              Icons.monitor,color: Colors.green,size: 20),
                          Text(
                            "Online - VALORANT",
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 15,
                            ),
                          ),
                        ]
                    ),
                  ],
                ),
              ],
            ),
          ),

        ],
      ),
    );
  }
}
