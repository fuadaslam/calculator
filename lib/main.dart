import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:calculator/constants.dart';
import 'package:calculator/screens/home_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

  runApp(LightCalculator());
}

class LightCalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: kTitle,
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xFF22252D),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomeScreen(),
    );
  }
}
