import 'package:elearning/pages/kalor.dart';
import 'package:elearning/pages/pembahasan.dart';
import 'package:flutter/material.dart';
import 'package:flutter_math_fork/flutter_math.dart';

class PemuaianZatTopicScreen extends StatelessWidget {
  final fontSizeText = const TextStyle(fontSize: 16);
  final fontSizeInfo = const TextStyle(fontSize: 12);
  final fontSizeMainText =
      const TextStyle(fontSize: 18, fontWeight: FontWeight.bold);
  final fontSizeMathText = const TextStyle(fontSize: 18);
  final fontSizeTextItalic =
      const TextStyle(fontSize: 18, fontStyle: FontStyle.italic);

  const PemuaianZatTopicScreen({super.key});
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
                  builder: (context) => const KalorTopicScreen(),
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
                  builder: (context) => const PemuaianZatQuizScreen(),
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
                  "Pemuaian Zat\nPendahuluan\n",
                  style: fontSizeMainText,
                  textAlign: TextAlign.justify,
                ),
                Text(
                  '''
            Pernahkah rumah kalian mati lampu dikarenakan terjadi pembebanan listrik karena memasang alat-alat rumah tangga yang terlalu banyak? Atau terjadi konsleting pada kabel di atas rumah yang menyebabkan mati lampu agar tidak terjadi kebakaran di rumah? Tahukah kalian mengapa bisa terjadi mati listrik atau putus arus listrik di rumah?\n
            ''',
                  style: fontSizeText,
                  textAlign: TextAlign.justify,
                ),
                Text(
                  "Pemuaian zat umumnya terjadi ke segala arah, ke arah panjang, ke arah lebar dan ke arah tebal. Namun, pada pembahasan tertentu mungkin kita hanya memandang pemuaian ke satu arah tertentu, misalnya ke arah panjang, sehingga kita hanya hanya membahas pemuaian panjang (Astuti, 2022).\n",
                  style: fontSizeText,
                  textAlign: TextAlign.justify,
                ),
                Text(
                  "Pemuaian Zat Cair\n",
                  style: fontSizeMainText,
                  textAlign: TextAlign.justify,
                ),
                Text(
                  "Pada umumnya setiap zat memuai jika dipanaskan, kecuali air jika dipanaskan dari 0°C sampai 4°C akan menyusut. Sifat keanehan air seperti itu disebut anomali air. Grafik anomali air seperti diperlihatkan pada gambar berikut ini.\n",
                  style: fontSizeText,
                  textAlign: TextAlign.justify,
                ),
                Center(
                  child: Image.asset(
                    'assets/images/pzcair1.png',
                    width: 400,
                  ),
                ),
                Center(
                  child: Text(
                    "Gambar 2. Grafik anomali air\n",
                    style: fontSizeInfo,
                    textAlign: TextAlign.center,
                  ),
                ),
                Text(
                  "Keterangan:\n",
                  style: fontSizeText,
                  textAlign: TextAlign.justify,
                ),
                Text(
                  "Pada suhu 4°C menghasilkan volume air terkecil dan massa jenis air besar Karena pada zat cair hanya mengalami pemuaian volume, maka pada pemuaian zat cair hanya diperoleh persamaan berikut:\n",
                  style: fontSizeText,
                  textAlign: TextAlign.justify,
                ),
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
                Text("\n", style: fontSizeText),
                Text("Pemuaian Zat Padat\n", style: fontSizeMainText),
                Text(
                    "Pada zat padat bisa terjadi tiga jenis pemuaian, yaitu pemuaian panjang, luas dan volume.\n",
                    style: fontSizeText),
                Text("Muai Panjang\n", style: fontSizeMainText),
                Center(
                  child: Image.asset(
                    'assets/images/Picture3.png',
                    width: 400,
                  ),
                ),
                Center(
                  child: Text(
                    "Gambar 3. Muai panjang\n",
                    style: fontSizeInfo,
                    textAlign: TextAlign.center,
                  ),
                ),
                Text(
                  '''
            Pemuaian panjang disebut juga dengan pemuaian linier. Pemuaian panjang zat padat berlaku jika zat padat itu hanya dipandang sebagai satu dimensi (berbentuk garis). Untuk pemuaian panjang digunakan konsep koefisien muai panjang atau koefisien muai linier yang dapat didefinisikan sebagai perbandingan antara pertambahan panjang zat dengan panjang mula-mula zat, untuk tiap kenaikan suhu sebesar satu satuan suhu.\n \tJika koefisien muai panjang dilambangkan dengan dan pertambahan Panjang ∆L, panjang mula-mula L0, dan perubahan suhu ∆T. maka koefisien muai panjang dapat dinyatakan dengan persamaan:
            ''',
                  style: fontSizeText,
                  textAlign: TextAlign.justify,
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
                  style: fontSizeText,
                  textAlign: TextAlign.justify,
                ),
                Center(
                  child: Math.tex(
                    r'\Delta L~=~\alpha~L~\Delta T',
                    mathStyle: MathStyle.display,
                    textStyle: fontSizeMathText,
                  ),
                ),
                Text(
                  "\nDimana\n",
                  style: fontSizeText,
                  textAlign: TextAlign.justify,
                ),
                Center(
                  child: Math.tex(
                    r'\Delta L~=~L_t~-~L_0',
                    mathStyle: MathStyle.display,
                    textStyle: fontSizeMathText,
                  ),
                ),
                Text(
                  "\n",
                  style: fontSizeText,
                  textAlign: TextAlign.justify,
                ),
                Center(
                  child: Math.tex(
                    r'L_t~=~L_0~+~ \alpha L_0  \Delta T',
                    mathStyle: MathStyle.display,
                    textStyle: fontSizeMathText,
                  ),
                ),
                Text(
                  "\n",
                  style: fontSizeText,
                  textAlign: TextAlign.justify,
                ),
                Center(
                  child: Math.tex(
                    r'L_t~=~LL_0~(1~+ \alpha  \Delta T)',
                    mathStyle: MathStyle.display,
                    textStyle: fontSizeMathText,
                  ),
                ),
                Text(
                  "\n",
                  style: fontSizeText,
                  textAlign: TextAlign.justify,
                ),
                Text(
                  "Keterangan\n",
                  style: fontSizeText,
                  textAlign: TextAlign.justify,
                ),
                Row(
                  children: [
                    Math.tex(
                      r'L_t',
                      mathStyle: MathStyle.display,
                    ),
                    Text(
                      ''' = panjang benda saat dipanaskan (m)''',
                      style: fontSizeText,
                      textAlign: TextAlign.justify,
                    ),
                  ],
                ),
                Text(
                  "\n",
                  style: fontSizeText,
                  textAlign: TextAlign.justify,
                ),
                Row(
                  children: [
                    Math.tex(
                      r'L_0',
                      mathStyle: MathStyle.display,
                    ),
                    Text(
                      ''' = panjang benda mula-mula (m)''',
                      style: fontSizeText,
                      textAlign: TextAlign.justify,
                    ),
                  ],
                ),
                Text(
                  "\n",
                  style: fontSizeText,
                  textAlign: TextAlign.justify,
                ),
                Row(
                  children: [
                    Math.tex(
                      r'\alpha',
                      mathStyle: MathStyle.display,
                    ),
                    Text(
                      ''' = koefisien muai linear/panjang (/°C)''',
                      style: fontSizeText,
                      textAlign: TextAlign.justify,
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
                      textAlign: TextAlign.justify,
                    ),
                  ],
                ),
                Text(
                  "\n",
                  style: fontSizeText,
                  textAlign: TextAlign.justify,
                ),
                Text(
                  "\nMuai Luas",
                  style: fontSizeMainText,
                  textAlign: TextAlign.justify,
                ),
                Center(
                  child: Image.asset(
                    'assets/images/Picture2.png',
                    width: 200,
                  ),
                ),
                Center(
                  child: Text("Gambar 4. Muai Luas\n", style: fontSizeInfo),
                ),
                Text(
                    "Jika zat padat tersebut mempunyai 2 dimensi (panjang dan lebar), kemudian dipanasi tentu baik panjang maupun lebarnya mengalami pemuaian atau dengan kata lain luas zat padat tersebut mengalami pemuaian. Koefisien muai pada pemuaian luas ini disebut dengan koefisien muai luas yang diberi lambang β Analog dengan pemuaian panjang, maka jika luas mula-mula A0, pertambahan luas ΔA dan perubahan suhu ΔT, maka koefisien muai luas dapat dinyatakan dengan persamaan:\n",
                    style: fontSizeText),
                Center(
                  child: Math.tex(
                    r'\beta = \frac{\Delta A}{A.\Delta T}',
                    mathStyle: MathStyle.display,
                  ),
                ),

                Text(
                  "Dari persamaan diatas, diperoleh pula persamaan berikut:\n",
                  style: fontSizeText,
                  textAlign: TextAlign.justify,
                ),
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
                      ''', sehingga persamaan menjadi:\n''',
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
                  style: fontSizeText,
                  textAlign: TextAlign.justify,
                ),
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
                      r'A_t',
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
                      r'A_0',
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
                Center(
                  child: Image.asset(
                    'assets/images/Picture1.png',
                    width: 200,
                  ),
                ),
                Center(
                  child: Text("Gambar 5. Muai Volume\n", style: fontSizeInfo),
                ),
                Text(
                  "Pemuaian volume adalah pertambahan ukuran volume suatu benda dari volumenya semula karena kenaikan suhu. Koefisien muai volum diberi lambang γ. Jika volum mula mula V0, pertambahan volum ΔV dan perubahan suhu ΔT, maka koefisien muai volum dapat dinyatakan dengan persamaan:\n",
                  style: fontSizeText,
                  textAlign: TextAlign.justify,
                ),
                Center(
                  child: Math.tex(
                    r'\gamma = \frac{\Delta V}{V \Delta T}',
                    mathStyle: MathStyle.display,
                    textStyle: fontSizeMathText,
                  ),
                ),
                Text(
                  "\nDari persamaan diatas, diperoleh pula persamaan berikut\n",
                  style: fontSizeText,
                  textAlign: TextAlign.justify,
                ),
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
                  style: fontSizeText,
                  textAlign: TextAlign.justify,
                ),
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
                // Text("\nPemuaian Gas\n", style: fontSizeMainText),
                // Text(
                //     "Jika gas dipanaskan, maka dapat mengalami pemuaian volume dan dapat juga terjadi pemuaian tekanan. Dengan demikian pada pemuaian gas terdapat beberapa persamaan, sesuai dengan proses pemanasannya.\n",
                //     style: fontSizeText),
                // //Pemuaian Volume pada Tekanan Tetap (Isobarik)
                // Text("Pemuaian Volume pada Tekanan Tetap (Isobarik)\n",
                //     style: fontSizeMainText),
                // Text(
                //     "Jika gas dipanaskan pada tekanan tetap maka volume gas sebanding dengan suhu mutlak gas itu.. Secara matematik dapat dinyatakan:\n",
                //     style: fontSizeText),
                // Math.tex(
                //   r'V~\sim~T',
                //   mathStyle: MathStyle.display,
                //   textStyle: fontSizeMathText,
                // ),
                // Center(
                //   child: Text(
                //       "Atau secara lengkap dapat ditulis dalam bentuk persamaan berikut\n",
                //       style: fontSizeText),
                // ),
                // Center(
                //   child: Math.tex(
                //     r'\frac{V}{T} = tetap',
                //     mathStyle: MathStyle.display,
                //     textStyle: fontSizeMathText,
                //   ),
                // ),
                // Center(child: Text("atau\n", style: fontSizeText)),
                // Center(
                //   child: Math.tex(
                //     r'\frac{V_1}{T_1} = \frac{V_2}{T_2}',
                //     mathStyle: MathStyle.display,
                //     textStyle: fontSizeMathText,
                //   ),
                // ),
                // //Pemuaian Tekanan Gas pada Volume Tetap (Isokhorik)
                // Text("Pemuaian Tekanan Gas pada Volume Tetap (Isokhorik)\n",
                //     style: fontSizeMainText),
                // Text(
                //     "Jika pemanasan terus dilakukan pada gas dalam ruang tertutup,maka tekanan gas sebanding dengan suhu mutlak gas tersebut. Secara matematik dapat dinyatakan sebagai berikut.\n",
                //     style: fontSizeText),
                // Math.tex(
                //   r'P~\sim~T',
                //   mathStyle: MathStyle.display,
                //   textStyle: fontSizeMathText,
                // ),
                // Text(
                //     "Atau secara lengkap dapat ditulis dalam bentuk persamaan berikut\n",
                //     style: fontSizeText),
                // Center(
                //   child: Math.tex(
                //     r'\frac {P}{T} = tetap',
                //     mathStyle: MathStyle.display,
                //     textStyle: fontSizeMathText,
                //   ),
                // ),
                // Center(child: Text("atau\n", style: fontSizeText)),
                // Center(
                //   child: Math.tex(
                //     r'\frac{P_1}{T_1} = \frac{P_2}{T_2}',
                //     mathStyle: MathStyle.display,
                //     textStyle: fontSizeMathText,
                //   ),
                // ),
                // //Pemuaian Volume Gas pada Suhu Tetap (Isotermis)
                // Text("Pemuaian Volume Gas pada Suhu Tetap (Isotermis)\n",
                //     style: fontSizeMainText),
                // Text(
                //     "Jika gas dipanaskan dengan suhu tetap, tekanan gas berbanding terbalik dengan volume gas. Secara matematik dapat dinyatakan sebagai berikut.\n",
                //     style: fontSizeText),
                // Math.tex(
                //   r'P = \frac{1}{V}',
                //   mathStyle: MathStyle.display,
                //   textStyle: fontSizeMathText,
                // ),
                // Text("Diperoleh\n", style: fontSizeText),
                // Center(
                //   child: Math.tex(
                //     r'P.V = tetap',
                //     mathStyle: MathStyle.display,
                //     textStyle: fontSizeMathText,
                //   ),
                // ),
                // Center(child: Text("atau\n", style: fontSizeText)),
                // Center(
                //   child: Math.tex(
                //     r'P_1V_1 = P_2V_2',
                //     mathStyle: MathStyle.display,
                //     textStyle: fontSizeMathText,
                //   ),
                // ),
                // Text(
                //     "\nJika pada proses pemuaian gas terjadi tekanan berubah, volum berubah dan suhu berubah maka dapat diselesaikan dengan persamaan hukum Boyle - Gay Lussac\n",
                //     style: fontSizeText),
                // Center(
                //   child: Math.tex(
                //     r'\frac {P.V}{T} = tetap',
                //     mathStyle: MathStyle.display,
                //     textStyle: fontSizeMathText,
                //   ),
                // ),
                // Center(child: Text("atau\n", style: fontSizeText)),
                // Center(
                //   child: Math.tex(
                //     r'\frac {P_1V_1}{T_1} = \frac {P_2V_2}{T_2}',
                //     mathStyle: MathStyle.display,
                //     textStyle: fontSizeMathText,
                //   ),
                // ),
              ],
            ),
          )),
        ),
      ),
    );
  }
}

class PemuaianZatQuizScreen extends StatefulWidget {
  const PemuaianZatQuizScreen({super.key});

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
                                builder: (context) => const PembahasanTigaScreen(),
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
