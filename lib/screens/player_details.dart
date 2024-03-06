import 'package:flutter/material.dart';
import 'package:kabadi/screens/discussion.dart';
import 'package:kabadi/screens/edit_profile.dart';
import 'package:kabadi/screens/upcoming_matches.dart';

class PlayerDetails extends StatefulWidget {
  const PlayerDetails({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _PlayerDetailsState createState() => _PlayerDetailsState();
}

class _PlayerDetailsState extends State<PlayerDetails>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            backgroundColor: const Color(0xFFf9f9f8),
            title: const Text(
              "Kabadi Players",
              style: TextStyle(
                color: Colors.black,
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            actions: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    icon: const Icon(Icons.search, size: 30),
                    color: const Color(0xFF6f758b),
                    onPressed: () {},
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  IconButton(
                    icon: const Icon(
                      Icons.notifications,
                      size: 30,
                    ),
                    color: const Color(0xFF6f758b),
                    onPressed: () {},
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const EditProfilePage()),
                      );
                    },
                    child: const Padding(
                      padding: EdgeInsets.only(right: 15),
                      child: CircleAvatar(
                        backgroundImage: AssetImage('images/profile.jpg'),
                        radius: 12,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          body: SingleChildScrollView(
            child: Container(
              color: const Color(0xFFf9f9f8),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 0.0),
                    Row(
                      //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                          icon: const Icon(
                            Icons.arrow_back_ios,
                            size: 25,
                          ),
                          color: const Color(0xFF6f758b),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        ),
                        const Text(
                          'BACK',
                          style: TextStyle(
                            fontSize: 16,
                            //   fontWeight: FontWeight.bold,
                            color: Color(0xFF6f758b),
                          ),
                        ),
                        const SizedBox(
                          width: 150,
                        ),
                        Transform(
                          alignment: Alignment.center,
                          transform: Matrix4.identity()..rotateY(3.141592653),
                          child: IconButton(
                            icon: const Icon(
                              Icons.reply,
                              size: 25,
                            ),
                            color: Colors.black,
                            onPressed: () {},
                          ),
                        ),
                        IconButton(
                          icon: const Icon(
                            Icons.bookmark_border,
                            size: 25,
                          ),
                          color: Colors.grey,
                          onPressed: () {},
                        ),
                      ],
                    ),
                    const SizedBox(height: 10.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        const Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment
                                .start, // Align text to the start (left)
                            children: [
                              Text(
                                'Atharva',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  fontSize: 45,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                              SizedBox(height: 200),
                              Row(
                                // Wrap CircleAvatar and Text in a Row
                                children: [
                                  CircleAvatar(
                                    backgroundImage:
                                        AssetImage("images/jersy.jpg"),
                                  ),
                                  SizedBox(
                                      width:
                                          10), // Add some space between the avatar and text
                                  Text(
                                    'DEFENDER',
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.grey,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        // Add some space between the column and image
                        Expanded(
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(0),
                            child: Image.asset(
                              "images/adharva.png",
                              width: 110,
                              height: 370,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      // mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Expanded(
                          flex: 1,
                          child: Container(
                            height: 141,
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
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Padding(
                                  padding: EdgeInsets.all(16.0),
                                  child: Text(
                                    'Age',
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 60),
                                  child: Text(
                                    '30',
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
                        ),
                        const SizedBox(width: 10),
                        Expanded(
                          flex: 1,
                          child: Container(
                            height: 141,
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
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Padding(
                                  padding: EdgeInsets.all(16.0),
                                  child: Text(
                                    'Won',
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 60),
                                  child: Text(
                                    '12',
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
                        ),
                        const SizedBox(width: 10),
                        Expanded(
                          flex: 1,
                          child: Container(
                            height: 141,
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
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Padding(
                                  padding: EdgeInsets.all(16.0),
                                  child: Text(
                                    'MATCHES PLAYED',
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 60),
                                  child: Text(
                                    '15',
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
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Row(
                      children: [
                        IconButton(
                          icon: const Icon(Icons.circle, size: 20),
                          color: Colors.blue[400],
                          onPressed: () {},
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const CommentBox()),
                            );
                          },
                          child: Text(
                            'Now discussing',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.blue[400],
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 100,
                        ),
                        const CircleAvatar(
                          backgroundImage: AssetImage('images/profile.jpg'),
                          radius: 12,
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Container(
                        color: Colors.white,
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      CircleAvatar(
                                        backgroundImage:
                                            AssetImage('images/profile.jpg'),
                                        radius: 18,
                                      ),
                                      SizedBox(width: 5),
                                      Text(
                                        'Kabadi news\n Patna Atharva',
                                        style: TextStyle(
                                          fontSize: 17,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Transform(
                                    alignment: Alignment.center,
                                    transform: Matrix4.identity()
                                      ..rotateY(3.141592653),
                                    child: IconButton(
                                      icon: const Icon(
                                        Icons.reply,
                                        size: 25,
                                      ),
                                      color: Colors.black,
                                      onPressed: () {},
                                    ),
                                  ),
                                ],
                              ),
                              const Divider(
                                height: 5,
                              ),
                              const Row(
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        '    22',
                                        style: TextStyle(
                                          fontSize: 17,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black,
                                        ),
                                      ),
                                      Text(
                                        '   Aug',
                                        style: TextStyle(
                                          fontSize: 17,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.grey,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                      width:
                                          10), // Add some space between the columns and the row
                                  Expanded(
                                    child: Text(
                                      "Five reason to be excited about Atharva's skills in this season",
                                      style: TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Container(
                        color: Colors.white,
                        child: const Padding(
                          padding: EdgeInsets.all(16.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'ABOUT',
                                style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                              Divider(
                                height: 5,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Upcoming(),
                  ],
                ),
              ),
            ),
          )),
    );
  }
}
