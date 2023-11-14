import 'package:elearning/pages/pembahasan.dart';
import 'package:flutter/material.dart';
import 'package:flutter_math_fork/flutter_math.dart';

class PerpindahanSuhuTopicScreen extends StatelessWidget {
  final fontSizeText = const TextStyle(fontSize: 16);
  final fontSizeInfo = const TextStyle(fontSize: 12);
  final fontSizeMainText =
      const TextStyle(fontSize: 18, fontWeight: FontWeight.bold);
  final fontSizeMathText = const TextStyle(fontSize: 18);
  final fontSizeTextItalic =
      const TextStyle(fontSize: 18, fontStyle: FontStyle.italic);

  const PerpindahanSuhuTopicScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Perpindahan Kalor',
        ),
        centerTitle: true,
        actions: [
          // IconButton(
          //   onPressed: () {
          //     Navigator.pushReplacement(
          //       context,
          //       MaterialPageRoute(
          //         builder: (context) => PemuaianZatPadatTopicScreen(),
          //       ),
          //     );
          //   },
          //   icon: const Icon(Icons.arrow_back),
          // ),
          IconButton(
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => const PerpindahanKalorQuizScreen(),
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
                  "Perpindahan Kalor\n",
                  style: fontSizeMainText,
                  textAlign: TextAlign.justify,
                ),
                Text(
                  "Pendahuluan\n",
                  style: fontSizeText,
                  textAlign: TextAlign.justify,
                ),
                Text(
                  '''
            Ketika terdapat dua gelas yang berisi teh panas dan es coklat lalu memegang kedua gelas tersebut apa yang kalian rasakan? Apakah gelas yang berisi teh panas dan gelas berisi es coklat terasa berbeda? Mengapa hal tersebut dapat terjadi? Kemudian, ketika dibiarkan di atas sebuah meja pada waktu yang cukup lama apa yang akan terjadi? Bagaimana rasanya ketika kedua gelas tersebut dipegang?
            ''',
                  style: fontSizeText,
                  textAlign: TextAlign.justify,
                ),

                Text(
                  '''Perpindahan kalor merupakan kalor yang dapat berpindah dari benda yang bersuhu tinggi ke benda yang bersuhu lebih rendah. Perpindahan kalor memiliki 3 macam perpindahan antara lain: konduksi, konveksi, dan radiasi. Dalam kehidupan sehari-hari kita sering dihadapkan oleh berbagai macam peristiwa perpindahan kalor ini. Untuk lebih lengkapnya berikut penjelasan macam-macam perpidahan kalor beserta contohnya.\n''',
                  style: fontSizeText,
                  textAlign: TextAlign.justify,
                ),
                Text("1. Konduksi (Aliran)\n", style: fontSizeMainText),
                Text(
                  '''Perpindahan kalor secara konduksi adalah perpindahan kalor melalui zat perantara dimana partikel-partikel zat perantara tersebut tidak berpindah. \n''',
                  style: fontSizeText,
                  textAlign: TextAlign.justify,
                ),
                Center(
                  child:
                      Image.asset('assets/images/perpindahan1.png', width: 400),
                ),
                Center(
                  child: Text(
                    "Gambar 6. Peristiwa Konduksi\n",
                    style: fontSizeInfo,
                  ),
                ),
                Text(
                  "\nGambar 6 menunjukkan sebuah batang logam yang salah satu ujungnya dipanaskan di atas api sementara ujung yang satu lagi dipegang tangan. Panas yang terjadi di ujung logam yang dipanaskan di atas api dirasakan juga oleh tangan yang memegang ujung logam yang lainnya. Ini membuktikan adanya aliran kalor (panas) pada logam. Secara matematis dituliskan:\n",
                  style: fontSizeText,
                  textAlign: TextAlign.justify,
                ),
                Center(
                  child: Math.tex(
                    r'\frac{Q}{\Delta T}~=~\frac{kA\Delta T}{L}',
                    mathStyle: MathStyle.display,
                    textStyle: fontSizeMathText,
                  ),
                ),
                Text(
                  '\nDengan :\n',
                  style: fontSizeText,
                ),
                Row(
                  children: [
                    Math.tex(
                      r'H',
                      mathStyle: MathStyle.display,
                    ),
                    Text(
                      ''' = jumlah kalor yang merambat tiap satuan waktu = laju aliran kalor''',
                      style: fontSizeText,
                    ),
                    Math.tex(
                      r'(J~s^{-1})',
                      mathStyle: MathStyle.display,
                    ),
                  ],
                ),
                Text("\n", style: fontSizeText),
                Row(
                  children: [
                    Math.tex(
                      r'k',
                      mathStyle: MathStyle.display,
                    ),
                    Text(
                      ''' = koefisien konduksi termal ''',
                      style: fontSizeText,
                    ),
                    Math.tex(
                      r'(J~m^{-1}~s^{-1}~K^{-1})',
                      mathStyle: MathStyle.display,
                    ),
                  ],
                ),
                Text("\n", style: fontSizeText),
                Row(
                  children: [
                    Math.tex(
                      r'A',
                      mathStyle: MathStyle.display,
                    ),
                    Text(
                      ''' = luas penampang batang (m2)''',
                      style: fontSizeText,
                    ),
                  ],
                ),
                Text("\n", style: fontSizeText),
                Row(
                  children: [
                    Math.tex(
                      r'L',
                      mathStyle: MathStyle.display,
                    ),
                    Text(
                      ''' = panjang batang (m)''',
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
                      ''' = perbedaan suhu antara kedua ujung batang (K)''',
                      style: fontSizeText,
                    ),
                  ],
                ),
                Text("\n", style: fontSizeText),
                Text("2. Konveksi (Hantaran)\n", style: fontSizeMainText),
                Text(
                  'Peristiwa perpindahan kalor yang disertai perpindahan massa atau perpindahan partikel-partikel zat perantaranya disebut dengan konveksi. Konveksi hanya terjadi pada zat yang dapat mengalir, yaitu zat cair dan zat gas. \n',
                  style: fontSizeText,
                  textAlign: TextAlign.justify,
                ),
                Center(
                  child:
                      Image.asset('assets/images/perpindahan2.png', width: 400),
                ),
                Center(
                  child: Text(
                    "\nGambar 7. Peristiwa Konveksi",
                    style: fontSizeInfo,
                  ),
                ),
                Text(
                  "\nSaat kalian merebus air maka akan terjadi aliran (perpindahan ) kalor dari air yang panas di bagian bawah dengan air yang dingin di bagian atas wadah. Laju kalor secara konveksi , secara matematis dapat dirumuskan:\n",
                  style: fontSizeText,
                  textAlign: TextAlign.justify,
                ),
                Center(
                  child: Math.tex(
                    r'\frac{Q}{t}=~h A \Delta T',
                    mathStyle: MathStyle.display,
                    textStyle: fontSizeMathText,
                  ),
                ),
                Text(
                  'Keterangan :\n',
                  style: fontSizeText,
                ),
                // Row(
                //   children: [
                //     Math.tex(
                //       r'H',
                //       mathStyle: MathStyle.display,
                //     ),
                //     Text(
                //       ''' = laju perpindahan kalor''',
                //       style: fontSizeText,
                //     ),
                //     Math.tex(
                //       r'(J~s^{-1})',
                //       mathStyle: MathStyle.display,
                //     ),
                //   ],
                // ),
                // Text("\n", style: fontSizeText),
                Row(
                  children: [
                    Math.tex(
                      r'h',
                      mathStyle: MathStyle.display,
                    ),
                    Text(
                      ''' = koefisien konveksi termal ''',
                      style: fontSizeText,
                    ),
                    Math.tex(
                      r'(J~m^{-1}~s^{-1}~K^{-1})',
                      mathStyle: MathStyle.display,
                    ),
                  ],
                ),
                Text("\n", style: fontSizeText),
                Row(
                  children: [
                    Math.tex(
                      r'A',
                      mathStyle: MathStyle.display,
                    ),
                    Text(
                      ''' = koefisien permukaan''',
                      style: fontSizeText,
                    ),
                    Math.tex(
                      r'(m^2)',
                      mathStyle: MathStyle.display,
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
                      ''' = perbedaan suhu (K)''',
                      style: fontSizeText,
                    ),
                  ],
                ),
                Text("\n", style: fontSizeText),
                //######################################
                Text("3. Radiasi (Pancaran)\n", style: fontSizeMainText),
                Text(
                  'Radiasi adalah perpindahan kalor tanpa zat perantara. Perpindaham kalor dari matahari ke bumi terjadi lewat radiasi (pancaran). Pada peristiwa radiasi kalor, berlaku hukum Stefan-boltzman. “Energi yang dipancarkan oleh suatu permukaan hitam dalam bentuk radiasi kalor tiap satuan waktu sebanding dengan luas permukaan (A) dan sebanding dengan pangkat empat suhu mutlak itu (T4).”\n',
                  style: fontSizeText,
                  textAlign: TextAlign.justify,
                ),
                Center(
                  child:
                      Image.asset('assets/images/perpindahan3.png', width: 400),
                ),
                Center(
                  child: Text(
                    "\nGambar 8. Peristiwa Radiasi",
                    style: fontSizeInfo,
                  ),
                ),
                Text(
                  "\nSaat kalian berkumpul di sekitar api unggun, akan dirasakan panas dariapi yang menyala. Peristiwa perpindahan kalor tanpa zat perantara disebutdengan radiasi. Besar laju aliran kalor secara matematis dirumuskan :\n",
                  style: fontSizeText,
                  textAlign: TextAlign.justify,
                ),
                Center(
                  child: Math.tex(
                    r'\frac{Q}{\Delta t}~=~e \sigma A T^4',
                    mathStyle: MathStyle.display,
                    textStyle: fontSizeMathText,
                  ),
                ),
                Text(
                  '\nDengan :\n',
                  style: fontSizeText,
                ),
                Row(
                  children: [
                    Math.tex(
                      r'Q',
                      mathStyle: MathStyle.display,
                    ),
                    Text(
                      ''' = kalor yang dipancarkan (J)''',
                      style: fontSizeText,
                    ),
                  ],
                ),
                Text("\n", style: fontSizeText),
                Row(
                  children: [
                    Math.tex(
                      r'T',
                      mathStyle: MathStyle.display,
                    ),
                    Text(
                      ''' = suhu mutlak (K)''',
                      style: fontSizeText,
                    ),
                  ],
                ),
                Text("\n", style: fontSizeText),
                Row(
                  children: [
                    Math.tex(
                      r'e',
                      mathStyle: MathStyle.display,
                    ),
                    Text(
                      ''' = emisivitas bahan''',
                      style: fontSizeText,
                    ),
                  ],
                ),
                Text("\n", style: fontSizeText),
                Row(
                  children: [
                    Math.tex(
                      r'\sigma',
                      mathStyle: MathStyle.display,
                    ),
                    Text(
                      ''' = tetapan Boltzman = ''',
                      style: fontSizeText,
                    ),
                    Math.tex(
                      r'5,67 . 10^{-8}~W~m^{-1}~K^{-4}',
                      mathStyle: MathStyle.display,
                    ),
                  ],
                ),
                Text("\n", style: fontSizeText),
                Row(
                  children: [
                    Math.tex(
                      r'A',
                      mathStyle: MathStyle.display,
                    ),
                    Text(
                      ''' = luas penampang benda''',
                      style: fontSizeText,
                    ),
                    Math.tex(
                      r'(m^2))',
                      mathStyle: MathStyle.display,
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

class PerpindahanKalorQuizScreen extends StatefulWidget {
  const PerpindahanKalorQuizScreen({super.key});

  @override
  _PerpindahanKalorQuizScreenState createState() =>
      _PerpindahanKalorQuizScreenState();
}

class _PerpindahanKalorQuizScreenState
    extends State<PerpindahanKalorQuizScreen> {
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
        title: const Text('Quiz : Perpindahan Kalor'),
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
                    'Batang besi panjangnya 2 meter dengan luas penampang 5cm2 memiliki perbedaan suhu diantara kedua ujungnya 100 K. jika konduktivitas termal besi 4,8 J/s.m.K. maka laju hantaran kalornya adalah ….',
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
                    child: Math.tex(r'1,2~X~ 10^{-5}~J/s',
                        mathStyle: MathStyle.display),
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
                    child: Math.tex(r'1,2~X~ 10^{-3}~J/s',
                        mathStyle: MathStyle.display),
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
                    child: Math.tex(r'4,8~X~ 10^{-5}~J/s',
                        mathStyle: MathStyle.display),
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
                    child: Math.tex(r'4,8~X~ 10^{-3}~J/s',
                        mathStyle: MathStyle.display),
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
                    child: Math.tex(r'5,0~X~ 10^{-4}~J/s',
                        mathStyle: MathStyle.display),
                  ),
                  const SizedBox(height: 20),
                  if (hasAnsweredQuestion)
                    Column(
                      children: [
                        Math.tex(r'Jawaban~~=~~1,2~X~ 10^{-3}~J/s',
                            mathStyle: MathStyle.display),
                        ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    const PembahasanLimaScreen(),
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
