import 'package:exercicio_quiz_app/answer_button.dart';
import 'package:exercicio_quiz_app/data/questions.dart';
import 'package:flutter/material.dart';

class QuestionsScreenWidget extends StatefulWidget {
  const QuestionsScreenWidget({super.key});

  @override
  State<QuestionsScreenWidget> createState() => _QuestionsScreenWidgetState();
}

class _QuestionsScreenWidgetState extends State<QuestionsScreenWidget> {
  @override
  Widget build(BuildContext context) {
    final questAtual = questions[0];

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              questAtual.text,
              style: const TextStyle(
                color: Colors.white,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 30,
            ),
            ...questAtual.respostas.map((resposta) {
              return AnswerButton(textoResposta: resposta, onTap: () {});
            })
          ],
        ),
      ),
    );
  }
}
