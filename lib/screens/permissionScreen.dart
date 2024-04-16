import 'package:flutter/material.dart';

class PermissionScreen extends StatelessWidget {
  const PermissionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Align(
            alignment: Alignment.topCenter, // Atur garis di bagian atas
            child: Padding(
              padding: const EdgeInsets.only(top: 70),
              child: Column(
                children: [
                  Container(
                    height: 2.0, // Atur tinggi (height) garis sesuai kebutuhan
                    color: const Color(0xFF8F1EE9), // Warna garis
                    width: 116.0, // Atur lebar (width) garis sesuai kebutuhan
                  ),
                  const SizedBox(height: 30),
                  const Text(
                    "Hitung Dengan \nSuaramu !",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                      fontFamily: "SF UI Text"
                    ),
                  ),
                  const SizedBox(height: 20),
                  RichText(text: const TextSpan(
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.grey,
                      fontFamily: "SF UI Text"
                    ),
                    children: <TextSpan>[
                      TextSpan(text: "Aplikasi "),
                      TextSpan(text: "OICE ",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      )),
                      TextSpan(
                        text: "membutuhkan Izin \n"
                      ),
                      TextSpan(
                        text: "untuk mengakses “Audio” dari Device anda.",
                      )
                    ]
                  ),
                  textAlign: TextAlign.center,
                  ),
                  
                ],
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(child: Image.asset("assets/Microphone.png", width: 75, height: 75)),
            ]
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
                    backgroundColor: const Color(0xFF8F1EE9),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  onPressed: () {},
                  child: const Text(
                    "Berikan Izin",
                    style: TextStyle(
                      color: Color(0xFFE3E3E3),
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                      fontFamily: "SF UI Text"
                    ),
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

