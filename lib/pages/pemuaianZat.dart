import 'package:elearning/pages/kalor.dart';
import 'package:elearning/pages/pembahasan.dart';
import 'package:flutter/material.dart';
import 'package:flutter_math_fork/flutter_math.dart';

class PemuaianZatTopicScreen extends StatelessWidget {
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
        title: const Text(
          'Pemuaian Zat',
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => KalorTopicScreen(),
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
                  builder: (context) => PemuaianZatQuizScreen(),
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
                Text("Pemuaian Zat\nPendahuluan\n", style: fontSizeMainText),
                Text(
                  '''
            Pernahkah rumah kalian mati lampu dikarenakan terjadi pembebanan listrik karena memasang alat-alat rumah tangga yang terlalu banyak? Atau terjadi konsleting pada kabel di atas rumah yang menyebabkan mati lampu agar tidak terjadi kebakaran di rumah? Tahukah kalian mengapa bisa terjadi mati listrik atau putus arus listrik di rumah?\n
            ''',
                  style: fontSizeText,
                ),
                Text(
                    "Pemuaian zat umumnya terjadi ke segala arah, ke arah panjang, ke arah lebar dan ke arah tebal. Namun, pada pembahasan tertentu mungkin kita hanya memandang pemuaian ke satu arah tertentu, misalnya ke arah panjang, sehingga kita hanya hanya membahas pemuaian panjang (Astuti, 2022).\n",
                    style: fontSizeText),
                Text("Pemuaian Zat Cair\n", style: fontSizeMainText),
                Text(
                    "Pada umumnya setiap zat memuai jika dipanaskan, kecuali air jika dipanaskan dari 0°C sampai 4°C akan menyusut. Sifat keanehan air seperti itu disebut anomali air. Grafik anomali air seperti diperlihatkan pada gambar berikut ini.\n",
                    style: fontSizeText),
                Center(
                  child: Image.asset(
                    'assets/images/pzcair1.png',
                    width: 600,
                  ),
                ),
                Text("Keterangan\n", style: fontSizeText),
                Text("Pada suhu 4°C\n", style: fontSizeText),
                Text("• Volume air terkecil\n", style: fontSizeText),
                Text("• Massa jenis air terbesar\n", style: fontSizeText),
                Text(
                    "Karena pada zat cair hanya mengalami pemuaian volume, maka pada pemuaian zat cair hanya diperoleh persamaan berikut:\n",
                    style: fontSizeText),
                Math.tex(
                  r'V_t~=~V_0~(1~+~\gamma~\Delta~T)',
                  mathStyle: MathStyle.display,
                  textStyle: fontSizeMathText,
                ),
                Text("\n", style: fontSizeText),
                Math.tex(
                  r'\Delta V~=~\gamma V_0 \Delta T',
                  mathStyle: MathStyle.display,
                  textStyle: fontSizeMathText,
                ),
                Text("\nPemuaian Gas\n", style: fontSizeMainText),
                Text(
                    "Jika gas dipanaskan, maka dapat mengalami pemuaian volume dan dapat juga terjadi pemuaian tekanan. Dengan demikian pada pemuaian gas terdapat beberapa persamaan, sesuai dengan proses pemanasannya.\n",
                    style: fontSizeText),
                //Pemuaian Volume pada Tekanan Tetap (Isobarik)
                Text("Pemuaian Volume pada Tekanan Tetap (Isobarik)\n",
                    style: fontSizeMainText),
                Text(
                    "Jika gas dipanaskan pada tekanan tetap maka volume gas sebanding dengan suhu mutlak gas itu.. Secara matematik dapat dinyatakan:\n",
                    style: fontSizeText),
                Math.tex(
                  r'V~\sim~T',
                  mathStyle: MathStyle.display,
                  textStyle: fontSizeMathText,
                ),
                Center(
                  child: Text(
                      "Atau secara lengkap dapat ditulis dalam bentuk persamaan berikut\n",
                      style: fontSizeText),
                ),
                Center(
                  child: Math.tex(
                    r'\frac{V}{T} = tetap',
                    mathStyle: MathStyle.display,
                    textStyle: fontSizeMathText,
                  ),
                ),
                Center(child: Text("atau\n", style: fontSizeText)),
                Center(
                  child: Math.tex(
                    r'\frac{V_1}{T_1} = \frac{V_2}{T_2}',
                    mathStyle: MathStyle.display,
                    textStyle: fontSizeMathText,
                  ),
                ),
                //Pemuaian Tekanan Gas pada Volume Tetap (Isokhorik)
                Text("Pemuaian Tekanan Gas pada Volume Tetap (Isokhorik)\n",
                    style: fontSizeMainText),
                Text(
                    "Jika pemanasan terus dilakukan pada gas dalam ruang tertutup,maka tekanan gas sebanding dengan suhu mutlak gas tersebut. Secara matematik dapat dinyatakan sebagai berikut.\n",
                    style: fontSizeText),
                Math.tex(
                  r'P~\sim~T',
                  mathStyle: MathStyle.display,
                  textStyle: fontSizeMathText,
                ),
                Text(
                    "Atau secara lengkap dapat ditulis dalam bentuk persamaan berikut\n",
                    style: fontSizeText),
                Center(
                  child: Math.tex(
                    r'\frac {P}{T} = tetap',
                    mathStyle: MathStyle.display,
                    textStyle: fontSizeMathText,
                  ),
                ),
                Center(child: Text("atau\n", style: fontSizeText)),
                Center(
                  child: Math.tex(
                    r'\frac{P_1}{T_1} = \frac{P_2}{T_2}',
                    mathStyle: MathStyle.display,
                    textStyle: fontSizeMathText,
                  ),
                ),
                //Pemuaian Volume Gas pada Suhu Tetap (Isotermis)
                Text("Pemuaian Volume Gas pada Suhu Tetap (Isotermis)\n",
                    style: fontSizeMainText),
                Text(
                    "Jika gas dipanaskan dengan suhu tetap, tekanan gas berbanding terbalik dengan volume gas. Secara matematik dapat dinyatakan sebagai berikut.\n",
                    style: fontSizeText),
                Math.tex(
                  r'P = \frac{1}{V}',
                  mathStyle: MathStyle.display,
                  textStyle: fontSizeMathText,
                ),
                Text("Diperoleh\n", style: fontSizeText),
                Center(
                  child: Math.tex(
                    r'P.V = tetap',
                    mathStyle: MathStyle.display,
                    textStyle: fontSizeMathText,
                  ),
                ),
                Center(child: Text("atau\n", style: fontSizeText)),
                Center(
                  child: Math.tex(
                    r'P_1V_1 = P_2V_2',
                    mathStyle: MathStyle.display,
                    textStyle: fontSizeMathText,
                  ),
                ),
                Text(
                    "\nJika pada proses pemuaian gas terjadi tekanan berubah, volum berubah dan suhu berubah maka dapat diselesaikan dengan persamaan hukum Boyle - Gay Lussac\n",
                    style: fontSizeText),
                Center(
                  child: Math.tex(
                    r'\frac {P.V}{T} = tetap',
                    mathStyle: MathStyle.display,
                    textStyle: fontSizeMathText,
                  ),
                ),
                Center(child: Text("atau\n", style: fontSizeText)),
                Center(
                  child: Math.tex(
                    r'\frac {P_1V_1}{T_1} = \frac {P_2V_2}{T_2}',
                    mathStyle: MathStyle.display,
                    textStyle: fontSizeMathText,
                  ),
                ),
              ],
            ),
          )),
        ),
      ),
    );
  }
}

