import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

class traditionalScreen extends StatefulWidget {
  const traditionalScreen({super.key});

  @override
  State<traditionalScreen> createState() => _traditionalScreenState();
}

class _traditionalScreenState extends State<traditionalScreen> {
  String equation = "0";
  String result = "0";
  String expression = "";
  double equationFontSize = 38.0;
  double resultFontSize = 48.0;

  buttonPressed(String buttonText) {
    //digunakan untuk memeriksa apakah hasilnya mengandung desimal
    String doesContainDecimal(dynamic result) {
      if (result.toString().contains('.')) {
        List<String> splitDecimal = result.toString().split('.');
        if (!(int.parse(splitDecimal[1]) > 0)) {
          return result = splitDecimal[0].toString();
        }
      }
      return result;
    }

    setState(() {
      if (buttonText == "AC") {
        equation = "0";
        result = "0";
      } else if (buttonText == "⌫") {
        equation = equation.substring(equation.length - 1);
        if (equation == "") {
          equation = "0";
        }
      } else if (buttonText == "+/-") {
        if (equation[0] != "-") {
          equation = "-" + equation;
        } else {
          equation = equation.substring(1);
        }
      } else if (buttonText == "=") {
        {
          expression = equation;
          expression = expression.replaceAll('×', '*');
          expression = expression.replaceAll('÷', '/');
          expression = expression.replaceAll('%', '%');

          try {
            Parser p = Parser();
            Expression exp = p.parse(expression);

            ContextModel cm = ContextModel();
            result = '$equation = ${exp.evaluate(EvaluationType.REAL, cm)}';
            if (expression.contains('%')) {
              result = doesContainDecimal(result);
            }
          } catch (e) {
            result = "Error";
          }
        } 
      }else {
          if (equation == "0") {
            equation = buttonText;
          } else {
            equation = equation + buttonText;
          }
        }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 70),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.topRight,
                  child: Container(
                    height: 2.0,
                    color: const Color(0xFF8F1EE9),
                    width: 116.0,
                  ),
                ),
                const SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Kalkulator OICE",
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                            ),
                          ),
                          SizedBox(height: 10),
                        ],
                      ),
                      GestureDetector(
                        onTap: () {
                          showModalBottomSheet(
                            context: context,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)),
                            builder: (BuildContext context) {
                              return ClipRRect(
                                borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(40.0),
                                  topRight: Radius.circular(40.0),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 20),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: <Widget>[
                                      const SizedBox(height: 10),
                                      Center(
                                        child: Container(
                                          height: 4.0,
                                          color: const Color(0xFF8F1EE9),
                                          width: 122.0,
                                        ),
                                      ),
                                      const SizedBox(height: 20),
                                      ListTile(
                                        leading: const Icon(
                                          Icons.sync_alt,
                                          color: Colors.black,
                                        ),
                                        title: const Text(
                                          'Ganti Mode OICE',
                                          style: TextStyle(
                                              fontSize: 15,
                                              fontFamily: "SF UI Text",
                                              color: Colors.black),
                                        ),
                                        onTap: () {
                                          // Tambahkan logika ketika Option 1 dipilih
                                          Navigator.pop(context);
                                        },
                                      ),
                                      ListTile(
                                        leading: const Icon(
                                          Icons.history,
                                          color: Colors.black,
                                        ),
                                        title: const Text(
                                          'Riwayat',
                                          style: TextStyle(
                                              fontSize: 15,
                                              fontFamily: "SF UI Text",
                                              color: Colors.black),
                                        ),
                                        onTap: () {
                                          // Tambahkan logika ketika Option 1 dipilih
                                          Navigator.pop(context);
                                        },
                                      ),
                                      ListTile(
                                        leading: const Icon(
                                          Icons.library_books,
                                          color: Colors.black,
                                        ),
                                        title: const Text(
                                          'Ubah Bahasa',
                                          style: TextStyle(
                                              fontSize: 15,
                                              fontFamily: "SF UI Text",
                                              color: Colors.black),
                                        ),
                                        onTap: () {
                                          // Tambahkan logika ketika Option 1 dipilih
                                          Navigator.pop(context);
                                        },
                                      ),
                                      ListTile(
                                        leading: const Icon(
                                          Icons.thumb_up,
                                          color: Colors.black,
                                        ),
                                        title: const Text(
                                          'Dukung Developer',
                                          style: TextStyle(
                                              fontSize: 15,
                                              fontFamily: "SF UI Text",
                                              color: Colors.black),
                                        ),
                                        onTap: () {
                                          // Tambahkan logika ketika Option 1 dipilih
                                          Navigator.pop(context);
                                        },
                                      ),
                                      ListTile(
                                        leading: const Icon(
                                          Icons.help,
                                          color: Colors.black,
                                        ),
                                        title: const Text(
                                          'bantuan',
                                          style: TextStyle(
                                              fontSize: 15,
                                              fontFamily: "SF UI Text",
                                              color: Colors.black),
                                        ),
                                        onTap: () {
                                          // Tambahkan logika ketika Option 1 dipilih
                                          Navigator.pop(context);
                                        },
                                      ),
                                      ListTile(
                                        leading: const Icon(
                                          Icons.info,
                                          color: Colors.black,
                                        ),
                                        title: const Text(
                                          'Tentang Aplikasi',
                                          style: TextStyle(
                                              fontSize: 15,
                                              fontFamily: "SF UI Text",
                                              color: Colors.black),
                                        ),
                                        onTap: () {
                                          // Tambahkan logika ketika Option 1 dipilih
                                          Navigator.pop(context);
                                        },
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            },
                          );
                        },
                        child: const Padding(
                          padding: EdgeInsets.only(right: 20),
                          child: Image(
                            image: AssetImage("assets/Pause.png"),
                            width: 25,
                            height: 25,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                const Align(
                  alignment: Alignment.topCenter,
                  child: Padding(
                    padding: EdgeInsets.only(right: 20, left: 20),
                    child: Column(
                      children: [
                        TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: 'Masukkan teks di sini',
                          ),
                          maxLines: 6,
                        ),
                        SizedBox(height: 50),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
