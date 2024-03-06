import 'package:flutter/material.dart';
import 'package:kabadi/screens/team_details.dart';



class Teams extends StatefulWidget {
  const Teams({super.key});

  @override
  State<Teams> createState() => _TeamsState();
}

class _TeamsState extends State<Teams> {
  final List<Map<String, dynamic>> teams = [
    {"name": "Bengal Warriors", "image": "images/bengal.png"},
    {"name": "Bengaluru Bulls", "image": "images/bengaluru.png"},
    {"name": "Dabang Delhi K.C", "image": "images/danbang.png"},
    {"name": "Gujarat Giants", "image": "images/gujarat.png"},
    {"name": "Tamil Thalaivas", "image": "images/tamilThalaivas.png"},
    {"name": "PunneriPaltan", "image": "images/punneriPaltan.png"},
    {"name": "Bengal Warriors", "image": "images/bengal.png"},
    {"name": "Bengaluru Bulls", "image": "images/bengaluru.png"},
    {"name": "Dabang Delhi K.C", "image": "images/danbang.png"},
    {"name": "Gujarat Giants", "image": "images/gujarat.png"},
    {"name": "Tamil Thalaivas", "image": "images/tamilThalaivas.png"},
    {"name": "PunneriPaltan", "image": "images/punneriPaltan.png"},
    // Add more teams here as needed
  ];

  int? selectedIndex; // Track the index of the selected team

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFFf7f2f0),
      child: Column(
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 10.0, top: 40, bottom: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Kabadi",
                  style: TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFFfc5607),
                  ),
                ),
                SizedBox(
                  width: 58,
                ),
                Text(
                  "Teams",
                  style: TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: teams.length,
              itemBuilder: (BuildContext context, int index) {
                final team = teams[index];
                return TeamButton(
                  name: team['name'],
                  image: team['image'],
                  isSelected: selectedIndex ==
                      index, // Set isSelected based on selectedIndex
                  onTap: () {
                    setState(() {
                      // Update selectedIndex when a team is tapped
                      selectedIndex = index;
                    });
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => TeamDetails()),
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class TeamButton extends StatelessWidget {
  final String name;
  final String image;
  final bool isSelected;
  final VoidCallback onTap;

  const TeamButton({super.key, 
    required this.name,
    required this.image,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 18.0, horizontal: 25.0),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          height: 70,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.0),
            color: isSelected ? const Color(0xFFfc5607) : Colors.white,
          ),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 35),
                child: Image.asset(
                  image,
                  height: 50,
                ),
              ),
              const SizedBox(width: 14.0),
              Text(
                name,
                style: TextStyle(
                  color: isSelected ? Colors.white : const Color(0xFF325177),
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
