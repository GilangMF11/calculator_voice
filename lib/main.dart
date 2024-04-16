import 'package:flutter/material.dart';
import 'package:calculator_voice_id/screens/traditionalScreen.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: traditionalScreen(), // Gunakan SplashScreen sebagai tampilan awal
    );
  }
}
