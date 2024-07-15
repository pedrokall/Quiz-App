import 'package:exercicio_quiz_app/answer_button.dart';
import 'package:exercicio_quiz_app/data/questions.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionsScreenWidget extends StatefulWidget {
  const QuestionsScreenWidget({
    super.key,
    required this.aoSelecionarResposta,
  });

  final void Function(String resposta) aoSelecionarResposta;

  @override
  State<QuestionsScreenWidget> createState() => _QuestionsScreenWidgetState();
}

class _QuestionsScreenWidgetState extends State<QuestionsScreenWidget> {
  var questaoAtualIndex = 0;

  void responderQuestao(String respostaSelecionada) {
    widget.aoSelecionarResposta(respostaSelecionada);
    setState(() {
      questaoAtualIndex++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final questAtual = questions[questaoAtualIndex];

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
              style: GoogleFonts.lato(
                  color: const Color.fromARGB(255, 234, 189, 246),
                  fontSize: 24,
                  fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 30,
            ),
            ...questAtual.getRespostasEmbaralhadas().map((resposta) {
              return AnswerButton(
                textoResposta: resposta,
                onTap: () {
                  responderQuestao(resposta);
                },
              );
            })
          ],
        ),
      ),
    );
  }
}
