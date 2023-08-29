// ignore_for_file: prefer_const_constructors
import 'package:elearning/pages/pembahasan.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_math_fork/ast.dart';
import 'package:flutter_math_fork/flutter_math.dart';

class SuhuTopicScreen extends StatefulWidget {
  @override
  State<SuhuTopicScreen> createState() => _SuhuTopicScreenState();
}

class _SuhuTopicScreenState extends State<SuhuTopicScreen> {
  final fontSizeText = const TextStyle(fontSize: 16);
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
        title: Text('Suhu'),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => SuhuQuizScreen(),
                ),
              );
            },
            icon: Icon(Icons.arrow_forward),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: (Padding(
          padding: const EdgeInsets.all(32.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '''Pendahuluan\n 
          Mengukur panas dan dingin suatu benda dengan tangan dan perasaan (indra) tidak dapat mengukur suhu secara tepat, mengapa hal tersebut dapat terjadi? Sedangkan, dengan menggunakan termometer, pengukuran akan lebih akurat berapa suhu suatu benda tersebut. Mengapa demikian?
          Suhu merupakan derajat panas atau dingin yang dirasakan indra. Suhu menyatakan derajat panas dinginnya suatu benda. Alat yang biasa digunakan untuk pengukur suhu dinamakan termometer.\n Thermometer\n
          Termometer merupakan alat yang sederhana dengan fungsi yang besar. Ada bermacam macam termometer mulai dari yang analog sampai yang digital, mulai dari yang menggunakan air raksa sampai yang menggunakan inframerah. (Kusrini,2020)
          \n Skala Suhu
          Terdapat 4 skala suhu yang digunakan pada termometer di antaranya Celcius (C),Reamur (R), Fahrenheit (F) dan Kelvin (K) \n
          ''',
                style: TextStyle(fontSize: 18),
              ),
              Center(
                child: Image.asset(
                  'assets/images/table_suhu1.png',
                  width: 600,
                ),
              ),
              Text(
                  '''\nKonversi antara 4 skala tersebut ditunjukkan oleh tabel berikut\n ''',
                  style: TextStyle(fontSize: 18)),
              Center(
                child: Image.asset(
                  'assets/images/table_suhu2.png',
                  width: 700,
                ),
              ),
              Text(
                '''\nSkala Celcius dan Fahrenheit banyak kita temukan di kehidupan sehari-hari, sedangkan skala suhu yang ditetapkan sebagai Satuan Internasional adalah Kelvin. Berikut gambaran mengkonversi suhu pada 2 termometer yang berbeda secara umum dituliskan: \n
      ''',
                style: TextStyle(fontSize: 18),
              ),
              Center(
                child: Image.asset(
                  'assets/images/titik_didih.png',
                  width: 400,
                ),
              ),
              Text('\n\n\n\n'),
              Text(
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
                  thumbShape: RoundSliderThumbShape(enabledThumbRadius: 10.0),
                  overlayShape: RoundSliderOverlayShape(overlayRadius: 20.0),
                  tickMarkShape: RoundSliderTickMarkShape(),
                ),
                child: Slider(
                  value: _sliderValue,
                  label: "tes",
                  onChanged: (newValue) {
                    setState(() {
                      _sliderValue = newValue;
                      _fahrenheitValue =
                          _sliderValue * 9 / 5 + 32; // Update Fahrenheit value
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
                style: TextStyle(fontSize: 18),
              ),
              Text(
                'Fahrenheit',
                style: GoogleFonts.montserrat(textStyle: fontSizeMainText),
              ),
              Row(
                children: [
                  Math.tex(
                    r'T~°F~=~\frac{9}{5}~ \times ~99~+~32=~',
                    mathStyle: MathStyle.display,
                    textStyle: fontSizeMathText,
                  ),
                  Text(
                    '${_fahrenheitValue.toStringAsFixed(2)} °F',
                    style: TextStyle(fontSize: 18),
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
                    r'T~K~=~99~+~273~=~',
                    mathStyle: MathStyle.display,
                    textStyle: fontSizeMathText,
                  ),
                  Text(
                    '${_kelvinValue.toStringAsFixed(2)} °K',
                    style: TextStyle(fontSize: 18),
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
                    r'T ~ ° R ~ = ~ \frac {4} {5} ~ \times ~ 99 ~ = ~ ',
                    mathStyle: MathStyle.display,
                    textStyle: fontSizeMathText,
                  ),
                  Text(
                    '${_reamurValue.toStringAsFixed(2)} °R',
                    style: TextStyle(fontSize: 18),
                  )
                ],
              ),
            ],
          ),
        )),
      ),
    );
  }
}

