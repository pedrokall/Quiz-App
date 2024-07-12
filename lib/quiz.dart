import 'package:exercicio_quiz_app/questions_screen_widget.dart';
import 'package:exercicio_quiz_app/quiz_start_screen.dart';
import 'package:flutter/material.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  Widget? activeScreen;

  @override
  void initState() {
    activeScreen = QuizStartScreen(switchScreen);
    super.initState();
  }

  void switchScreen() {
    setState(() {
      activeScreen = const QuestionsScreenWidget();
    });
  }

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
          child: activeScreen,
        ),
      ),
    );
  }
}
