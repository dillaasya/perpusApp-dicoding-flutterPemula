import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:perpus/pages/home_page.dart';
import 'package:introduction_screen/introduction_screen.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => SafeArea(
    child: IntroductionScreen(
      pages: [
        PageViewModel(
          title: 'Membaca buku dengan Mudah',
          body: 'Baca cerita favoritmu hanya dengan satu genggaman',
          image: buildImage('assets/images/landing_page_1.png'),
          decoration: getPageDecoration(),
        ),
        PageViewModel(
          title: 'Baca buku yang sesuai dengan mood kamu',
          body: 'Tersedia ratusan novel dengan berbagai genre yang tersedia',
          image: buildImage('assets/images/landing_page_2.png'),
          decoration: getPageDecoration(),
        ),
        PageViewModel(
          title: 'Bisa lanjut kapan saja',
          body: 'Simpan koleksi buku pada halaman profil pengguna',
          image: buildImage('assets/images/landing_page_3.png'),
          decoration: getPageDecoration(),
        ),
      ],
      done: const Icon(
        Icons.arrow_forward,
        size: 24,
        color: Color(0xffEF8E06),
      ),
      onDone: () => goToHome(context),
      showSkipButton: true,
      skip: Text(
        'Skip',
        style: GoogleFonts.inter(fontSize: 16, color: const Color(0xff4B5563), fontWeight: FontWeight.w400),
      ),
      onSkip: () => goToHome(context),
      next: const Icon(
        Icons.arrow_forward,
        size: 24,
        color: Color(0xffEF8E06),
      ),
      dotsDecorator: getDotDecoration(),
      onChange: (index) => debugPrint('Page $index selected'),
      dotsFlex: 0,
      nextFlex: 1,
      skipOrBackFlex: 1,
    ),
  );

  void goToHome(context) => Navigator.of(context).push(
    MaterialPageRoute(builder: (_) => const HomePage()),
  );

  Widget buildImage(String path) =>
      Center(child: Image.asset(path, width: 250));

  DotsDecorator getDotDecoration() => DotsDecorator(
    color: const Color(0xFFBDBDBD),
    activeColor: const Color(0xffEF8E06),
    size: const Size(10, 10),
    activeSize: const Size(22, 10),
    activeShape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(24),
    ),
  );

  PageDecoration getPageDecoration() => PageDecoration(
    titleTextStyle: const TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w600,
        fontFamily: 'Poppins',),
    bodyTextStyle: const TextStyle(fontSize: 14, fontFamily: 'Poppins', fontWeight: FontWeight.w400,),
    bodyPadding: const EdgeInsets.all(16).copyWith(bottom: 0),
    imagePadding: const EdgeInsets.only(top: 100, left: 24, right: 24),
    //pageColor: Colors.white,
  );
}
