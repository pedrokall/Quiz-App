import 'package:flutter/material.dart';

class QuestionsScreenWidget extends StatefulWidget {
  const QuestionsScreenWidget({super.key});

  @override
  State<QuestionsScreenWidget> createState() => _QuestionsScreenWidgetState();
}

class _QuestionsScreenWidgetState extends State<QuestionsScreenWidget> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          OutlinedButton.icon(
            onPressed: () {},
            label: Text('teste1'),
          ),
          OutlinedButton.icon(
            onPressed: () {},
            label: Text('teste2'),
          ),
          OutlinedButton.icon(
            onPressed: () {},
            label: Text('teste3'),
          ),
          OutlinedButton.icon(
            onPressed: () {},
            label: Text('teste4'),
          ),
        ],
      ),
    );
  }
}
