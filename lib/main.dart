import 'package:flutter/material.dart';
import 'package:flutter_application_2/pages/home_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: const HomePage(),
        theme: ThemeData(
          tabBarTheme: const TabBarTheme(indicatorColor: Colors.pink),
        ));
  }
}
