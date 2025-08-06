import 'package:adv_basics/question_summary/question_identifier.dart';
import 'package:flutter/material.dart';

class SummaryItem extends StatelessWidget {
  const SummaryItem({
    super.key,
    required this.data,
    required this.isCorrectAnswer,
  });

  final Map<String, Object> data;
  final bool isCorrectAnswer;

  @override
  Widget build(BuildContext ctx) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 22,
      children: [
        QuestionIdentifier(
          isCorrectAnswer: isCorrectAnswer,
          questionIndex: data['question_index'] as int,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                data['question'] as String,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                data['user_answer'] as String,
                style: TextStyle(
                  color: isCorrectAnswer
                      ? Colors.lightGreenAccent
                      : Colors.pink,
                ),
              ),
              Text(
                data['correct_answer'] as String,
                style: TextStyle(
                  color: Colors.lightGreenAccent,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
