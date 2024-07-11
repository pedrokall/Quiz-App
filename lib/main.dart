import 'package:exercicio_quiz_app/quiz_start_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: AlignmentDirectional.topStart,
                end: AlignmentDirectional.bottomEnd,
                colors: [
                  Color.fromARGB(255, 90, 7, 104),
                  Color.fromARGB(255, 14, 33, 141),
                ],
              ),
            ),
            child: const QuizStartScreen()),
      ),
    );
  }
}
