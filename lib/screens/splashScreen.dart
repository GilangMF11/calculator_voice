import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Stack(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/Logo.png',
                  width: 150, // Sesuaikan ukuran gambar logo
                  height: 150,
                ),
                const SizedBox(height: 20),
                const Text(
                  "OICE",
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 10),
                const Text(
                  'Operator Voice',
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
            Positioned(
              bottom: 0, // Atur gambar latar belakang tambahan di bagian bawah
              left: 0,
              right: 0,
              child: Image.asset(
                'assets/vektor_splash.png', // Gambar latar belakang tambahan
                fit: BoxFit.cover,
                width: 900,
              )
            )
          ],
        ),
      ),
    );
  }
}
