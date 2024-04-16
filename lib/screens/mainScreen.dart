import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: MainScreen(),
  ));
}

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

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
                            "OICE Siap\nMenghitung.",
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            "Coba Katakan “Halo Oice..” lalu dilanjutkan dengan \nperintah anda",
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                      GestureDetector(
                        onTap: () {
                          showModalBottomSheet(
                            context: context,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)
                            ),
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
                                      const SizedBox(height: 5),
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
                                          'Ganti Mode Kalkulator Tradisional',
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
                Align(
                  alignment: Alignment.topCenter,
                  child: Padding(
                    padding: const EdgeInsets.only(right: 20, left: 20),
                    child: Column(
                      children: [
                        const TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: 'Masukkan teks di sini',
                          ),
                          maxLines: 6,
                        ),
                        const SizedBox(height: 50),
                        Padding(
                          padding: const EdgeInsets.only(left: 20, right: 20),
                          child: Container(
                            height: 2.0,
                            color: Colors.grey,
                          ),
                        ),
                        const SizedBox(height: 50),
                        GestureDetector(
                          onTap: () {
                            // Tambahkan logika ketika tombol ditekan
                          },
                          child: Container(
                            width: 187,
                            height: 187,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey,
                                  blurRadius: 8,
                                  offset: Offset(0, 4),
                                  spreadRadius: 2,
                                ),
                              ],
                            ),
                            child: Center(
                              child: Image.asset(
                                'assets/Microphone.png',
                                width: 75,
                                height: 75,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 40),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                              width: 35,
                              height: 21,
                              child: FittedBox(
                                child: Switch(
                                  value: true,
                                  onChanged: (bool newValue) {
                                    // Tambahkan logika ketika switch berubah
                                  },
                                  activeColor: Colors.grey,
                                  inactiveThumbColor: Colors.grey,
                                  activeTrackColor: const Color(0xFF8F1EE9),
                                  inactiveTrackColor: Colors.grey,
                                ),
                              ),
                            ),
                            const Text(
                              'Aktifkan fitur Jawaban Suara',
                              style: TextStyle(
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
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
