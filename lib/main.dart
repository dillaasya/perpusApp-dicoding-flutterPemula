import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:perpus/pages/splash_page.dart';
import 'package:perpus/pages/welcome_page.dart';

class Init {
  Init._();
  static final instance = Init._();

  Future initialize() async {
    await Future.delayed(const Duration(seconds: 3));
  }
}

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
      overlays: [SystemUiOverlay.bottom, SystemUiOverlay.top]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: Init.instance.initialize(),
      builder: (context, AsyncSnapshot snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const MaterialApp(home: SplashPage(),debugShowCheckedModeBanner: false,);
        } else {
          return const MaterialApp(
            home: WelcomePage(),
            debugShowCheckedModeBanner: false,
          );
        }
      },
    );
  }
}
