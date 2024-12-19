import 'package:flutter/material.dart';
import 'package:protfolio_ui_responsive/views/page_navigator.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Protfolio APP',
      color: Colors.white,
      theme: ThemeData(
        textTheme: TextTheme(
          bodyLarge: TextStyle(
              color: Colors.black,
              fontFamily: 'Heebo',
              fontWeight: FontWeight.normal),
          // Define other text styles as needed
        ),
        // Set other theme properties that might affect text styling
      ),
      // theme: ThemeData(
      //   colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      //   useMaterial3: true,
      // ),
      home: PageNavigator(),
    );
  }
}
