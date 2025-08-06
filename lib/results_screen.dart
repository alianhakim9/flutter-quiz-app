import 'package:adv_basics/question_summary/questions_summary.dart';
import 'package:flutter/material.dart';

import 'package:adv_basics/data/questions.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen(
    this.onRestart, {
    super.key,
    required this.choosenAnswers,
  });

  final List<String> choosenAnswers;

  final void Function() onRestart;

  // getter
  List<Map<String, Object>> get summaryData {
    final List<Map<String, Object>> summary = [];

    for (var i = 0; i < choosenAnswers.length; i++) {
      summary.add({
        'question_index': i,
        'question': questions[i].text,
        'correct_answer': questions[i].answers[0],
        'user_answer': choosenAnswers[i],
      });
    }

    return summary;
  }

  @override
  Widget build(BuildContext ctx) {
    final numTotalQuestions = questions.length;
    final numCorrectQuestions = summaryData
        .where((data) => data['user_answer'] == data['correct_answer'])
        .length;

    return Container(
      margin: const EdgeInsets.all(40),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'You answered $numCorrectQuestions out of $numTotalQuestions questions correctly!',
            style: const TextStyle(
              color: Color.fromARGB(190, 255, 255, 255),
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 30,
          ),
          QuestionsSummary(
            summaryData: summaryData,
          ),
          const SizedBox(
            height: 30,
          ),
          TextButton.icon(
            onPressed: onRestart,
            style: TextButton.styleFrom(
              foregroundColor: Colors.white,
            ),
            icon: Icon(
              Icons.restart_alt,
            ),
            label: Text('Restart Quiz!'),
          ),
        ],
      ),
    );
  }
}
