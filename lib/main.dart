import 'package:ebtech_task/screens/post_screen/post_screen.dart';
import 'package:ebtech_task/shared/app_init.dart';
import 'package:flutter/material.dart';

void main() {
  AppInit.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        textTheme: TextTheme(
          bodyLarge: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          bodyMedium: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
          bodySmall: TextStyle(fontSize: 14, color: Colors.grey[600]),
          labelSmall: TextStyle(fontSize: 12, color: Colors.grey[600]),
        ),
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const PostScreen(),
    );
  }
}