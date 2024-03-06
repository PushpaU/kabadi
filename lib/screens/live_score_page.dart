import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class LiveScore extends StatefulWidget {
  const LiveScore({super.key});

  @override
  State<LiveScore> createState() => _LiveScoreState();
}

class _LiveScoreState extends State<LiveScore> {
  late VideoPlayerController _videoPlayerController;
  bool _isPlaying = false;

  @override
  void initState() {
    super.initState();
    _videoPlayerController =
        VideoPlayerController.asset('images/proKabadiHighlight.mp4')
          ..initialize().then((_) {
            setState(() {});
          });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          //primaryColor: Colors.blue,
          //primarySwatch: Color(0xFFfc5607),
          ),
      home: Scaffold(
        body: Stack(
          children: [
            Column(
              children: [
                Container(
                  color: const Color(0xFF232423),
                  child: const Column(
                    children: [
                      SizedBox(height: 20), // Adding space at the top
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          
                          Text(
                            "Kabadi League",
                            style: TextStyle(
                              color: Color(0xFF716f6a),
                              fontSize: 15,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 4),
                            child: Text(
                              "•",
                              style: TextStyle(
                                color: Color(0xFF716f6a),
                                fontSize: 15,
                              ),
                            ), // Dot symbol
                          ),
                          Text(
                            "Regular Season",
                            style: TextStyle(
                              color: Color(0xFF716f6a),
                              fontSize: 15,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10), // Adding space between rows
                      Center(
                        child: Text(
                          "Chennai",
                          style: TextStyle(
                            color: Color(0xFF716f6a),
                            fontSize: 15,
                          ),
                        ),
                      ),
                    ],
                  ),
                ), // Adding space between text and image container
                SizedBox(
                  height: 270,
                  child: Stack(
                    fit: StackFit.expand,
                    children: [
                      Image.asset(
                        'images/liveScoreBg.jpg',
                        fit: BoxFit.cover,
                      ),
                      Container(
                        color: Colors.black.withOpacity(0.7),
                      ),
                      Positioned(
                        top: 10,
                        left: 0,
                        right: 0,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                SizedBox(
                                  height: 100,
                                  child: Image.asset(
                                    'images/punneriPaltan.png',
                                    fit: BoxFit.fitHeight,
                                  ),
                                ),
                                const Text("1",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 40,
                                      fontWeight: FontWeight.bold,
                                    )),
                                const Text(
                                  ":",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 40,
                                      fontWeight: FontWeight.bold),
                                ),
                                const Text("0",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 40,
                                      fontWeight: FontWeight.bold,
                                    )),
                                SizedBox(
                                    height: 100,
                                    child: Image.asset(
                                      'images/tamilThalaivas.png',
                                      fit: BoxFit.fitHeight,
                                    )),
                              ],
                            ),
                            const SizedBox(
                                height: 8), // Adding space between rows
                            const Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text(
                                  "PUNNERI \n PALTON",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                    width: 12), // Adding space between texts

                                Text(
                                  "TAMIL \n THALAIVAS",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 10,
                            ),

                            ElevatedButton(
                              onPressed: () {
                                // Action for login button
                              },
                              style: ElevatedButton.styleFrom(
                                padding: const EdgeInsets.symmetric(
                                  vertical: 10,
                                  horizontal: 130,
                                ),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                backgroundColor: const Color(0xFFfc5607),
                                foregroundColor: Colors.white,
                              ),
                              child: const Text('Live Score'),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Positioned(
              top: 300,
              //bottom: 10,
              left: 0,
              right: 0,
              child: Stack(children: [
                Container(
                  //height: 380,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius:
                        BorderRadius.vertical(top: Radius.circular(30)),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(left: 20, top: 10, bottom: 10),
                        child: Text(
                          "Last 3 Raids and Points",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          buildContainer("1", "10"),
                          buildContainer("2", "8"),
                          buildContainer("3", "9"),
                        ],
                      ),

                      Padding(
                        padding: const EdgeInsets.only(
                            left: 20, top: 15, bottom: 10),
                        child: Row(
                          children: [
                            const Text(
                              "Total Raids",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            Container(
                              width: 70,
                              height: 30,
                              decoration: BoxDecoration(
                                border:
                                    Border.all(color: const Color(0xFF716f6a)),
                                borderRadius: BorderRadius.circular(5),
                                color: const Color(0xFFf8f8f7),
                              ),
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 15),
                              child: const Text(
                                "10",
                                style: TextStyle(
                                  color: Color(0xFF716f6a),
                                  fontSize: 16,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),

                      const Divider(
                        // height: 10,
                        color: Color(0xFF716f6a),
                      ),

                      const Padding(
                        padding: EdgeInsets.fromLTRB(20, 10, 0, 10),
                        child: Text(
                          "LIVE STREAM",
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),

                      // Vedio Player
                      vedioPlayer(),
                    ],
                  ),
                ),
                Positioned(
                  top: 188,
                  right: 40,
                  child: FloatingActionButton(
                    onPressed: () {
                      setState(() {
                        _isPlaying = !_isPlaying;
                        if (_isPlaying) {
                          _videoPlayerController.play();
                        } else {
                          _videoPlayerController.pause();
                        }
                      });
                    },
                    backgroundColor: const Color(0xFFfc5607),
                    shape: RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.circular(30), // make it rounded
                    ),
                    child: Icon(
                      _isPlaying ? Icons.pause : Icons.play_arrow,
                      size: 32, // increase icon size
                      color: Colors.white,
                    ),
                  ),
                ),
              ]),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildContainer(String prefix, String suffix) {
    return Container(
      width: 100,
      height: 50,
      decoration: BoxDecoration(
        border: Border.all(color: const Color(0xFF716f6a)),
        borderRadius: BorderRadius.circular(5),
        color: const Color(0xFFf8f8f7),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            prefix,
            style: const TextStyle(
              color: Color(0xFF716f6a),
              fontSize: 16,
            ),
          ),
          Text(
            suffix,
            style: const TextStyle(
              color: Color(0xFF716f6a),
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }

  Widget vedioPlayer() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
      child: Container(
        child: _videoPlayerController.value.isInitialized
            ? AspectRatio(
                aspectRatio: _videoPlayerController.value.aspectRatio,
                child: VideoPlayer(_videoPlayerController),
              )
            : Container(),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _videoPlayerController.dispose();
  }
}
