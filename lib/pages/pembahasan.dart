import 'package:elearning/main.dart';
import 'package:elearning/pages/kalor.dart';
import 'package:elearning/pages/pemuaianZat.dart';
import 'package:elearning/pages/pemuaianZatPadat.dart';
import 'package:elearning/pages/perpindahanSuhu.dart';
import 'package:elearning/pages/videos_two.dart';
import 'package:flutter/material.dart';

class PembahasanSatuScreen extends StatelessWidget {
  final fontSizeText = const TextStyle(fontSize: 16);

  const PembahasanSatuScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Pembahasan Quiz Suhu',
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => const KalorTopicScreen(),
                ),
              );
            },
            icon: const Icon(Icons.arrow_forward),
          ),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: (Padding(
            padding: const EdgeInsets.all(32.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      '''*Termometer X\nTitik didih = 270°X\nTitik beku = 30°X\nSkala tunjuk = X
            ''',
                      style: fontSizeText,
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Text(
                      '''*Termometer R\nTitik didih = 80°R\nTitik beku = 0°R\nSkala tunjuk = 30R
            ''',
                      style: fontSizeText,
                    ),
                  ],
                ),
                Text(
                  '''\nDitanya : Skala tunjuk (termometer X)''',
                  style: fontSizeText,
                ),
                Text(
                  '''\n*Menggunakan cara 1 :''',
                  style: fontSizeText,
                ),
                Image.asset(
                  'assets/images/pembahasan1.png',
                  width: 400,
                ),
              ],
            ),
          )),
        ),
      ),
    );
  }
}

class PembahasanDuaScreen extends StatelessWidget {
  final fontSizeText = const TextStyle(fontSize: 16);

  const PembahasanDuaScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Pembahasan Quiz Kalor',
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => const KalorTopicScreen(),
                ),
              );
            },
            icon: const Icon(Icons.arrow_back),
          ),
          IconButton(
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => const PemuaianZatTopicScreen(),
                ),
              );
            },
            icon: const Icon(Icons.arrow_forward),
          ),
        ],
      ),
      body: SafeArea(
        child: Center(
          child: ListView(
            children: [
              (Padding(
                padding: const EdgeInsets.all(32.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                      'assets/images/pembahasan2.png',
                      width: 400,
                    ),
                  ],
                ),
              )),
            ],
          ),
        ),
      ),
    );
  }
}

class PembahasanTigaScreen extends StatelessWidget {
  final fontSizeText = const TextStyle(fontSize: 16);

  const PembahasanTigaScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Pembahasan Quiz Pemuaian Zat',
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => const PemuaianZatTopicScreen(),
                ),
              );
            },
            icon: const Icon(Icons.arrow_back),
          ),
          IconButton(
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => const PemuaianZatPadatQuizScreen(),
                ),
              );
            },
            icon: const Icon(Icons.arrow_forward),
          ),
        ],
      ),
      body: SafeArea(
        child: ListView(
          children: [
            (Padding(
              padding: const EdgeInsets.all(32.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '''\nKeping logam berlubang, jika dipanaskan akan memuai dan lubangnya membesar. Penerapannya membuka tutup botol logam dengan cara menyiram air panas.''',
                    style: fontSizeText,
                  ),
                ],
              ),
            )),
          ],
        ),
      ),
    );
  }
}

class PembahasanEmpatScreen extends StatelessWidget {
  final fontSizeText = const TextStyle(fontSize: 16);

  const PembahasanEmpatScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Pembahasan Quiz Pemuaian Zat Padat',
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => const PemuaianZatTopicScreen(),
                ),
              );
            },
            icon: const Icon(Icons.arrow_back),
          ),
          IconButton(
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => const PerpindahanSuhuTopicScreen(),
                ),
              );
            },
            icon: const Icon(Icons.arrow_forward),
          ),
        ],
      ),
      body: SafeArea(
        child: ListView(
          children: [
            (Padding(
              padding: const EdgeInsets.all(32.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    'assets/images/pembahasan4.png',
                    width: 400,
                  ),
                ],
              ),
            )),
          ],
        ),
      ),
    );
  }
}

class PembahasanLimaScreen extends StatelessWidget {
  final fontSizeText = const TextStyle(fontSize: 16);

  const PembahasanLimaScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Pembahasan Quiz Perpindahan Kalor',
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => const PerpindahanSuhuTopicScreen(),
                ),
              );
            },
            icon: const Icon(Icons.arrow_back),
          ),
          IconButton(
            onPressed: () {
              audioPlayer.pause();
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => const VideoTwoScreen(),
                ),
              );
            },
            icon: const Icon(Icons.arrow_forward),
          ),
        ],
      ),
      body: SafeArea(
        child: ListView(
          children: [
            (Padding(
              padding: const EdgeInsets.all(32.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    'assets/images/pembahasan5.png',
                    width: 400,
                  ),
                ],
              ),
            )),
          ],
        ),
      ),
    );
  }
}
