import 'dart:async';
import 'package:elearning/pages/pemuaianZat.dart';
import 'package:elearning/pages/videos_one.dart';
import 'package:elearning/pages/suhu.dart';
import 'package:elearning/pages/kalor.dart';
import 'package:elearning/pages/profil.dart';
import 'package:elearning/pages/pemuaianZatPadat.dart';
import 'package:elearning/pages/perpindahanSuhu.dart';
import 'package:elearning/pages/quiz.dart';
import 'package:elearning/pages/videos_two.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:audioplayers/audioplayers.dart';

final audioPlayer = AudioPlayer();
void main() {
  runApp(const LearningApp());
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.landscapeLeft,
    DeviceOrientation.landscapeRight,
  ]);
}

class LearningApp extends StatelessWidget {
  const LearningApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Learning App',
      home: SplashScreen(),
      theme: ThemeData(
        primarySwatch: Colors.brown,
      ),
    );
  }
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Play the audio when the splash screen is displayed

    Timer(
        const Duration(seconds: 3),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => WelcomeScreen())));
  }
  // Function to play the audio

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background image
          Image.asset(
            'assets/images/bg.jpg',
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
          ),
          // Text centered on top of the background image
          Center(
            child: Card(
              margin: const EdgeInsets.all(20.0),
              child: Text(
                'Suhu dan Kalor',
                style: GoogleFonts.archivo(
                    fontSize: 42,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class LearningScreen extends StatefulWidget {
  @override
  State<LearningScreen> createState() => _LearningScreenState();
}

class _LearningScreenState extends State<LearningScreen> {
  final List<String> topics = [
    'Suhu',
    'Kalor',
    'Pemuaian Zat',
    'Pemuaian Zat Padat',
    'Perpindahan Kalor',
    'Fenomena Suhu dan Kalor'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Materi'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            // Handle the back button action here
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => MainMenuScreen()),
            );
          },
        ),
      ),
      body: ListView(
        children: [
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Expanded(
                      flex: 1,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: topics.sublist(0, 3).map((topic) {
                          return Padding(
                            padding: const EdgeInsets.all(18.0),
                            child: ElevatedButton(
                              onPressed: () {
                                if (topic == 'Suhu') {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            SuhuTopicScreen()),
                                  );
                                } else if (topic == 'Kalor') {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            KalorTopicScreen()),
                                  );
                                } else if (topic == 'Pemuaian Zat') {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            PemuaianZatTopicScreen()),
                                  );
                                }
                              },
                              style: ElevatedButton.styleFrom(
                                primary: Colors.brown,
                                minimumSize: Size(300, 80),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(16),
                                ),
                                padding: EdgeInsets.all(20),
                              ),
                              child: Text(
                                topic,
                                style: const TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          );
                        }).toList(),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: topics.sublist(3).map((topic) {
                          return Padding(
                            padding: const EdgeInsets.all(18.0),
                            child: ElevatedButton(
                              onPressed: () {
                                if (topic == 'Pemuaian Zat Padat') {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            PemuaianZatPadatTopicScreen()),
                                  );
                                } else if (topic == 'Perpindahan Kalor') {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            PerpindahanSuhuTopicScreen()),
                                  );
                                } else if (topic == 'Fenomena Suhu dan Kalor') {
                                  audioPlayer.pause();
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => VideoTwoScreen()),
                                  );
                                }
                              },
                              style: ElevatedButton.styleFrom(
                                primary: Colors.brown,
                                minimumSize: Size(300, 80),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(16),
                                ),
                                padding: EdgeInsets.all(20),
                              ),
                              child: Text(
                                topic,
                                style: const TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          );
                        }).toList(),
                      ),
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

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background image
          Image.asset(
            'assets/images/bg.jpg',
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
          ),
          // Title on the top left
          // ignore: prefer_const_constructors
          Positioned(
            top: 32,
            left: 32,
            child: const Card(
              margin: EdgeInsets.all(20.0),
              child: Text(
                'Suhu dan Kalor',
                style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          // Start Button on the bottom left
          Positioned(
            bottom: 32,
            left: 64,
            child: ElevatedButton(
              //width 300
              style: ElevatedButton.styleFrom(
                padding:
                    const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
                textStyle: const TextStyle(fontSize: 24),
              ),
              onPressed: () {
                audioPlayer.stop();
                audioPlayer.play(AssetSource('audio/music.mp3'));
                audioPlayer.setReleaseMode(ReleaseMode.loop);
                // audioPlayer.play(AssetSource('audio/music.mp3'));
                // audioPlayer.setVolume(0.2);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MainMenuScreen()),
                );
              },
              child: Text('Masuk', style: GoogleFonts.roboto(fontSize: 24)),
            ),
          ),

          // Image on the top right
          Positioned(
            top: 16,
            right: 16,
            child: Image.asset(
              'assets/images/ic_uny.png', // Change to your image path
              width: 160,
              height: 160,
            ),
          ),
        ],
      ),
    );
  }
}

class MainMenuScreen extends StatefulWidget {
  @override
  State<MainMenuScreen> createState() => _MainMenuScreenState();
}

class _MainMenuScreenState extends State<MainMenuScreen> {
  @override
  void dispose() {
    audioPlayer.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Padding(
          //   padding: const EdgeInsets.all(26.0),
          //   child: Ink(
          //     decoration: const ShapeDecoration(
          //       color: Colors.brown,
          //       shape: CircleBorder(),
          //     ),
          //     child: IconButton.filledTonal(
          //       icon: const Icon(Icons.arrow_back_ios_new_outlined),
          //       color: Colors.white,
          //       onPressed: () {
          //         Navigator.push(
          //           context,
          //           MaterialPageRoute(builder: (context) => WelcomeScreen()),
          //         );
          //       },
          //     ),
          //   ),
          // ),
          // Three horizontally ordered buttons
          Center(
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox.fromSize(
                  size: Size(126, 50),
                  child: ElevatedButton(
                    onPressed: () {
                      audioPlayer.pause();
                      // audioPlayer.setVolume(0.2);
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => VideoOneScreen()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      // primary: Colors.brown,
                      // onPrimary: Colors.green,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                    ),
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(Icons.book), // <-- Icon
                        Text("Materi"), // <-- Text
                      ],
                    ),
                  ),
                ),
                SizedBox(width: 16),
                SizedBox.fromSize(
                  size: Size(126, 50),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => QuizScreen()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      // primary: Colors.brown,
                      // onPrimary: Colors.green,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                    ),
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(Icons.quiz), // <-- Icon
                        Text("Kuis"), // <-- Text
                      ],
                    ),
                  ),
                ),
                const SizedBox(width: 16),
                SizedBox.fromSize(
                  size: Size(126, 50),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ProfileScreen()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      // primary: Colors.brown,
                      // onPrimary: Colors.green,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                    ),
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(Icons.person), // <-- Icon
                        Text("Profil"), // <-- Text
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
//############################################################################################################

class SoundPlayer {
  AudioPlayer player = AudioPlayer();
  AudioCache cache = AudioCache();

  static final SoundPlayer instance = SoundPlayer._privateConstructor();

  SoundPlayer._privateConstructor() {
    this.player.setVolume(4.0);
  }

  Future loopSound() async {
    player.stop();
    player.play(AssetSource('sounds/cash.mp3'));
    player.setReleaseMode(ReleaseMode.loop);
  }

  Future playSingleSound() async {
    player.play(AssetSource('sounds/cash.mp3'));
  }

  Future stop() async {
    player.stop();
  }
}
