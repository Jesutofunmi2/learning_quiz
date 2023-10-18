import 'package:flutter/material.dart';
import 'package:game/screen/questions_identifier.dart';
import 'package:google_fonts/google_fonts.dart';

class SummaryItem extends StatelessWidget {
  const SummaryItem(this.itemData, {super.key});

  final Map<String, Object> itemData;

  @override
  Widget build(BuildContext context) {

    final correct = itemData['user_answer'] == itemData['correct_answer'];
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        QuestionsIdentifier(isCorrect: correct, questionIndex: itemData['question_index'] as int),
        const SizedBox(width: 20,),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                itemData['question'] as String,
                style: GoogleFonts.lato(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 16),
                textAlign: TextAlign.start,
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                itemData['correct_answer'] as String,
                style: GoogleFonts.lato(
                    color: const Color.fromARGB(255, 150, 198, 241),
                    fontWeight: FontWeight.bold,
                    fontSize: 12),
                textAlign: TextAlign.start,
              ),
              const SizedBox(
                height: 2,
              ),
              Text(
                itemData['user_answer'] as String,
                style: GoogleFonts.lato(
                    color: const Color.fromARGB(255, 249, 133, 241),
                    fontWeight: FontWeight.bold,
                    fontSize: 12),
                textAlign: TextAlign.start,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
