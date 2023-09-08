import 'package:elearning/pages/pembahasan.dart';
import 'package:elearning/pages/pemuaianZatPadat.dart';
import 'package:flutter/material.dart';
import 'package:flutter_math_fork/flutter_math.dart';

class PerpindahanSuhuTopicScreen extends StatelessWidget {
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
          'Perpindahan Kalor',
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => PemuaianZatPadatTopicScreen(),
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
                  builder: (context) => PerpindahanKalorQuizScreen(),
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
                Text("Perpindahan Kalor\nPendahuluan\n",
                    style: fontSizeMainText),
                Text(
                  '''
            Ketika terdapat dua gelas yang berisi teh panas dan es coklat lalu memegang kedua gelas tersebut apa yang kalian rasakan? Apakah gelas yang berisi teh panas dan gelas berisi es coklat terasa berbeda? Mengapa hal tersebut dapat terjadi? Kemudian, ketika dibiarkan di atas sebuah meja pada waktu yang cukup lama apa yang akan terjadi? Bagaimana rasanya ketika kedua gelas tersebut dipegang?\nPerpindahan kalor (panas) dapat dibagi menjadi tiga jenis berdasarkan medium perantaranya. Tiga jenis perpindahan kalor tersebut adalah konduksi,konveksi, dan radiasi. Gambar di bawah dapat menjelaskan 3 jenis perpindahan panas secara konduksi konveksi dan radiasi secara sekaligus. Rambatan kalor api dari kompor ke panci adalah proses radiasi, kemudian air yang panas di bagian bawah panci akan bergerak ke atas bertukar posisi dengan air dingin-bagian atas menghasilkan transfer kalor melalui konveksi, dan panas yang terdapat di pemegang panci yang terbuat dari logam dapat dihantarkan ke tangan melalui proses konduksi.\n
            ''',
                  style: fontSizeText,
                ),
                Text("1. Konduksi\n", style: fontSizeMainText),
                Text(
                    "Perpindahan kalor secara konduksi (hantaran) adalah perpindahan kalor melalui zat perantara dimana partikel-partikel zat perantara tersebut tidak berpindah. Ada zat yang daya hantar panasnya baik, ada pula zat yang daya hantar panasnya buruk.\n",
                    style: fontSizeText),
                Center(
                  child:
                      Image.asset('assets/images/perpindahan1.png', width: 500),
                ),
                Text(
                    "\nGambar di atas menunjukkan sebuah batang logam yang salah satu ujungnya dipanaskan di atas api sementara ujung yang satu lagi dipegang tangan. Panas yang terjadi di ujung logam yang dipanaskan di atas api dirasakan juga oleh tangan yang memegang ujung logam yang lainnya. Ini membuktikan adanya aliran kalor (panas) pada logam. Peristiwa perpindahan kalor melalui suatu zat tanpa disertai dengan perpindahan partikel partikelnya disebut konduksi. Jumlah kalor yang dipindahkan persatuan waktu, secara matematis dituliskan:\n",
                    style: fontSizeText),
                Center(
                  child: Math.tex(
                    r'\frac{Q}{\Delta T}~=~H~=~kA\frac{\Delta T}{L}',
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
                Text(
                  '''Konveksi\n''',
                  style: fontSizeMainText,
                ),
                Text(
                  'Perpindahan kalor secara konveksi (aliran) adalah perpindahan kalor karena aliran zat yang dipanaskan. Konveksi hanya terjadi pada zat yang dapat mengalir, yaitu zat cair dan zat gas.\n',
                  style: fontSizeText,
                ),
                Center(
                  child:
                      Image.asset('assets/images/perpindahan2.png', width: 500),
                ),
                Text(
                    "\nSaat kalian merebus air maka akan terjadi aliran (perpindahan ) kalor dari air yang panas di bagian bawah dengan air yang dingin di bagian atas wadah. Peristiwa perpindahan kalor yang disertai perpindahan massa atau perpindahan partikel-partikel zat perantaranya disebut dengan aliran kalor secara konveksi. Laju kalor secara konveksi , secara matematis dapat dirumuskan:\n",
                    style: fontSizeText),
                Center(
                  child: Math.tex(
                    r'H~=~h A \Delta T',
                    mathStyle: MathStyle.display,
                    textStyle: fontSizeMathText,
                  ),
                ),
                Text(
                  '\Keterangan :\n',
                  style: fontSizeText,
                ),
                Row(
                  children: [
                    Math.tex(
                      r'H',
                      mathStyle: MathStyle.display,
                    ),
                    Text(
                      ''' = laju perpindahan kalor''',
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
                Text(
                  '''Radiasi\n''',
                  style: fontSizeMainText,
                ),
                Text(
                  'Radiasi adalah perpindahan kalor tanpa zat perantara. Perpindahan kalor dari matahari ke bumi terjadi lewat radiasi (pancaran). Pada peristiwa radiasi kalor, berlaku hukum Stefan-boltzman. “energi yang dipancarkan oleh suatu permukaan hitam dalam bentuk radiasi kalor tiap satuan waktu sebanding dengan luas permukaan (A) dan sebanding dengan pangkat empat suhu mutlak itu (T4).”\n',
                  style: fontSizeText,
                ),
                Center(
                  child:
                      Image.asset('assets/images/perpindahan3.png', width: 500),
                ),
                Text(
                    "\nSaat kalian berkumpul di sekitar api unggun, akan merasakan panas dari api yang menyala. Peristiwa perpindahan kalor tanpa zat perantara disebut dengan radiasi. Besar laju aliran kalor secara matematis dirumuskan :\n",
                    style: fontSizeText),
                Center(
                  child: Math.tex(
                    r'\frac{\Delta Q}{\Delta t}~=~e \sigma A T^4',
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
                          if (states.contains(MaterialState.pressed))
                            return Colors.greenAccent; //<-- SEE HERE
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
                          if (states.contains(MaterialState.pressed))
                            return Colors.greenAccent; //<-- SEE HERE
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
                          if (states.contains(MaterialState.pressed))
                            return Colors.greenAccent; //<-- SEE HERE
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
                          if (states.contains(MaterialState.pressed))
                            return Colors.greenAccent; //<-- SEE HERE
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
                          if (states.contains(MaterialState.pressed))
                            return Colors.greenAccent; //<-- SEE HERE
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
                                builder: (context) => PembahasanLimaScreen(),
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
