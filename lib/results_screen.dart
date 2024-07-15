import 'package:exercicio_quiz_app/data/questions.dart';
import 'package:exercicio_quiz_app/questions_summary.dart';
import 'package:flutter/material.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen({
    super.key,
    required this.chosenAnswers,
  });

  final List<String> chosenAnswers;

  List<Map<String, Object>> getResumoDados() {
    final List<Map<String, Object>> resumo = [];

    for (var i = 0; i < chosenAnswers.length; i++) {
      resumo.add(
        {
          'question_index': i,
          'question': questions[i].text,
          'correct_answer': questions[i].respostas[0],
          'resposta_usuario': chosenAnswers[i],
        },
      );
    }

    return resumo;
  }

  @override
  Widget build(BuildContext context) {
    final summaryData = getResumoDados();
    final numTotalQuestions = questions.length;
    final numCorrectQuestions = summaryData.where((data) {
      return data['resposta_usuario'] == data['correct_answer'];
    }).length;

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Você respondeu x de '),
            const SizedBox(
              height: 30,
            ),
            QuestionsSummary(summaryData),
            const SizedBox(
              height: 30,
            ),
            TextButton(onPressed: () {}, child: Text('Reiniciar o Quiz!'))
          ],
        ),
      ),
    );
  }
}
