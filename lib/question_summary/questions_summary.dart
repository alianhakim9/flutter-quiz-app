import 'package:adv_basics/question_summary/summary_item.dart';
import 'package:flutter/material.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary({
    super.key,
    required this.summaryData,
  });

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext ctx) {
    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
          spacing: 14,
          children: summaryData.map((data) {
            return SummaryItem(
              data: data,
              isCorrectAnswer: data['correct_answer'] == data['user_answer'],
            );
          }).toList(),
        ),
      ),
    );
  }
}
