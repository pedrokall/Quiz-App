import 'package:flutter/material.dart';

class QuizStartScreen extends StatefulWidget {
  const QuizStartScreen({super.key});

  @override
  State<QuizStartScreen> createState() => _QuizStartScreenState();
}

class _QuizStartScreenState extends State<QuizStartScreen> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/quiz-logo.png',
            width: 300,
            color: const Color.fromARGB(180, 255, 255, 255),
          ),

          /* Alternativa válida, porém não otimizada:
          Opacity(
            opacity: 0.7,
            child: Image.asset(
              'assets/images/quiz-logo.png',
              width: 300,
            ),
          ), */

          const SizedBox(
            height: 80,
          ),
          const Text(
            'Aprenda Flutter de maneira divertida!',
            style: TextStyle(
                fontSize: 22, color: Color.fromARGB(255, 212, 190, 247)),
          ),
          const SizedBox(
            height: 30,
          ),
          OutlinedButton.icon(
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.white,
            ),
            onPressed: () {},
            icon: const Icon(Icons.arrow_right_alt),
            label: const Text(
              'Start Quiz',
              style: TextStyle(fontSize: 16),
            ),
          )
        ],
      ),
    );
  }
}
