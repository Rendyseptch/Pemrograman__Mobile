import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 37, 144, 126),
          title: const Text("Warok.Apps"),
        ),
        body: Container(
          child: Column(
            children: [
              // Container1
              SizedBox(
                width: double.infinity,
                height: 60,
                child: Row(
                  children: [
                    // Bagian 1 (kiri)
                    Expanded(
                      flex: 1,
                      child: Container(
                        color: Colors.white,
                        height: 100.0,
                        child: const Text(
                          "BERITA AKHIR PEKAN",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 18.0,
                            height: 3, // ngantur letak tulisan
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),

                    // Bagian 2 (kanan)
                    Expanded(
                      flex: 1,
                      child: Container(
                        color: Colors.white,
                        height: 100.0,
                        child: const Text(
                          " HOT NEWS",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 18.0,
                            height: 3,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),

              // Container2
              Stack(
                children: [
                  Container(
                    color: Colors.amber,
                    height: 302,
                    child: Image.asset(
                      'images/bakar.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),

                  //stack lapiran ke 2
                  Stack(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(top: 219),
                        height: 40,
                        color: const Color.fromARGB(255, 64, 98, 222),
                        child: Positioned(
                          child: Container(
                            alignment: Alignment.center,
                            width: 360,
                            height: 23,
                            color: const Color.fromARGB(255, 255, 255, 255),
                            child: const Center(
                              child: Text(
                                'Gunung Bromo Terbakar Kembali Karena Flare',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  color: Color.fromARGB(255, 0, 0,  0), 
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),

                  Positioned(
                    top: 260,
                    left: 0,
                    child: Container(
                      alignment: Alignment.center,
                      width: 360,
                      height: 43,
                      color: const Color.fromARGB(255, 9, 121, 136),
                      child: const Center(
                        child: Text(
                          'Share',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: Color.fromARGB(255, 255, 255, 255),
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),

              //bagian3
              Container(
                margin: const EdgeInsets.only(top: 14.0),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.black, // Warna border
                    width: 1.0, // Lebar border
                  ),
                ),
                child: Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Image.asset(
                        'images/4107449.jpg',
                        fit: BoxFit.cover,
                        height: 117,
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(
                        child: const Text(
                          'Keindahan Bromo Menjadi Destinasi Andalan Jawa Timur',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 14.0,
                            height: 2,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              Container(
                height: 30,
                width: 1000,
                padding: const EdgeInsets.only(top: 5),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.black, // Warna border
                    width: 1, // Lebar border
                  ),
                ),
                child: const Column(
                  children: [
                    Text(
                      'Probolinggo, September 2023',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),

              //bagian 4
              Container(
                margin: const EdgeInsets.only(top: 14.0),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.black, // Warna border
                    width: 1.0, // Lebar border
                  ),
                ),
                child: Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Image.asset(
                        'images/kasada.jpg',
                        fit: BoxFit.cover,
                        height: 117,
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(
                        child: const Text(
                          'Eksotika Bromo:  Salah Satu Wisata Andalan di Jawa Timur',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 14.0,
                            height: 2,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

            Container(
                height: 30,
                width: 1000,
                padding: const EdgeInsets.only(top: 5),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.black, // Warna border
                    width: 1, // Lebar border
                  ),
                ),
                child: const Column(
                  children: [
                    Text(
                      'Probolinggo, September 2023',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

  