import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QuizStartScreen extends StatelessWidget {
  const QuizStartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/quiz-logo.png',
            width: 300,
            color: const Color.fromARGB(190, 255, 255, 255),
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
          Text(
            'Aprenda Flutter de maneira divertida!',
            style: GoogleFonts.montserrat(
              fontSize: 21,
              color: const Color.fromARGB(255, 225, 213, 243),
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 30,
          ),
          OutlinedButton.icon(
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.white,
            ),
            onPressed: startQuiz,
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