class SuhuQuizScreen extends StatefulWidget {
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
        title: Text('Suhu Quiz'),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(32.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Pembuatan termometer X dengan titik beku 30 °X dan titik didih air 270 °X. Segelas air dengan suhu 30 °R akan setara dengan . . . °X',
                  style: TextStyle(fontSize: 18),
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed:
                      hasAnsweredQuestion ? null : () => answerQuestion(),
                  style: ButtonStyle(
                    overlayColor: MaterialStateProperty.resolveWith<Color?>(
                      (Set<MaterialState> states) {
                        if (states.contains(MaterialState.pressed))
                          return Colors.greenAccent; //<-- SEE HERE
                        return null; // Defer to the widget's default.
                      },
                    ),
                  ),
                  child: Text('320'),
                ),
                SizedBox(height: 10),
                ElevatedButton(
                  onPressed:
                      hasAnsweredQuestion ? null : () => answerQuestion(),
                  style: ButtonStyle(
                    overlayColor: MaterialStateProperty.resolveWith<Color?>(
                      (Set<MaterialState> states) {
                        if (states.contains(MaterialState.pressed))
                          return Colors.greenAccent; //<-- SEE HERE
                        return null; // Defer to the widget's default.
                      },
                    ),
                  ),
                  child: Text('280'),
                ),
                SizedBox(height: 10),
                ElevatedButton(
                  onPressed:
                      hasAnsweredQuestion ? null : () => answerQuestion(),
                  style: ButtonStyle(
                    overlayColor: MaterialStateProperty.resolveWith<Color?>(
                      (Set<MaterialState> states) {
                        if (states.contains(MaterialState.pressed))
                          return Colors.greenAccent; //<-- SEE HERE
                        return null; // Defer to the widget's default.
                      },
                    ),
                  ),
                  child: Text('150'),
                ),
                SizedBox(height: 10),
                ElevatedButton(
                  onPressed:
                      hasAnsweredQuestion ? null : () => answerQuestion(),
                  style: ButtonStyle(
                    overlayColor: MaterialStateProperty.resolveWith<Color?>(
                      (Set<MaterialState> states) {
                        if (states.contains(MaterialState.pressed))
                          return Colors.greenAccent; //<-- SEE HERE
                        return null; // Defer to the widget's default.
                      },
                    ),
                  ),
                  child: Text('120'),
                ),
                SizedBox(height: 10),
                ElevatedButton(
                  onPressed:
                      hasAnsweredQuestion ? null : () => answerQuestion(),
                  style: ButtonStyle(
                    overlayColor: MaterialStateProperty.resolveWith<Color?>(
                      (Set<MaterialState> states) {
                        if (states.contains(MaterialState.pressed))
                          return Colors.greenAccent; //<-- SEE HERE
                        return null; // Defer to the widget's default.
                      },
                    ),
                  ),
                  child: Text('80'),
                ),
                SizedBox(height: 20),
                if (hasAnsweredQuestion)
                  Column(
                    children: [
                      Text(
                        'Jawaban: 120',
                        style: TextStyle(fontSize: 18),
                      ),
                      SizedBox(height: 20),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => PembahasanSatuScreen(),
                            ),
                          );
                        },
                        child: Text('Pembahasan'),
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
