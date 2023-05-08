import 'package:first_app/contstants.dart';
import 'package:first_app/screens/home/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    Map<int, Color> color = {
      50: Color(0xFF0C9869),
      100: Color(0xFF0C9869),
      200: Color(0xFF0C9869),
      300: Color(0xFF0C9869),
      400: Color(0xFF0C9869),
      500: Color(0xFF0C9869),
      600: Color(0xFF0C9869),
      700: Color(0xFF0C9869),
      800: Color(0xFF0C9869),
      900: Color(0xFF0C9869),
    };

    return MaterialApp(
      title: 'Flutter demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: kPrimaryColor,
        textTheme: Theme.of(context).textTheme.apply(bodyColor: kTextColor),
        visualDensity: VisualDensity.adaptivePlatformDensity,
        primarySwatch: MaterialColor(0xFF0C9869, color),
        scaffoldBackgroundColor: kBackgroundColor,
      ),
      home: const HomeScreen(),
    );
  }
}
