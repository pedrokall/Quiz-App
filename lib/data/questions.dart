import 'package:exercicio_quiz_app/models/quiz_question.dart';

final questions = [
  QuizQuestion(
    'Quais são os principais blocos de estrutura da UI do Flutter?',
    [
      'Widgets',
      'Componentes',
      'Blocks',
      'Funções',
    ],
  ),
  QuizQuestion(
    'Como as UIs do Flutter são construídas?',
    [
      'Combinando widgets no código',
      'Combinando widgets em um editor visual',
      'Definindo widgets em arquivos de configuração',
      'Usando XCode para iOS e Android Studio para Android',
    ],
  ),
  QuizQuestion(
    'Qual é o propósito de um StatefulWidget?',
    [
      'Atualizar a UI conforme os dados mudam',
      'Atualizar os dados conforme a UI muda',
      'Ignorar mudanças nos dados',
      'Renderizar uma UI que não depende dos dados',
    ],
  ),
  QuizQuestion(
    'Qual widget você deve tentar usar com mais frequência: StatelessWidget ou StatefulWidget?',
    [
      'StatelessWidget',
      'StatefulWidget',
      'Ambos são igualmente bons',
      'Nenhuma das opções acima',
    ],
  ),
  QuizQuestion(
    'O que acontece se você alterar dados em um StatelessWidget?',
    [
      'A UI não é atualizada',
      'A UI é atualizada',
      'O StatefulWidget mais próximo é atualizado',
      'Qualquer StatefulWidgets aninhados são atualizados',
    ],
  ),
  QuizQuestion(
    'Como você deve atualizar os dados dentro de StatefulWidgets?',
    [
      'Chamando setState()',
      'Chamando updateData()',
      'Chamando updateUI()',
      'Chamando updateState()',
    ],
  ),
];
