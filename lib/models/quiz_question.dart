class QuizQuestion {
  QuizQuestion(this.text, this.respostas);

  final String text;
  final List<String> respostas;

  List<String> getRespostasEmbaralhadas() {
    final listaEmbaralhada = List.of(respostas);
    listaEmbaralhada.shuffle();
    
    return listaEmbaralhada;
  }
}
