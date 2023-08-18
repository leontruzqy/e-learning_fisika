import 'dart:async';
import 'package:elearning/topic.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart'; // Import the orientation package

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
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Learning App',
      home: SplashScreen(),
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
    Timer(
        Duration(seconds: 3),
        () => Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => MainMenuScreen())));
  }

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
              margin: EdgeInsets.all(20.0),
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

class LearningScreen extends StatelessWidget {
  // final List<String> topics = [
  //   'Suhu',
  //   'Kalor',
  //   'Pemuaian Zat',
  //   'Pemuaian Zat Padat',
  //   'Perpindahan Kalor'
  // ];
  final List<Topic> topics = [
    Topic(title: 'Suhu', content: 'Content for Suhu topic.'),
    Topic(title: 'Kalor', content: 'Content for Kalor topic.'),
    Topic(title: 'Pemuaian Zat', content: 'Content for Pemuaian Zat topic.'),
    Topic(
        title: 'Pemuaian Zat Padat',
        content: 'Content for Pemuaian Zat Padat topic.'),
    Topic(
        title: 'Perpindahan Kalor',
        content: 'Content for Perpindahan Kalor topic.')
  ];

  // LearningScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Materi'),
      ),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, // Two columns
        ),
        itemCount: topics.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => TopicDetailScreen(topic: topics[index]),
                ),
              );
            },
            child: Card(
              elevation: 2.0,
              margin: const EdgeInsets.all(80.0),
              child: Center(
                child: Text(topics[index].title), // Access the title property
              ),
            ),
          );
        },
      ),
    );
  }
}

class TopicDetailScreen extends StatelessWidget {
  final Topic topic;

  TopicDetailScreen({required this.topic});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(topic.title),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              topic.content,
              style: TextStyle(fontSize: 16),
            ),
            // Add other widgets to display more details about the topic
          ],
        ),
      ),
    );
  }
}

class MainMenuScreen extends StatelessWidget {
  const MainMenuScreen({super.key});

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
          Positioned(
            top: 32,
            left: 32,
            child: Card(
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
                primary: Colors.blue,
                onPrimary: Colors.white,
                padding: EdgeInsets.symmetric(horizontal: 32, vertical: 16),
                textStyle: TextStyle(fontSize: 24),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LearningScreen()),
                );
              },
              child: Text('Start', style: GoogleFonts.roboto(fontSize: 24)),
            ),
          ),
          // Image on the top right
          Positioned(
            top: 16,
            right: 16,
            child: Image.asset(
              'assets/images/ic_uny.png', // Change to your image path
              width: 120,
              height: 120,
            ),
          ),
        ],
      ),
    );
  }
}
