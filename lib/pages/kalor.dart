import 'package:elearning/pages/pembahasan.dart';
import 'package:elearning/pages/suhu.dart';
import 'package:flutter/material.dart';
import 'package:flutter_math_fork/flutter_math.dart';

class KalorTopicScreen extends StatelessWidget {
  final fontSizeText = const TextStyle(fontSize: 16);
  final fontSizeInfo = const TextStyle(fontSize: 12);
  final fontSizeMainText =
      const TextStyle(fontSize: 18, fontWeight: FontWeight.bold);
  final fontSizeMathText = const TextStyle(fontSize: 18);
  final fontSizeTextItalic =
      const TextStyle(fontSize: 18, fontStyle: FontStyle.italic);

  const KalorTopicScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Kalor',
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => const SuhuTopicScreen(),
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
                  builder: (context) => const KalorQuizScreen(),
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
                Text('''Pengaruh Kalor pada Zat\nPendahuluan\n''',
                    style: fontSizeMainText),
                Text(
                  ''' 
            Ketika es krim dibiarkan di tempat terbuka dapat dengan cepat mencair. Mengapa hal tersebut dapat terjadi? Ketika segelas teh dengan suhu normal diisi dengan bongkahan es, permukaan luas gelas menjadi basah? Mengapa demikian? Mengapa secangkir kopi suhunya lebih tinggi daripada lingkungan sekitarnya?\n
Kalor merupakan bentuk energi panas atau jumlah panas yang ada dalam sebuah benda. Kalor memiliki satuan internasional Joule (J). Satuan lain dari kalor adalah kalori (kal). Satu kalori berarti banyaknya kalor yang dibutuhkan untuk memanaskan 1 gram air sampai suhunya naik 1°C. Untuk mengonversi satuan dari joule ke kalori atau sebaliknya, gunakan persamaan berikut.\n
1 kalori = 4,2 joule\n
1 joule = 0,24 kalori\n
            ''',
                  style: fontSizeText,
                  textAlign: TextAlign.justify,
                ),
                Text(
                  "1) Kalor Jenis dan Kapasitas Kalor\n\n",
                  style: fontSizeMainText,
                  textAlign: TextAlign.justify,
                ),
                Text(
                  "Kalor jenis adalah karakteristik suatu zat yang menunjukkan kemampuannya menyerap kalor. Untuk menentukan besarnya kalor jenis setiap zat. Secara matematis dituliskan:\n",
                  style: fontSizeText,
                  textAlign: TextAlign.justify,
                ),
                Center(
                  child: Math.tex(
                    r'c = \frac{Q}{m.∆,T}',
                    mathStyle: MathStyle.display,
                  ),
                ),
                Center(
                  child: Text(
                    '''\nAtau
                      ''',
                    style: fontSizeText,
                    textAlign: TextAlign.center,
                  ),
                ),
                Center(
                  child: Math.tex(
                    r'Q = m.c.∆T',
                    mathStyle: MathStyle.display,
                  ),
                ),
                Text(
                  '''\nDengan:''',
                  style: fontSizeText,
                  textAlign: TextAlign.justify,
                ),
                Row(
                  children: [
                    Math.tex(
                      r'c',
                      mathStyle: MathStyle.display,
                    ),
                    Text(
                      ''' = kalor jenis suatu zat''',
                      style: fontSizeText,
                    ),
                    Math.tex(
                      r'(Jkg^{-10}C^{-1})',
                      mathStyle: MathStyle.display,
                    ),
                  ],
                ),
                Row(
                  children: [
                    Math.tex(
                      r'm',
                      mathStyle: MathStyle.display,
                    ),
                    Text(
                      ''' = massa zat (kg)''',
                      style: fontSizeText,
                    ),
                  ],
                ),
                Row(
                  children: [
                    Math.tex(
                      r'∆T',
                      mathStyle: MathStyle.display,
                    ),
                    Text(
                      ''' = perubahan suhu (°K)''',
                      style: fontSizeText,
                    ),
                  ],
                ),
                Row(
                  children: [
                    Math.tex(
                      r'Q',
                      mathStyle: MathStyle.display,
                    ),
                    Text(
                      ''' = banyak kalor yang diterima atau dilepas (J)''',
                      style: fontSizeText,
                    ),
                  ],
                ),
                Center(
                    child: Text('''\nTabel 3. Kalor Jenis''',
                        style: fontSizeInfo, textAlign: TextAlign.justify)),
                Center(
                  child: Image.asset(
                    'assets/images/kalor1.png',
                    width: 500,
                  ),
                ),
                Text(
                  "\nKapasitas kalor suatu benda adalah jumlah kalor yang diperlukan atau dilepaskan jika suhu benda tersebut dinaikkan atau diturunkan 1 K atau 1°C. Secara matematis dapat dirumuskan sebagai berikut:\n",
                  style: fontSizeText,
                  textAlign: TextAlign.justify,
                ),
                Row(
                  children: [
                    Math.tex(
                      r'c = \frac{Q}{m.∆,T}',
                      mathStyle: MathStyle.display,
                      textStyle: fontSizeMathText,
                    ),
                    Text(
                      '''  atau  ''',
                      style: fontSizeText,
                    ),
                    Math.tex(
                      r'C = m.c',
                      mathStyle: MathStyle.display,
                      textStyle: fontSizeMathText,
                    ),
                  ],
                ),
                Text("\nDengan :\n", style: fontSizeText),
                Row(
                  children: [
                    Math.tex(
                      r'C',
                      mathStyle: MathStyle.display,
                    ),
                    Text(
                      ''' = kapasitas kalor ''',
                      style: fontSizeText,
                    ),
                    Math.tex(
                      r'\left(JK^{-1}\right)',
                      mathStyle: MathStyle.display,
                    ),
                  ],
                ),
                Text("\n2) Perubahan Wujud Zat\n", style: fontSizeMainText),
                Text(
                    "Kalor yang diterima atau dilepaskan suatu zat dapat mengakibatkan pada perubahan wujud suatu zat. Penerimaan kalor akan meningkatkan suhu dan dapat mengubah wujud zat dari padat menjadi cair atau cair menjadi gas. Sedangkan, pelepasan kalor dapat menurunkan suhu atau mengubah wujud dari cair menjadi padat atau gas menjadi cair. Ketika sedang berubah wujud, walaupun terdapat pelepasan atau penyerapan kalor tetapi tidak digunakan untuk menaikkan atau menurunkan suhu. Kalor ini disebut kalor laten atau L. Kalor laten adalah kalor yang dibutuhkan benda untuk mengubah wujudnya per satuan massa. Secara matematis:\n",
                    style: fontSizeText),
                Math.tex(
                  r'L = \frac{Q}{m}',
                  mathStyle: MathStyle.display,
                  textStyle: fontSizeMathText,
                ),
                Text("\nDengan :\n", style: fontSizeText),
                Row(
                  children: [
                    Math.tex(
                      r'L',
                      mathStyle: MathStyle.display,
                    ),
                    Text(
                      ''' = kalor laten ''',
                      style: fontSizeText,
                    ),
                    Math.tex(
                      r'\left(Jkg^{-1}\right)',
                      mathStyle: MathStyle.display,
                    ),
                  ],
                ),
                Row(
                  children: [
                    Math.tex(
                      r'Q',
                      mathStyle: MathStyle.display,
                    ),
                    Text(
                      ''' = kalor yang diperlukan atau dilepaskan ''',
                      style: fontSizeText,
                    ),
                    Math.tex(
                      r'\left(J\right)',
                      mathStyle: MathStyle.display,
                    ),
                  ],
                ),
                Row(
                  children: [
                    Math.tex(
                      r'm',
                      mathStyle: MathStyle.display,
                    ),
                    Text(
                      ''' = massa zat ''',
                      style: fontSizeText,
                    ),
                    Math.tex(
                      r'\left(kg\right)',
                      mathStyle: MathStyle.display,
                    ),
                  ],
                ),
                Text("\n3) Azas Black\n", style: fontSizeMainText),
                Text(
                    "Asas Black adalah suatu prinsip dalam termodinamika yang dikemukakan oleh Joseph Black. Bunyi Asas Black adalah sebagai berikut:",
                    style: fontSizeText),
                Text(
                    "Pada pencampuran dua zat, banyaknya kalor yang dilepas zat yang suhunya lebih tinggi sama dengan banyaknya kalor yang diterima zat yang suhunya lebih rendah.",
                    style: fontSizeTextItalic),
                Text(
                    "Energi selalu kekal sehingga benda yang memiliki temperatur lebih tinggi akan melepaskan energi sebesar QL dan benda yang memiliki temperatur lebih rendah akan menerima energi sebesar QT dengan besar yang sama (Yuswati, 2021)",
                    style: fontSizeText),
                Text(
                    "\nSecara matematis, pertanyaan tersebut dapat ditulis sebagai berikut:\n",
                    style: fontSizeText),
                Center(
                  child: Math.tex(
                    r'Q_{lepas} = Q_{terima}',
                    mathStyle: MathStyle.display,
                    textStyle: fontSizeMathText,
                  ),
                ),
                Text("\nKeterangan\n", style: fontSizeText),
                Row(
                  children: [
                    Math.tex(
                      r'Q_{lepas}',
                      mathStyle: MathStyle.display,
                      textStyle: fontSizeMathText,
                    ),
                    Flexible(
                      child: Text(
                        ''' = jumlah kalor yang dilepaskan oleh zat (Joule)\n\t''',
                        style: fontSizeText,
                      ),
                    ),
                    Math.tex(
                      r'~~Q_{terima}',
                      mathStyle: MathStyle.display,
                      textStyle: fontSizeMathText,
                    ),
                    Text(
                      ''' = jumlah kalor yang diterima oleh zat (Joule)\n''',
                      style: fontSizeText,
                    ),
                  ],
                ),
                Text(
                    '\nBesarnya kalor dapat dihitung dengan menggunakan persamaan:',
                    style: fontSizeText),
                Center(child: Text('Q = mc∆Τ', style: fontSizeMainText)),
                Text(
                    "\nKetika menggunakan persamaan ini, perlu diingat bahwa temperatur naik berarti zat menerima kalor, dan temperatur turun berarti zat melepaskan kalor, maka:\n",
                    style: fontSizeText),
                Center(
                  child: Math.tex(
                    r'Q_{lepas} = Q_{terima}',
                    mathStyle: MathStyle.display,
                    textStyle: fontSizeMathText,
                  ),
                ),
                const Text('\n'),
                Center(
                    child: Math.tex(
                  r'm_1c_1∆T_1=m_2c_2∆T_2',
                  mathStyle: MathStyle.display,
                  textStyle: fontSizeMathText,
                )),
                const Text('\n'),
                Center(
                  child: Math.tex(
                    r'dengan~∆T_1 = T - T_{akhir}~dan~∆T_2 = T_{akhir} - T~~sehingga',
                    mathStyle: MathStyle.display,
                    textStyle: fontSizeMathText,
                  ),
                ),
                const Text('\n'),
                Center(
                  child: Math.tex(
                    r'm_1c_1\Bigg(T_1 - T_c\Bigg) = m_2c_2\Bigg(T_c - T_2\Bigg)',
                    mathStyle: MathStyle.display,
                    textStyle: fontSizeMathText,
                  ),
                ),
                Text("Keterangan", style: fontSizeText),
                Row(
                  children: [
                    Math.tex(
                      r'm_1',
                      mathStyle: MathStyle.display,
                    ),
                    Text(
                      ''' = massa benda 1 yang suhunya tinggi (kg)''',
                      style: fontSizeText,
                    ),
                  ],
                ),
                Row(children: [
                  Math.tex(
                    r'm_2',
                    mathStyle: MathStyle.display,
                  ),
                  Text(
                    ''' =  massa benda 2 yang suhunya rendah (kg)''',
                    style: fontSizeText,
                  ),
                ]),
                Row(children: [
                  Math.tex(
                    r'c_1',
                    mathStyle: MathStyle.display,
                  ),
                  Text(
                    ''' =  kalor jenis benda 1 (J/kg°C)''',
                    style: fontSizeText,
                  ),
                ]),
                Row(children: [
                  Math.tex(
                    r'c_2',
                    mathStyle: MathStyle.display,
                  ),
                  Text(
                    ''' =  kalor jenis benda 2 (J/kg°C)''',
                    style: fontSizeText,
                  ),
                ]),
                Row(children: [
                  Math.tex(
                    r'T_1',
                    mathStyle: MathStyle.display,
                  ),
                  Text(
                    ''' =  suhu mula-mula benda 1 (°C atau K)''',
                    style: fontSizeText,
                  ),
                ]),
                Row(children: [
                  Math.tex(
                    r'T_2',
                    mathStyle: MathStyle.display,
                  ),
                  Text(
                    ''' =  suhu mula-mula benda 2 (°C atau K)''',
                    style: fontSizeText,
                  ),
                ]),
                Row(children: [
                  Math.tex(
                    r'T_c',
                    mathStyle: MathStyle.display,
                  ),
                  Text(
                    ''' =  suhu akhir atau suhu campuran (°C atau K)''',
                    style: fontSizeText,
                  ),
                ]),
              ],
            ),
          )),
        ),
      ),
    );
  }
}

class KalorQuizScreen extends StatefulWidget {
  const KalorQuizScreen({super.key});

  @override
  _KalorQuizScreenState createState() => _KalorQuizScreenState();
}

class _KalorQuizScreenState extends State<KalorQuizScreen> {
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
        title: const Text('Quiz : Kalor'),
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
                    'Tentukan perubahan suhu air terjun yang jatuh dari ketinggian 1 km, jika seluruh energinya berubah menjadi kalor . . .',
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
                    child: const Text('4,17'),
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
                    child: const Text('3,6'),
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
                    child: const Text('2,4'),
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
                    child: const Text('1,2'),
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
                    child: const Text('0,6'),
                  ),
                  const SizedBox(height: 20),
                  if (hasAnsweredQuestion)
                    Column(
                      children: [
                        const Text(
                          'Jawaban: 2,4',
                          style: TextStyle(fontSize: 18),
                        ),
                        const SizedBox(height: 20),
                        ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const PembahasanDuaScreen(),
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
