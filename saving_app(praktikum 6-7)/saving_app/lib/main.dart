import 'package:flutter/material.dart';
import 'package:saving_app/pages/main_pages.dart';

import 'pages/on_boarding_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Saving App',
        routes: {
          OnBoardingPage.nameRoute: (context) => const OnBoardingPage(),
          MainPage.nameRoute: (context) => const MainPage(),
        });
  }
}
