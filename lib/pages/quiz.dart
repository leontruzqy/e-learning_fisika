import 'package:elearning/main.dart';
import 'package:elearning/pages/pembahasanQuiz.dart';
import 'package:flutter/material.dart';

// ScoreHolder class
class QuizScreen extends StatefulWidget {
  @override
  _QuizScreenState createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  int currentQuestion = 0;
  int score = 0;
  bool isAnswered = false;
  bool isCorrect = false;
  bool isAnswerSelected = false; // Add this variable
  bool isReadyForNext = false; // Add this variable

  final List<Map<String, dynamic>> questions = [
    {
      'questionText':
          'Dalam wadah tertutup A, terdapat sejumlah es pada titik leburnya. Sementara itu, dalam wadah tertutup B terdapat sejumlah es asin (es yang terbuat dari air asin) pada titik leburnya yang massanya sama. Kedua wadah terbuat dari logam. Kemudian, kedua wadah diletakkan saling bersentuhan. Pada keadaan akhir, terdapat air asin Bersama es asin dalam wadah B dan es dalam wadah A. karena ….',
      'answers': [
        {
          'text': 'kalor jenis es lebih besar daripada kalor lebur es asin',
          'correct': false
        },
        {
          'text': 'titik lebur es asin lebih tinggi daripada titik lebur es',
          'correct': false
        },
        {
          'text': 'kalor jenis es asin lebih besar daripada kalor lebur es',
          'correct': false
        },
        {
          'text': 'titik lebur es asin lebih rendah daripada titik lebur es',
          'correct': true
        },
        {
          'text': 'kalor jenis air asin lebih besar daripada kalor lebur es',
          'correct': false
        },
      ],
    },
    {
      'questionText':
          'Thermometer A yang telah ditera menunjukkan angka -30°A pada titik beku air pada 90°A pada titik didih air. Maka suhu 60°C sama dengan ….',
      'answers': [
        {'text': '80°C', 'correct': false},
        {'text': '75°C', 'correct': true},
        {'text': '60°C', 'correct': false},
        {'text': '50°C', 'correct': false},
        {'text': '45°C', 'correct': false},
      ],
    },
    {
      'questionText':
          'Kalor yang dilepaskan apabila 15 gram air bersuhu 100°C didinginkan hingga suhu 20°C adalah (kalor uap = 540 kal/gram. Kalor jenis air 1 kal/gram°C)',
      'answers': [
        {'text': '9.300 kal', 'correct': false},
        {'text': '8.100 kal', 'correct': false},
        {'text': '3.900 kal', 'correct': false},
        {'text': '2.100 kal', 'correct': false},
        {'text': '1.200 kal', 'correct': true},
      ],
    },
    {
      'questionText':
          'Sepotong logam dipanaskan hingga suhunya 80°C panjangnya menjadi 115 cm. Jika koefisen muai panjang logam 3.10^-3/°C dan mula-mula suhunya 30°C, maka panjang logam mula-mula adalah ....',
      'answers': [
        {'text': '100 cm', 'correct': true},
        {'text': '101,5 cm', 'correct': false},
        {'text': '102 cm', 'correct': false},
        {'text': '102,5 cm', 'correct': false},
        {'text': '103 cm', 'correct': false},
      ],
    },
    {
      'questionText':
          'Elemen pemanas sebuah kompor listrik 110 V mempunyai hambatan 20 ohm. Jika kompor ini digunakan untuk memanaskan 1 kg air bersuhu 20°C selama 7 menit dan dipasang pada tegangan 110 V maka suhu akhir (kalor jenis air = 4.200 J/kg°C)',
      'answers': [
        {'text': '23,7°C', 'correct': false},
        {'text': '43,7°C', 'correct': false},
        {'text': '60,5°C', 'correct': false},
        {'text': '80,5°C', 'correct': true},
        {'text': '94,0°C', 'correct': false},
      ],
    },
    {
      'questionText':
          'Sebuah kubus dengan volume V terbuat dari bahan yang koefisien muai panjangnya α. Jika suhu kubus dinaikkan sebesar ∆Τ, maka luasnya akan bertambah ….',
      'answers': [
        {'text': 'αV∆Τ', 'correct': false},
        {'text': '6αV∆Τ', 'correct': false},
        {'text': '12 αV∆Τ', 'correct': false},
        {'text': '6 αV2/3∆Τ', 'correct': false},
        {'text': '12αV^2/3∆Τ', 'correct': true},
      ],
    },
    {
      'questionText':
          'Didalam Sebuah bejana besi bermassa 200 gram terdapat 100 gr minyak bersuhu 10°C. di dalam bejana dimasukkan 50 gr besi bersuhu 75°C. bila suhu bejana naik 5°C dan kalor jenis minyak = 0,4 kal/g°C maka kalor jenis besi adalah ….',
      'answers': [
        {'text': '0,143 kal/g°C', 'correct': true},
        {'text': '0,098 kal/g°C', 'correct': false},
        {'text': '0,084 kal/g°C', 'correct': false},
        {'text': '0,075 kal/g°C', 'correct': false},
        {'text': '0,064 kal/g°C', 'correct': false},
      ],
    },
    {
      'questionText':
          'Es bermassa M gram bersuhu 0°C dimasukkan ke dalam air bermassa 340 gram suhu 20°C yang ditempatkan pada bejana khusus. Anggap bejana tidak menyerap atau melepaskan kalor. Jika L_es=80 kal.g^-1.c_air=1 kal.g^-10C-1. Semua es mencair dan kesetimbangan termal dicapai pada suhu 5°C, maka massa es (M) adalah ….',
      'answers': [
        {'text': ' 60 gram', 'correct': true},
        {'text': '68 gram', 'correct': false},
        {'text': '75 gram', 'correct': false},
        {'text': '80 gram', 'correct': false},
        {'text': '170 gram', 'correct': false},
      ],
    },
    {
      'questionText': 'Besar suhu 30°R sama dengan ….',
      'answers': [
        {'text': '25,5°C', 'correct': false},
        {'text': '37,5°C', 'correct': true},
        {'text': '42,5°C', 'correct': false},
        {'text': '35,5°C', 'correct': false},
        {'text': '20,5°C', 'correct': false},
      ],
    },
    {
      'questionText':
          'Suatu ruangan menunjukkan angka suhu 25°C. jika besar suhu tersebut dinyatakan dengan skala fahreinheit adalah ….',
      'answers': [
        {'text': '33°F', 'correct': false},
        {'text': '51°F', 'correct': false},
        {'text': '65°F', 'correct': false},
        {'text': '77°F', 'correct': true},
        {'text': '82°F', 'correct': false},
      ],
    },
    // Add more questions
  ];
  void answerQuestion(bool isCorrectAnswer) {
    if (isAnswerSelected) {
      return; // Return early if an answer is already selected
    }
    setState(() {
      isAnswered = true;
      isCorrect = isCorrectAnswer;
      isAnswerSelected = true; // Set the flag

      if (isCorrect) {
        score += 10;
      }

      if (currentQuestion < questions.length - 1) {
        // The next question is available
        Future.delayed(const Duration(seconds: 1), () {
          setState(() {
            currentQuestion++;
            isAnswerSelected = false; // Reset the flag for the next question
            isReadyForNext = false; // Reset the flag for the next question
            isAnswered = false; // Reset the flag for the next question
          });
        });
      } else {
        // No more questions, display score or navigate to a result screen
        // You can add further logic here
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => ResultScreen(score: score),
          ),
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Quiz'),
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            if (isAnswered)
              Positioned(
                bottom: 80,
                right: 16,
                child: Image.asset(
                  isCorrect
                      ? 'assets/images/benar.png'
                      : 'assets/images/wrong.png',
                  width: 120,
                  height: 120,
                ),
              ),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      questions[currentQuestion]['questionText'] as String,
                      style: const TextStyle(fontSize: 18),
                    ),
                    const SizedBox(height: 20), // Add spacing here

                    ...(questions[currentQuestion]['answers']
                            as List<Map<String, dynamic>>)
                        .map(
                          (answer) => Column(
                            children: [
                              ElevatedButton(
                                onPressed: isAnswerSelected
                                    ? null
                                    : () => answerQuestion(
                                        answer['correct'] as bool),
                                child: Text(
                                  answer['text'] as String,
                                  style: const TextStyle(
                                      fontSize: 18, color: Colors.white),
                                ),
                              ),
                              const SizedBox(height: 10), // Add spacing here
                            ],
                          ),
                        )
                        .toList(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ResultScreen extends StatelessWidget {
  final int score;

  ResultScreen({required this.score});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Quiz Result'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Skor kamu: $score',
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    // Navigate back to the quiz screen or any other desired screen
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => QuizScreen()));
                  },
                  child: const Text('Ulangi'),
                ),
                const SizedBox(width: 20), // Add spacing between the buttons
                ElevatedButton(
                  onPressed: () {
                    // Navigate back to the quiz screen or any other desired screen
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => MainMenuScreen()));
                  },
                  child: const Text('Main Menu'),
                ),
                const SizedBox(width: 20), // Add spacing between the buttons
                ElevatedButton(
                  onPressed: () {
                    // Navigate back to the quiz screen or any other desired screen
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                PembahasanQuizSatuScreen(score: score)));
                  },
                  child: const Text('Pembahasan'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