class PemuaianZatQuizScreen extends StatefulWidget {
  @override
  _PemuaianZatQuizScreenState createState() => _PemuaianZatQuizScreenState();
}

class _PemuaianZatQuizScreenState extends State<PemuaianZatQuizScreen> {
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
        title: const Text('Quiz : Pemuaian Zat'),
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
                    'Logam berbentuk lempeng lingkaran yang terdapat lubang di bagian tengah akan mengalami pemuaian hingga tidak terdapat lubang. Hal tersebut . . .',
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
                    child: const Text(
                        'Dapat terjadi karena logam mempunyai ke arah lubang'),
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
                    child: const Text(
                        'Tidak dapat terjadi karena logam keterbatasan ruang pada lubang sehingga mempunyai ke arah luar'),
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
                    child: const Text(
                        'Dapat terjadi karena logam memuai ke segala arah'),
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
                    child: const Text(
                        'Tidak dapat terjadi karena perbedaan suhu pada lubang relatif konstan sehingga memuai ke arah luar'),
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
                    child: const Text(
                        'Tidak dapat terjadi karena kalor tidak mengalir ke arah dalam sehingga memuai ke arah luar'),
                  ),
                  const SizedBox(height: 20),
                  if (hasAnsweredQuestion)
                    Column(
                      children: [
                        const Text(
                          'Jawaban: Tidak dapat terjadi karena perbedaan suhu pada lubang relatif konstan sehingga memuai ke arah luar',
                          style: TextStyle(fontSize: 18),
                        ),
                        const SizedBox(height: 20),
                        ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => PembahasanTigaScreen(),
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
