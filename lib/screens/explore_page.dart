import 'package:flutter/material.dart';
import 'package:kabadi/screens/image_card.dart';

class ExplorePage extends StatefulWidget {
  const ExplorePage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _ExplorePageState createState() => _ExplorePageState();
}

class _ExplorePageState extends State<ExplorePage> {
  final PageController _pageController = PageController(initialPage: 0);
  int _activePage = 0;
  final List<Widget> _pages = [
    Image.asset('images/l3.jpg', fit: BoxFit.cover),
    Image.asset('images/l3.jpg', fit: BoxFit.cover),
    Image.asset('images/l2.jpg', fit: BoxFit.cover),
    Image.asset('images/l3.jpg', fit: BoxFit.cover),
    Image.asset('images/pkl1.jpg', fit: BoxFit.cover),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: const Text(
          'Explore',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 25,
          ),
        ),
        actions: [
          IconButton(
            color: Colors.black,
            icon: const Icon(Icons.search),
            onPressed: () {},
          ),
          IconButton(
            color: Colors.black,
            icon: const Icon(Icons.notifications),
            onPressed: () {},
          ),
          const SizedBox(
            width: 10,
          ),
          const CircleAvatar(
            radius: 12.0, // Adjust the radius according to your needs
            backgroundImage:
                AssetImage('images/cricket.jpg'), // Add your image path
          ),
          const SizedBox(
            width: 10,
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  ElevatedButton.icon(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                          Colors.deepOrangeAccent),
                    ),
                    onPressed: () {},
                    icon: const Icon(Icons
                        .local_fire_department), // Add your desired icon here
                    label: const Text('Trending'),
                  ),
                  const SizedBox(width: 20),
                  ElevatedButton.icon(
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.white),
                    ),
                    onPressed: () {},
                    icon: const Icon(Icons.sports_basketball,
                        color: Colors.black54), // Add your desired icon here
                    label: const Text(
                      'Explore',
                      style: TextStyle(color: Colors.black54),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 200,
                width: 350,
                child: Stack(children: [
                  PageView.builder(
                    controller: _pageController,
                    onPageChanged: (int page) {
                      setState(() {
                        _activePage = page;
                      });
                    },
                    itemCount: _pages.length,
                    itemBuilder: (BuildContext context, int index) {
                      return _pages[index % _pages.length];
                    },
                  ),
                  Positioned(
                      bottom: 0,
                      left: 0,
                      right: 270,
                      height: 40,
                      child: Container(
                          color: Colors.transparent,
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: List<Widget>.generate(
                                  _pages.length,
                                  (index) => Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 2),
                                        child: InkWell(
                                            onTap: () {
                                              _pageController.animateToPage(
                                                  index,
                                                  duration: const Duration(
                                                      milliseconds: 300),
                                                  curve: Curves.easeIn);
                                            },
                                            child: CircleAvatar(
                                                radius: 3,
                                                backgroundColor:
                                                    _activePage == index
                                                        ? Colors.red
                                                        : Colors.white)),
                                      )))))
                ]),
              ),
              const SizedBox(height: 20),
              const Text(
                "Recommended",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              SizedBox(
                height: 150, // Adjust the height according to your UI
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: const [
                    ImageCard(imagePath: 'images/l1.jpg'),
                    ImageCard(imagePath: 'images/l2.jpg'),
                    ImageCard(imagePath: 'images/l3.jpg'),
                    ImageCard(imagePath: 'images/pkl1.jpg'),
                  ],
                ),
              ),
              Card(
                elevation: 4,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                   
                    children: [
                      const Row(
                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              CircleAvatar(
                                radius:
                                    12.0, // Adjust the radius according to your needs
                                backgroundImage: AssetImage(
                                    'images/cricket.jpg'), // Add your image path
                              ),
                              Text(
                                "Tim cherry",
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Icon(
                                Icons.alarm,
                                color: Colors.grey,
                                size: 13,
                              ),
                              Text(
                                "6h ago",
                                style:
                                    TextStyle(color: Colors.grey, fontSize: 10),
                              ),
                              Icon(
                                Icons.more_vert,
                                color: Colors.grey,
                                size: 25,
                              ),
                            ],
                          )
                        ],
                      ),
                      const SizedBox(height: 10),
                      const Text(
                        "The Raptors Don't Need Leonard To be in that game! Thet really don't!",
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                      const SizedBox(height: 10),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: Image.asset(
                          'images/l2.jpg',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
