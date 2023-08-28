import 'package:elearning/main.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class VideoOneScreen extends StatefulWidget {
  @override
  _VideoOneScreenState createState() => _VideoOneScreenState();
}

class _VideoOneScreenState extends State<VideoOneScreen> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    // Initialize the video player controller
    _controller = VideoPlayerController.asset('assets/videos/videos1.mp4')
      ..initialize().then((_) {
        // Ensure the first frame is shown and set state to update the UI
        setState(() {});
      });
  }

  @override
  void dispose() {
    // Dispose of the video player controller when the widget is disposed
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Suhu dan Kalor'),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => LearningScreen(),
                ),
              );
            },
            icon: Icon(Icons.arrow_forward),
          ),
        ],
      ),
      body: Center(
        child: _controller.value.isInitialized
            ? AspectRatio(
                aspectRatio: _controller.value.aspectRatio,
                child: VideoPlayer(_controller),
              )
            : CircularProgressIndicator(), // Show a loading indicator until the video is initialized
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            if (_controller.value.isPlaying) {
              _controller.pause();
            } else {
              _controller.play();
            }
          });
        },
        child: Icon(
          _controller.value.isPlaying ? Icons.pause : Icons.play_arrow,
        ),
      ),
    );
  }
}

