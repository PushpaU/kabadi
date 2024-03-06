import 'package:flutter/material.dart';
import 'package:kabadi/screens/upcoming_matches.dart';

// ignore: must_be_immutable
class TeamDetails extends StatelessWidget {
  List<String> imageNames = [
    "images/captain.jpg",
    "images/captain.jpg",
    "images/captain.jpg",
    "images/captain.jpg",
    "images/captain.jpg",
    "images/captain.jpg",
  ];

  List<Map<String, String>> players = [
    {
      'avatarImage': 'images/danbang.png',
      'playerName': 'Ishan Sharma',
      'jerseyNumber': '10',
      'playerImage': 'images/adharva.png',
    },
    {
      'avatarImage': 'images/bengaluru.png',
      'playerName': 'Jagran Josh',
      'jerseyNumber': '20',
      'playerImage': 'images/adharva.png',
    },
    {
      'avatarImage': 'images/gujarat.png',
      'playerName': 'Ishan Sharma',
      'jerseyNumber': '10',
      'playerImage': 'images/adharva.png',
    },
    {
      'avatarImage': 'images/danbang.png',
      'playerName': 'Jagran Josh',
      'jerseyNumber': '20',
      'playerImage': 'images/adharva.png',
    },
  ];

  TeamDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 25,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(Icons.arrow_back_ios),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Image.asset(
                        'images/bengal.png',
                        height: 50,
                      ),
                    ),
                    const SizedBox(width: 14.0),
                    const Text(
                      'Bengal Warriors',
                      style: TextStyle(
                        color: Color(0xFFfc5607),
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Text(
                    "Players",
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: players.map((Map<String, String> player) {
                      return buildPlayerContainer(player);
                    }).toList(),
                  ),
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: 150,
                      height: 135,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: const [
                          BoxShadow(
                            color: Color(0xFFcfcfcf),
                            blurRadius: 1,
                            spreadRadius: 2,
                            offset: Offset(
                              1,
                              3,
                            ),
                          )
                        ],
                        borderRadius: BorderRadius.circular(
                          20,
                        ),
                      ),
                      child: const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              'Total Number of \n Championship',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFFfc5607),
                              ),
                            ),
                          ),
                          Center(
                            child: Text(
                              '6',
                              style: TextStyle(
                                fontSize: 40,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      width: 150,
                      height: 135,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: const [
                          BoxShadow(
                            color: Color(0xFFcfcfcf),
                            blurRadius: 1,
                            spreadRadius: 2,
                            offset: Offset(
                              1,
                              3,
                            ),
                          )
                        ],
                        borderRadius: BorderRadius.circular(
                          20,
                        ),
                      ),
                      child: const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              'Total Number of \n Players',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFFfc5607),
                              ),
                            ),
                          ),
                          Center(
                            child: Text(
                              '25',
                              style: TextStyle(
                                fontSize: 40,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Text(
                    "Last News",
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(
                          10,
                        ),
                        child: Image.asset(
                          "images/pkl1.jpg",
                          width: 150,
                          height: 100,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const Expanded(
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Five reasons to be excited about Atharva's skills in this season",
                              style: TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "15 April 22",
                              style: TextStyle(fontSize: 15, color: Colors.grey),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(
                          10,
                        ),
                        child: Image.asset(
                          "images/pkl4.jpg",
                          width: 150,
                          height: 100,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const Expanded(
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "lajers have played like never before love to see it!",
                              style: TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "15 April 22",
                              style: TextStyle(fontSize: 15, color: Colors.grey),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Text(
                    "Upcoming Matches",
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Upcoming(), // Adding the Upcoming widget here
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildPlayerContainer(Map<String, String> playerDetails) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Container(
        width: 200,
        height: 300,
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Stack(
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      radius: 20,
                      backgroundImage:
                          AssetImage(playerDetails['avatarImage']!),
                    ),
                    Text(
                      playerDetails['playerName']!,
                      style: const TextStyle(fontSize: 20, color: Colors.white),
                    ),
                    Text(
                      playerDetails['jerseyNumber']!,
                      style: const TextStyle(fontSize: 25, color: Colors.white),
                    ),
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 30),
                child: Image.asset(
                  playerDetails['playerImage']!,
                  width: 200,
                  height: 200,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
