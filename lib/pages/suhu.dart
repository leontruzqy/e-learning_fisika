import 'package:elearning/pages/pembahasan.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_math_fork/flutter_math.dart';

class SuhuTopicScreen extends StatefulWidget {
  const SuhuTopicScreen({super.key});

  @override
  State<SuhuTopicScreen> createState() => _SuhuTopicScreenState();
}

class _SuhuTopicScreenState extends State<SuhuTopicScreen> {
  final fontSizeText = const TextStyle(fontSize: 16);
  final fontSizeInfo = const TextStyle(fontSize: 12);
  final fontSizeMainText =
      const TextStyle(fontSize: 18, fontWeight: FontWeight.bold);
  final fontSizeMathText = const TextStyle(fontSize: 18);
  final fontSizeTextItalic =
      const TextStyle(fontSize: 18, fontStyle: FontStyle.italic);
  double _sliderValue = 0.0;
  double _fahrenheitValue = 0;
  double _kelvinValue = 0;
  double _reamurValue = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Suhu'),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => const SuhuQuizScreen(),
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
                Text(
                  '''Mengukur panas dan dingin suatu benda dengan tangan dan perasaan (indra) tidak dapat mengukur suhu secara tepat.Mengapa hal tersebut dapat terjadi? Sedangkan, menggunakan termometer, pengukuran suhu akan lebih akurat. Mengapa demikian?\n
      Suhu merupakan suatu besaran yang menyatakan derajat panas dingin suatu benda. Alat yang biasa digunakan untuk pengukur suhu dinamakan termometer.
            ''',
                  style: fontSizeText,
                  textAlign: TextAlign.justify,
                ),
                Text(
                  '''a.	Termometer\n
      Termometer merupakan alat yang sederhana dengan fungsi yang besar. Ada bermacam macam termometer mulai dari yang analog sampai yang digital, mulai dari yang menggunakan air raksa sampai yang menggunakan inframerah. (Kusrini, 2020)
      Termometer''',
                  style: fontSizeText,
                  textAlign: TextAlign.justify,
                ),
                Text(
                  '''\nb.	Skala Suhu\n
      Terdapat 4 skala suhu yang digunakan pada termometer di antaranya Celcius (C), Reamur (R), Fahrenheit (F) dan Kelvin (K)
      ''',
                  style: fontSizeText,
                  textAlign: TextAlign.justify,
                ),
                Center(
                    child: Text('''Tabel 1. Skala Suhu''',
                        style: fontSizeInfo, textAlign: TextAlign.justify)),
                Center(
                  child: Image.asset(
                    'assets/images/table_suhu1.png',
                    width: 600,
                  ),
                ),
                Center(
                    child: Text('''\n\nTabel 2. Konversi antara 4 skala''',
                        style: fontSizeInfo, textAlign: TextAlign.justify)),
                Center(
                  child: Image.asset(
                    'assets/images/table_suhu2.png',
                    width: 700,
                  ),
                ),
                Text(
                    '''\nSkala Celcius dan Fahrenheit banyak kita temukan di kehidupan sehari-hari. Sedangkan skala suhu yang ditetapkan sebagai Satuan Internasional adalah Kelvin. Berikut gambar cara mengkonversi suhu pada 2 termometer yang berbeda secara umum.\n
        ''',
                    style: fontSizeText, textAlign: TextAlign.justify),
                Center(
                  child: Image.asset(
                    'assets/images/titik_didih.png',
                    width: 400,
                  ),
                ),
                Center(
                  child: Text('Gambar 1. Konversi suhu 2 termometer',
                      style: fontSizeInfo, textAlign: TextAlign.justify),
                ),
                const Text(
                    '''\nSecara matematis, hal ini dapat ditulis sebagai berikut\n''',
                    style: TextStyle(fontSize: 18),
                    textAlign: TextAlign.justify),
                Math.tex(
                    r'\frac{X-X_{min}}{X_{max}-X_{min}}~-~\frac{Y-Y_{min}} {Y_{max}-Y_{min}}',
                    mathStyle: MathStyle.display,
                    textStyle: fontSizeMathText),
                const Text('\n\n\n\n'),
                const Text(
                  'Temperatur:',
                  style: TextStyle(fontSize: 18),
                ),
                SliderTheme(
                  data: SliderTheme.of(context).copyWith(
                    activeTrackColor:
                        Colors.blue, // Customize the active track color
                    inactiveTrackColor:
                        Colors.grey, // Customize the inactive track color
                    thumbColor: Colors.blue, // Customize the thumb color
                    overlayColor: Colors.blue
                        .withOpacity(0.3), // Customize the overlay color
                    thumbShape:
                        const RoundSliderThumbShape(enabledThumbRadius: 10.0),
                    overlayShape:
                        const RoundSliderOverlayShape(overlayRadius: 20.0),
                    tickMarkShape: const RoundSliderTickMarkShape(),
                  ),
                  child: Slider(
                    value: _sliderValue,
                    label: "tes",
                    onChanged: (newValue) {
                      setState(() {
                        _sliderValue = newValue;
                        _fahrenheitValue = _sliderValue * 9 / 5 +
                            32; // Update Fahrenheit value
                        _kelvinValue =
                            _sliderValue + 273.15; // Update Kelvin value
                        _reamurValue =
                            _sliderValue * 4 / 5; // Update Reamur value
                      });
                    },
                    min: 0.0,
                    max: 100.0,
                  ),
                ),
                Text(
                  'Celcius',
                  style: GoogleFonts.montserrat(textStyle: fontSizeMainText),
                ),
                Text(
                  'T °C =  ${_sliderValue.toStringAsFixed(2)} °C',
                  style: const TextStyle(fontSize: 18),
                ),
                Text(
                  'Fahrenheit',
                  style: GoogleFonts.montserrat(textStyle: fontSizeMainText),
                ),
                Row(
                  children: [
                    Math.tex(
                      r'T~°F~=~\frac{9}{5}~ \times ~',
                      mathStyle: MathStyle.display,
                      textStyle: fontSizeMathText,
                    ),
                    Text(
                      _sliderValue.toStringAsFixed(2),
                      style: const TextStyle(fontSize: 18),
                    ),
                    Math.tex(
                      r'+~32=~',
                      mathStyle: MathStyle.display,
                      textStyle: fontSizeMathText,
                    ),
                    Text(
                      '${_fahrenheitValue.toStringAsFixed(2)} °F',
                      style: const TextStyle(fontSize: 18),
                    ),
                  ],
                ),
                Text(
                  'Kelvin',
                  style: GoogleFonts.montserrat(textStyle: fontSizeMainText),
                ),
                Row(
                  children: [
                    Math.tex(
                      r'T~K~=~',
                      mathStyle: MathStyle.display,
                      textStyle: fontSizeMathText,
                    ),
                    Text(
                      _sliderValue.toStringAsFixed(2),
                      style: const TextStyle(fontSize: 18),
                    ),
                    Text(
                      ' + 273 = ${_kelvinValue.toStringAsFixed(2)} °K',
                      style: const TextStyle(fontSize: 18),
                    ),
                  ],
                ),
                Text(
                  'Reamur',
                  style: GoogleFonts.montserrat(textStyle: fontSizeMainText),
                ),
                Row(
                  children: [
                    Math.tex(
                      r'T ~ ° R ~ = ~ \frac {4} {5} ~ \times ~',
                      mathStyle: MathStyle.display,
                      textStyle: fontSizeMathText,
                    ),
                    Text(
                      _sliderValue.toStringAsFixed(2),
                      style: const TextStyle(fontSize: 18),
                    ),
                    Text(
                      '  =  ${_reamurValue.toStringAsFixed(2)} °R',
                      style: const TextStyle(fontSize: 18),
                    )
                  ],
                ),
              ],
            ),
          )),
        ),
      ),
    );
  }
}

class SuhuQuizScreen extends StatefulWidget {
  const SuhuQuizScreen({super.key});

  @override
  _SuhuQuizScreenState createState() => _SuhuQuizScreenState();
}

class _SuhuQuizScreenState extends State<SuhuQuizScreen> {
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
        title: const Text('Quiz : Suhu'),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(32.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Pembuatan termometer X dengan titik beku 30 °X dan titik didih air 270 °X. Segelas air dengan suhu 30 °R akan setara dengan . . . °X',
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
                  child: const Text('320'),
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
                  child: const Text('280'),
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
                  child: const Text('150'),
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
                  child: const Text('120'),
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
                  child: const Text('80'),
                ),
                const SizedBox(height: 20),
                if (hasAnsweredQuestion)
                  Column(
                    children: [
                      const Text(
                        'Jawaban: 120',
                        style: TextStyle(fontSize: 18),
                      ),
                      const SizedBox(height: 20),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  const PembahasanSatuScreen(),
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
    );
  }
}
