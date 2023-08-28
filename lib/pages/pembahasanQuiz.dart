// ignore_for_file: non_constant_identifier_names

import 'package:elearning/pages/quiz.dart';
import 'package:flutter/material.dart';

class PembahasanQuizSatuScreen extends StatelessWidget {
  final fontSizeText = const TextStyle(fontSize: 16);
  final int score;

  PembahasanQuizSatuScreen({required this.score});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Pembahasan Quiz Soal Nomor 1',
        ),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
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
            icon: Icon(Icons.arrow_forward),
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

  PembahasanQuizDuaScreen({required this.score});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Pembahasan Quiz Soal Nomor 2',
        ),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
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
            icon: Icon(Icons.arrow_back),
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
            icon: Icon(Icons.arrow_forward),
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

  PembahasanQuizTigaScreen({required this.score});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Pembahasan Quiz Soal Nomor 3',
        ),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
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
            icon: Icon(Icons.arrow_back),
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
            icon: Icon(Icons.arrow_forward),
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

  PembahasanQuizEmpatScreen({required this.score});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Pembahasan Quiz Soal Nomor 4',
        ),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
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
            icon: Icon(Icons.arrow_back),
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
            icon: Icon(Icons.arrow_forward),
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

  PembahasanQuizLimaScreen({required this.score});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Pembahasan Quiz Soal Nomor 5',
        ),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
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
            icon: Icon(Icons.arrow_back),
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
            icon: Icon(Icons.arrow_forward),
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

  PembahasanQuizEnamScreen({required this.score});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Pembahasan Quiz Soal Nomor 6',
        ),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
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
            icon: Icon(Icons.arrow_back),
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
            icon: Icon(Icons.arrow_forward),
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

  PembahasanQuizTujuhScreen({required this.score});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Pembahasan Quiz Soal Nomor 7',
        ),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
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
            icon: Icon(Icons.arrow_back),
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
            icon: Icon(Icons.arrow_forward),
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

  PembahasanQuizDelapanScreen({required this.score});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Pembahasan Quiz Soal Nomor 8',
        ),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
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
            icon: Icon(Icons.arrow_back),
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
            icon: Icon(Icons.arrow_forward),
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

  PembahasanQuizSembilanScreen({required this.score});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Pembahasan Quiz Soal Nomor 9',
        ),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
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
            icon: Icon(Icons.arrow_back),
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
            icon: Icon(Icons.arrow_forward),
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

  PembahasanQuizSepuluhScreen({required this.score});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Pembahasan Quiz Soal Nomor 10',
        ),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
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
            icon: Icon(Icons.arrow_back),
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
            icon: Icon(Icons.arrow_forward),
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
