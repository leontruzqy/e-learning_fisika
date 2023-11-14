import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileScreen extends StatelessWidget {
  final fontSizeText =
      GoogleFonts.montserrat(fontSize: 16, fontWeight: FontWeight.bold);

  ProfileScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Profil',
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: ListView(
          children: [
            (Padding(
              padding: const EdgeInsets.all(32.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.asset(
                          'assets/images/profil.png',
                          width: 200,
                        ),
                      ),
                      const SizedBox(width: 20),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Nama',
                            style: fontSizeText,
                            textAlign: TextAlign.start,
                          ),
                          const SizedBox(height: 20),
                          Text("NIM",
                              style: fontSizeText, textAlign: TextAlign.start),
                          const SizedBox(height: 20),
                          Text("Jurusan",
                              style: fontSizeText, textAlign: TextAlign.start),
                          const SizedBox(height: 45),
                          Text("Nama Pembimbing",
                              style: fontSizeText, textAlign: TextAlign.start),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(height: 5),
                          Text(
                            ' : Dian Rif’atul A’yun',
                            style: fontSizeText,
                            textAlign: TextAlign.start,
                          ),
                          const SizedBox(height: 20),
                          Text(" : 22326251005",
                              style: fontSizeText, textAlign: TextAlign.start),
                          const SizedBox(height: 20),
                          Text(
                              " : Magister Pendidikan Fisika\n\t\tUniversitas Negeri Yogyakarta",
                              style: fontSizeText,
                              textAlign: TextAlign.start),
                          const SizedBox(height: 20),
                          Text(" : Prof. Dr. Drs. Edi Istiyono, M.Si.",
                              style: fontSizeText, textAlign: TextAlign.start),
                        ],
                      ),
                      // Column(
                      //   mainAxisAlignment: MainAxisAlignment.end,
                      //   crossAxisAlignment: CrossAxisAlignment.end,
                      //   children: [
                      //     Text("App by: Leon Truzqy",
                      //         style: fontSizeText, textAlign: TextAlign.end),
                      //   ],
                      // )
                    ],
                  ),
                ],
              ),
            )),
          ],
        ),
      ),
    );
  }
}
