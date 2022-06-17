import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:perpus/provider/theme_provider.dart';
import 'package:perpus/pages/splash_page.dart';
import 'package:perpus/pages/welcome_page.dart';
import 'package:provider/provider.dart';

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
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ThemeNotifier()),
      ],
      child: Consumer<ThemeNotifier>(
          builder: (context, theme, child) => FutureBuilder(
            future: Init.instance.initialize(),
            builder: (context, AsyncSnapshot snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return MaterialApp(
                  home: const SplashPage(),
                  theme: theme.getTheme(),
                  debugShowCheckedModeBanner: false,
                );
              } else {
                return MaterialApp(
                  home: const WelcomePage(),
                  theme: theme.getTheme(),
                  debugShowCheckedModeBanner: false,
                );
              }
            },
          )),
    );
  }
}
