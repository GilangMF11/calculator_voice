import 'package:flutter/material.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF8F1EE9),
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/vektor_onbroading.png"),
                    fit: BoxFit.cover)),
          ),
          Column(
            children: [
              Image.asset("assets/onbroading_atas.png"),
              const Padding(
                padding: EdgeInsets.only(top: 20),
              ),
              Center(
                child: Column(
                  children: [
                    const Text(
                      "Sudah Saatnya\nHitung Bersama AI",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.w500,
                        fontFamily: "SF UI Text"  
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    RichText(text: const TextSpan(
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        fontFamily: "SF UI Text"
                      ),
                      children: <TextSpan>[
                        TextSpan(text: "OICE ", 
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        )),
                        TextSpan(
                          text: "hadir untuk memberikan pengalaman\nbaru bagi kalian untuk merasakan kemudahan\nmenghitung hanya dengan perintah suara. \n"
                        )
                      ]
                    ),
                    textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Image.asset(
                  'assets/onbroading.png',
                  width: 300,
                  height: 300,
                ),
              ),
              const SizedBox(
                height: 40,
              ),
            ],
          ),
          Positioned(
            bottom: 0, // Atur gambar latar belakang tambahan di bagian bawah
            left: 0,
            right: 0,
            child: Image.asset(
              'assets/onbroading_bawah.png', // Gambar latar belakang tambahan
              fit: BoxFit.cover,
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.only(
                  bottom: 50), // Geser tombol ke atas dengan margin 20 piksel
              child: SizedBox(
                width: 324,
                height: 51,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  onPressed: () {},
                  child: const Text(
                    "Coba OICE",
                    style: TextStyle(
                        color: Color(0xFF8F1EE9),
                        fontSize: 16,
                        fontWeight: FontWeight.w700),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
