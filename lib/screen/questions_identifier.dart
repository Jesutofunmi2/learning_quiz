import 'package:flutter/material.dart';

class QuestionsIdentifier extends StatelessWidget {
  const QuestionsIdentifier(
      {super.key, required this.isCorrect, required this.questionIndex});

  final bool isCorrect;
  final int questionIndex;

  @override
  Widget build(BuildContext context) {
    final questionNumber = questionIndex + 1;
    return Container(
      height: 30,
      width: 30,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: isCorrect
            ? const Color.fromARGB(255, 150, 198, 241)
            : const Color.fromARGB(255, 249, 133, 241),
        borderRadius: BorderRadius.circular(50)
      ),
      child: Text(
        questionNumber.toString(),
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          color: Color.fromARGB(255, 22, 2, 56),
        ),
      ),
    );
  }
}
