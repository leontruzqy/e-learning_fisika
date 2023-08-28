import 'package:elearning/pages/pembahasan.dart';
import 'package:elearning/pages/pemuaianZat.dart';
import 'package:flutter/material.dart';
import 'package:flutter_math_fork/flutter_math.dart';

class PemuaianZatPadatTopicScreen extends StatelessWidget {
  final fontSizeText = const TextStyle(fontSize: 16);
  final fontSizeMainText =
      const TextStyle(fontSize: 18, fontWeight: FontWeight.bold);
  final fontSizeMathText = const TextStyle(fontSize: 18);
  final fontSizeTextItalic =
      const TextStyle(fontSize: 18, fontStyle: FontStyle.italic);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Pemuaian Zat Padat',
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => PemuaianZatTopicScreen(),
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
                  builder: (context) => PemuaianZatPadatQuizScreen(),
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
                Text("Pemuaian Zat Padat\nMuai Panjang\n",
                    style: fontSizeMainText),
                Text(
                  '''
            Pemuaian panjang disebut juga dengan pemuaian linier. Pemuaian panjang zat padat berlaku jika zat padat itu hanya dipandang sebagai satu dimensi (berbentuk garis). Untuk pemuaian panjang digunakan konsep koefisien muai panjang atau koefisien muai linier yang dapat didefinisikan sebagai perbandingan antara pertambahan panjang zat dengan panjang mula-mula zat, untuk tiap kenaikan suhu sebesar satu satuan suhu. Jika koefisien muai panjang dilambangkan dengan dan pertambahan Panjang ∆L, panjang mula-mula L0, dan perubahan suhu ∆T. maka koefisien muai panjang dapat dinyatakan dengan persamaan:\n
            ''',
                  style: fontSizeText,
                ),
                Center(
                  child: Math.tex(
                    r'\alpha~=~ \frac{\Delta L}{L.\Delta T}',
                    mathStyle: MathStyle.display,
                    textStyle: fontSizeMathText,
                  ),
                ),
                Text(
                    "\nSehingga satuan dari α adalah 1/K atau K^-1. Dari persamaan diatas, diperoleh pula persamaan berikut.\n",
                    style: fontSizeText),
                Center(
                  child: Math.tex(
                    r'\Delta L~=~\alpha~L~\Delta T',
                    mathStyle: MathStyle.display,
                    textStyle: fontSizeMathText,
                  ),
                ),
                Text("\nDimana\n", style: fontSizeText),
                Center(
                  child: Math.tex(
                    r'\Delta L~=~L_t~-~L_0',
                    mathStyle: MathStyle.display,
                    textStyle: fontSizeMathText,
                  ),
                ),
                Text("\n", style: fontSizeText),
                Center(
                  child: Math.tex(
                    r'L_t~=~L_0~+~ \alpha L_0  \Delta T',
                    mathStyle: MathStyle.display,
                    textStyle: fontSizeMathText,
                  ),
                ),
                Text("\n", style: fontSizeText),
                Center(
                  child: Math.tex(
                    r'L_t~=~LL_0~(1~+ \alpha  \Delta T)',
                    mathStyle: MathStyle.display,
                    textStyle: fontSizeMathText,
                  ),
                ),
                Text("\n", style: fontSizeText),
                Text("Keterangan\n", style: fontSizeText),
                Row(
                  children: [
                    Math.tex(
                      r'L_t',
                      mathStyle: MathStyle.display,
                    ),
                    Text(
                      ''' = panjang benda saat dipanaskan (m)''',
                      style: fontSizeText,
                    ),
                  ],
                ),
                Text("\n", style: fontSizeText),
                Row(
                  children: [
                    Math.tex(
                      r'L_0',
                      mathStyle: MathStyle.display,
                    ),
                    Text(
                      ''' = panjang benda mula-mula (m)''',
                      style: fontSizeText,
                    ),
                  ],
                ),
                Text("\n", style: fontSizeText),
                Row(
                  children: [
                    Math.tex(
                      r'\alpha',
                      mathStyle: MathStyle.display,
                    ),
                    Text(
                      ''' = koefisien muai linear/panjang (/°C)''',
                      style: fontSizeText,
                    ),
                  ],
                ),
                Text("\n", style: fontSizeText),
                Row(
                  children: [
                    Math.tex(
                      r'\Delta T',
                      mathStyle: MathStyle.display,
                    ),
                    Text(
                      ''' = perubahan suhu (°C)''',
                      style: fontSizeText,
                    ),
                  ],
                ),
                Text("\n", style: fontSizeText),
                Text("\nMuai Luas\n", style: fontSizeMainText),
                Text(
                    "Jika zat padat tersebut mempunyai 2 dimensi (panjang dan lebar), kemudian dipanasi tentu baik panjang maupun lebarnya mengalami pemuaian atau dengan kata lain luas zat padat tersebut mengalami pemuaian. Koefisien muai pada pemuaian luas ini disebut dengan koefisien muai luas yang diberi lambang β Analog dengan pemuaian panjang, maka jika luas mula-mula A0, pertambahan luas ΔA dan perubahan suhu ΔT, maka koefisien muai luas dapat dinyatakan dengan persamaan:\n",
                    style: fontSizeText),
                Center(
                  child: Math.tex(
                    r'\beta = \frac{\Delta A}{A.\Delta T}',
                    mathStyle: MathStyle.display,
                  ),
                ),
                Text("\n", style: fontSizeText),
                Text(
                    "Dari persamaan diatas, diperoleh pula persamaan berikut:\n",
                    style: fontSizeText),
                Center(
                  child: Math.tex(
                    r'\Delta A = \beta A \Delta T',
                    mathStyle: MathStyle.display,
                  ),
                ),
                Text("\n", style: fontSizeText),
                Row(
                  children: [
                    Text(
                      '''Dimana''',
                      style: fontSizeText,
                    ),
                    Math.tex(
                      r'\Delta A~=~A_t~-~A_0',
                      mathStyle: MathStyle.display,
                    ),
                    Text(
                      ''', sehingga persamaan menjadi:''',
                      style: fontSizeText,
                    ),
                  ],
                ),
                Center(
                  child: Math.tex(
                    r'A_t~-~A_0~=~\beta A_0 \Delta T',
                    mathStyle: MathStyle.display,
                    textStyle: fontSizeMathText,
                  ),
                ),
                Text("\n", style: fontSizeText),
                Center(
                  child: Math.tex(
                    r'A_t~=~A_0~+~\beta A_0 \Delta T',
                    mathStyle: MathStyle.display,
                    textStyle: fontSizeMathText,
                  ),
                ),
                Text("\n", style: fontSizeText),
                Center(
                  child: Math.tex(
                    r'A_t~=~A_0~(1~+~\beta \Delta T)',
                    mathStyle: MathStyle.display,
                    textStyle: fontSizeMathText,
                  ),
                ),
                Text("\n", style: fontSizeText),
                Text(
                    "Nilai β=2 sehingga persamaan di atas dapat juga ditulis sebagai berikut\n",
                    style: fontSizeText),
                Center(
                  child: Math.tex(
                    r'A_t~=~A_0~(1~+~2 \alpha \Delta T)',
                    mathStyle: MathStyle.display,
                    textStyle: fontSizeMathText,
                  ),
                ),
                Text("\n", style: fontSizeText),
                Text("Keterangan\n", style: fontSizeText),
                Row(
                  children: [
                    Math.tex(
                      r'\A_t',
                      mathStyle: MathStyle.display,
                    ),
                    Text(
                      ''' = luas benda saat dipanaskan (m2)''',
                      style: fontSizeText,
                    ),
                  ],
                ),
                Text("\n", style: fontSizeText),
                Row(
                  children: [
                    Math.tex(
                      r'\A_0',
                      mathStyle: MathStyle.display,
                    ),
                    Text(
                      ''' = luas benda saat dipanaskan (m2)''',
                      style: fontSizeText,
                    ),
                  ],
                ),
                Text("\n", style: fontSizeText),
                Row(
                  children: [
                    Math.tex(
                      r'\beta~-~2 \alpha',
                      mathStyle: MathStyle.display,
                    ),
                    Text(
                      ''' = koefisien muai luas (/°C)''',
                      style: fontSizeText,
                    ),
                  ],
                ),
                Text("\n", style: fontSizeText),
                Row(
                  children: [
                    Math.tex(
                      r'\Delta T',
                      mathStyle: MathStyle.display,
                    ),
                    Text(
                      ''' = perubahan suhu (°C)''',
                      style: fontSizeText,
                    ),
                  ],
                ),
                Text("\n", style: fontSizeText),
                Text("Muai Volume\n", style: fontSizeMainText),
                Text(
                    "Zat padat yang mempunyai bentuk ruang, jika dipanaskan mengalami pemuaian volum. Koefisien pemuaian pada pemuaian volum ini disebut dengan koefisien muai volum atau koefisien muai ruang yang diberi lambang γ. Jika volum mula mula V0, pertambahan volum ΔV dan perubahan suhu ΔT, maka koefisien muai volum dapat dinyatakan dengan persamaan:\n",
                    style: fontSizeText),
                Center(
                  child: Math.tex(
                    r'\gamma = \frac{\Delta V}{V \Delta T}',
                    mathStyle: MathStyle.display,
                    textStyle: fontSizeMathText,
                  ),
                ),
                Text(
                    "\nDari persamaan diatas, diperoleh pula persamaan berikut\n",
                    style: fontSizeText),
                Center(
                  child: Math.tex(
                    r'\Delta V = \gamma V_0 \Delta T',
                    mathStyle: MathStyle.display,
                    textStyle: fontSizeMathText,
                  ),
                ),
                Text("\n", style: fontSizeText),
                Row(
                  children: [
                    Text(
                      '''Dimana''',
                      style: fontSizeText,
                    ),
                    Math.tex(
                      r'\Delta V~=~V_t~-~V_0',
                      mathStyle: MathStyle.display,
                    ),
                    Text(
                      ''', sehingga  menjadi:''',
                      style: fontSizeText,
                    ),
                  ],
                ),
                Text("\n", style: fontSizeText),
                Center(
                  child: Math.tex(
                    r'V_t~-~V_0~+~\gamma V_0 \Delta T',
                    mathStyle: MathStyle.display,
                    textStyle: fontSizeMathText,
                  ),
                ),
                Text("\n", style: fontSizeText),
                Center(
                  child: Math.tex(
                    r'V_t~=~V_0~+~\gamma V_0 \Delta T)',
                    mathStyle: MathStyle.display,
                    textStyle: fontSizeMathText,
                  ),
                ),
                Text("\n", style: fontSizeText),
                Center(
                  child: Math.tex(
                    r'V_t~=~V_0~(1~+~\gamma \Delta T)',
                    mathStyle: MathStyle.display,
                    textStyle: fontSizeMathText,
                  ),
                ),
                Text("\n", style: fontSizeText),
                Text(
                    "Nilai γ=3a sehingga persamaan diatas dapat juga ditulis sebagai berikut\n",
                    style: fontSizeText),
                Center(
                  child: Math.tex(
                    r'V_t~=~V_0~(1~+~3 \alpha \Delta T)',
                    mathStyle: MathStyle.display,
                    textStyle: fontSizeMathText,
                  ),
                ),
                Text("\nKeterangan\n", style: fontSizeText),
                Row(
                  children: [
                    Math.tex(
                      r'V_t',
                      mathStyle: MathStyle.display,
                    ),
                    Text(
                      ''' = luas benda saat dipanaskan (m3)''',
                      style: fontSizeText,
                    ),
                  ],
                ),
                Text("\n", style: fontSizeText),
                Row(
                  children: [
                    Math.tex(
                      r'V_0',
                      mathStyle: MathStyle.display,
                    ),
                    Text(
                      ''' = luas benda mula-mula (m3)''',
                      style: fontSizeText,
                    ),
                  ],
                ),
                Text("\n", style: fontSizeText),
                Row(
                  children: [
                    Math.tex(
                      r'\gamma~=3 \alpha',
                      mathStyle: MathStyle.display,
                    ),
                    Text(
                      ''' = koefisien muai volume (/0C)''',
                      style: fontSizeText,
                    ),
                  ],
                ),
                Text("\n", style: fontSizeText),
                Row(
                  children: [
                    Math.tex(
                      r'\Delta T',
                      mathStyle: MathStyle.display,
                    ),
                    Text(
                      ''' = perubahan suhu (°C)''',
                      style: fontSizeText,
                    ),
                  ],
                ),
                Text("\n", style: fontSizeText),
              ],
            ),
          )),
        ),
      ),
    );
  }
}

class PemuaianZatPadatQuizScreen extends StatefulWidget {
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
        title: Text('Pemuaian Zat Padat Quiz'),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(32.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Sebuah benda yang terbuat dari baja memiliki panjang 1000 cm. Berapakah pertambahan panjang baja itu, jika terjadi perubahan suhu sebesar 50°C?',
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
                    child: Text('0,5 cm'),
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
                    child: Text('0,6 cm'),
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
                    child: Text('0,7 cm'),
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
                    child: Text('0,8 cm'),
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
                    child: Text('0,9 cm'),
                  ),
                  SizedBox(height: 20),
                  if (hasAnsweredQuestion)
                    Column(
                      children: [
                        Text(
                          'Jawaban: 0,6 cm',
                          style: TextStyle(fontSize: 18),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => PembahasanEmpatScreen(),
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
      ),
    );
  }
}
