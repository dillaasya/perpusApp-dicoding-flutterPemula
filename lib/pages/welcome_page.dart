import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:perpus/pages/home_page.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Flexible(
                  child: Image.asset('assets/images/undraw_reading_0re1.png')),
              SizedBox(
                height: 60,
              ),
              Text(
                'Membaca buku dengan Mudah',
                style: GoogleFonts.poppins(fontSize: 20),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Baca cerita favoritmu hanya dengan satu genggaman',
                style: GoogleFonts.poppins(fontSize: 14),
                textAlign: TextAlign.center,
              )
            ],
          ),
        ),
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => HomePage(),
            ),
          );
        },
        backgroundColor: Color(0xffEF8E06),
        child: Icon(Icons.arrow_forward_rounded),
      ),
    );
  }
}
