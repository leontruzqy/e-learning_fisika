// ignore_for_file: non_constant_identifier_names

import 'package:elearning/pages/quiz.dart';
import 'package:flutter/material.dart';

class PembahasanQuizSatuScreen extends StatelessWidget {
  final fontSizeText = const TextStyle(fontSize: 16);
  final int score;

  const PembahasanQuizSatuScreen({super.key, required this.score});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Pembahasan Quiz Soal Nomor 1',
        ),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            // Handle the back button action here
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => ResultScreen(
                        score: score,
                      )),
            );
          },
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => PembahasanQuizDuaScreen(
                    score: score,
                  ),
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
                Image.asset(
                  'assets/images/quiz1.png',
                  width: 500,
                )
              ],
            ),
          )),
        ),
      ),
    );
  }
}

class PembahasanQuizDuaScreen extends StatelessWidget {
  final fontSizeText = const TextStyle(fontSize: 16);
  final int score;

  const PembahasanQuizDuaScreen({super.key, required this.score});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Pembahasan Quiz Soal Nomor 2',
        ),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            // Handle the back button action here
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => ResultScreen(
                        score: score,
                      )),
            );
          },
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => PembahasanQuizSatuScreen(score: score),
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
                  builder: (context) => PembahasanQuizTigaScreen(score: score),
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
                      'assets/images/quiz2.png',
                      width: 500,
                    )
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

class PembahasanQuizTigaScreen extends StatelessWidget {
  final fontSizeText = const TextStyle(fontSize: 16);
  final int score;

  const PembahasanQuizTigaScreen({super.key, required this.score});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Pembahasan Quiz Soal Nomor 3',
        ),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            // Handle the back button action here
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => ResultScreen(
                        score: score,
                      )),
            );
          },
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => PembahasanQuizDuaScreen(score: score),
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
                  builder: (context) => PembahasanQuizEmpatScreen(score: score),
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
                    'assets/images/quiz3.png',
                    width: 500,
                  )
                ],
              ),
            )),
          ],
        ),
      ),
    );
  }
}

class PembahasanQuizEmpatScreen extends StatelessWidget {
  final fontSizeText = const TextStyle(fontSize: 16);
  final int score;

  const PembahasanQuizEmpatScreen({super.key, required this.score});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Pembahasan Quiz Soal Nomor 4',
        ),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            // Handle the back button action here
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => ResultScreen(
                        score: score,
                      )),
            );
          },
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => PembahasanQuizTigaScreen(score: score),
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
                  builder: (context) => PembahasanQuizLimaScreen(score: score),
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
                    'assets/images/quiz4.png',
                    width: 500,
                  )
                ],
              ),
            )),
          ],
        ),
      ),
    );
  }
}

class PembahasanQuizLimaScreen extends StatelessWidget {
  final fontSizeText = const TextStyle(fontSize: 16);
  final int score;

  const PembahasanQuizLimaScreen({super.key, required this.score});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Pembahasan Quiz Soal Nomor 5',
        ),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            // Handle the back button action here
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => ResultScreen(
                        score: score,
                      )),
            );
          },
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => PembahasanQuizEmpatScreen(score: score),
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
                  builder: (context) => PembahasanQuizEnamScreen(score: score),
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
                    'assets/images/quiz5.png',
                    width: 500,
                  )
                ],
              ),
            )),
          ],
        ),
      ),
    );
  }
}

class PembahasanQuizEnamScreen extends StatelessWidget {
  final fontSizeText = const TextStyle(fontSize: 16);
  final int score;

  const PembahasanQuizEnamScreen({super.key, required this.score});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Pembahasan Quiz Soal Nomor 6',
        ),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            // Handle the back button action here
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => ResultScreen(
                        score: score,
                      )),
            );
          },
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => PembahasanQuizLimaScreen(score: score),
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
                  builder: (context) => PembahasanQuizTujuhScreen(score: score),
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
                    'assets/images/quiz6.png',
                    width: 500,
                  )
                ],
              ),
            )),
          ],
        ),
      ),
    );
  }
}

class PembahasanQuizTujuhScreen extends StatelessWidget {
  final fontSizeText = const TextStyle(fontSize: 16);
  final int score;

  const PembahasanQuizTujuhScreen({super.key, required this.score});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Pembahasan Quiz Soal Nomor 7',
        ),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            // Handle the back button action here
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => ResultScreen(
                        score: score,
                      )),
            );
          },
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => PembahasanQuizEnamScreen(score: score),
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
                  builder: (context) =>
                      PembahasanQuizDelapanScreen(score: score),
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
                    'assets/images/quiz7.png',
                    width: 500,
                  )
                ],
              ),
            )),
          ],
        ),
      ),
    );
  }
}

class PembahasanQuizDelapanScreen extends StatelessWidget {
  final fontSizeText = const TextStyle(fontSize: 16);
  final int score;

  const PembahasanQuizDelapanScreen({super.key, required this.score});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Pembahasan Quiz Soal Nomor 8',
        ),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            // Handle the back button action here
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => ResultScreen(
                        score: score,
                      )),
            );
          },
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => PembahasanQuizTujuhScreen(score: score),
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
                  builder: (context) =>
                      PembahasanQuizSembilanScreen(score: score),
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
                    'assets/images/quiz8.png',
                    width: 500,
                  )
                ],
              ),
            )),
          ],
        ),
      ),
    );
  }
}

class PembahasanQuizSembilanScreen extends StatelessWidget {
  final fontSizeText = const TextStyle(fontSize: 16);
  final int score;

  const PembahasanQuizSembilanScreen({super.key, required this.score});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Pembahasan Quiz Soal Nomor 9',
        ),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            // Handle the back button action here
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => ResultScreen(
                        score: score,
                      )),
            );
          },
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      PembahasanQuizDelapanScreen(score: score),
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
                  builder: (context) =>
                      PembahasanQuizSepuluhScreen(score: score),
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
                    'assets/images/quiz9.png',
                    width: 500,
                  )
                ],
              ),
            )),
          ],
        ),
      ),
    );
  }
}

class PembahasanQuizSepuluhScreen extends StatelessWidget {
  final fontSizeText = const TextStyle(fontSize: 16);
  final int score;

  const PembahasanQuizSepuluhScreen({super.key, required this.score});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Pembahasan Quiz Soal Nomor 10',
        ),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            // Handle the back button action here
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => ResultScreen(
                        score: score,
                      )),
            );
          },
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      PembahasanQuizSembilanScreen(score: score),
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
                  builder: (context) => ResultScreen(score: score),
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
                    'assets/images/quiz10.png',
                    width: 500,
                  )
                ],
              ),
            )),
          ],
        ),
      ),
    );
  }
}
