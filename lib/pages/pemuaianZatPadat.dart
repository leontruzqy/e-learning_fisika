import 'package:elearning/pages/pembahasan.dart';
import 'package:flutter/material.dart';

// class PemuaianZatPadatTopicScreen extends StatelessWidget {
//   final fontSizeText = const TextStyle(fontSize: 16);
//   final fontSizeMainText =
//       const TextStyle(fontSize: 18, fontWeight: FontWeight.bold);
//   final fontSizeMathText = const TextStyle(fontSize: 18);
//   final fontSizeTextItalic =
//       const TextStyle(fontSize: 18, fontStyle: FontStyle.italic);
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text(
//           'Pemuaian Zat Padat',
//         ),
//         centerTitle: true,
//         actions: [
//           IconButton(
//             onPressed: () {
//               Navigator.pushReplacement(
//                 context,
//                 MaterialPageRoute(
//                   builder: (context) => PemuaianZatTopicScreen(),
//                 ),
//               );
//             },
//             icon: const Icon(Icons.arrow_back),
//           ),
//           IconButton(
//             onPressed: () {
//               Navigator.pushReplacement(
//                 context,
//                 MaterialPageRoute(
//                   builder: (context) => PemuaianZatPadatQuizScreen(),
//                 ),
//               );
//             },
//             icon: const Icon(Icons.arrow_forward),
//           ),
//         ],
//       ),
//       body: SafeArea(
//         child: SingleChildScrollView(
//           child: (Padding(
//             padding: const EdgeInsets.all(32.0),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 const Text("data"),
//               ],
//             ),
//           )),
//         ),
//       ),
//     );
//   }
// }

class PemuaianZatPadatQuizScreen extends StatefulWidget {
  const PemuaianZatPadatQuizScreen({super.key});

  @override
  _PemuaianZatPadatQuizScreenState createState() =>
      _PemuaianZatPadatQuizScreenState();
}

class _PemuaianZatPadatQuizScreenState
    extends State<PemuaianZatPadatQuizScreen> {
  bool hasAnsweredQuestion = false;

  void answerQuestion() {
    if (hasAnsweredQuestion) {
      return;
    }
    setState(() {
      hasAnsweredQuestion = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Quiz : Pemuaian Zat Padat'),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(32.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Sebuah benda yang terbuat dari baja memiliki panjang 1000 cm. Berapakah pertambahan panjang baja itu, jika terjadi perubahan suhu sebesar 50°C?',
                    style: TextStyle(fontSize: 18),
                  ),
                  const SizedBox(height: 20),
                  ElevatedButton(
                    onPressed:
                        hasAnsweredQuestion ? null : () => answerQuestion(),
                    style: ButtonStyle(
                      overlayColor: MaterialStateProperty.resolveWith<Color?>(
                        (Set<MaterialState> states) {
                          if (states.contains(MaterialState.pressed)) {
                            return Colors.greenAccent; //<-- SEE HERE
                          }
                          return null; // Defer to the widget's default.
                        },
                      ),
                    ),
                    child: const Text('0,5 cm'),
                  ),
                  const SizedBox(height: 10),
                  ElevatedButton(
                    onPressed:
                        hasAnsweredQuestion ? null : () => answerQuestion(),
                    style: ButtonStyle(
                      overlayColor: MaterialStateProperty.resolveWith<Color?>(
                        (Set<MaterialState> states) {
                          if (states.contains(MaterialState.pressed)) {
                            return Colors.greenAccent; //<-- SEE HERE
                          }
                          return null; // Defer to the widget's default.
                        },
                      ),
                    ),
                    child: const Text('0,6 cm'),
                  ),
                  const SizedBox(height: 10),
                  ElevatedButton(
                    onPressed:
                        hasAnsweredQuestion ? null : () => answerQuestion(),
                    style: ButtonStyle(
                      overlayColor: MaterialStateProperty.resolveWith<Color?>(
                        (Set<MaterialState> states) {
                          if (states.contains(MaterialState.pressed)) {
                            return Colors.greenAccent; //<-- SEE HERE
                          }
                          return null; // Defer to the widget's default.
                        },
                      ),
                    ),
                    child: const Text('0,7 cm'),
                  ),
                  const SizedBox(height: 10),
                  ElevatedButton(
                    onPressed:
                        hasAnsweredQuestion ? null : () => answerQuestion(),
                    style: ButtonStyle(
                      overlayColor: MaterialStateProperty.resolveWith<Color?>(
                        (Set<MaterialState> states) {
                          if (states.contains(MaterialState.pressed)) {
                            return Colors.greenAccent; //<-- SEE HERE
                          }
                          return null; // Defer to the widget's default.
                        },
                      ),
                    ),
                    child: const Text('0,8 cm'),
                  ),
                  const SizedBox(height: 10),
                  ElevatedButton(
                    onPressed:
                        hasAnsweredQuestion ? null : () => answerQuestion(),
                    style: ButtonStyle(
                      overlayColor: MaterialStateProperty.resolveWith<Color?>(
                        (Set<MaterialState> states) {
                          if (states.contains(MaterialState.pressed)) {
                            return Colors.greenAccent; //<-- SEE HERE
                          }
                          return null; // Defer to the widget's default.
                        },
                      ),
                    ),
                    child: const Text('0,9 cm'),
                  ),
                  const SizedBox(height: 20),
                  if (hasAnsweredQuestion)
                    Column(
                      children: [
                        const Text(
                          'Jawaban: 0,6 cm',
                          style: TextStyle(fontSize: 18),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const PembahasanEmpatScreen(),
                              ),
                            );
                          },
                          child: const Text('Pembahasan'),
                        ),
                      ],
                    ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
