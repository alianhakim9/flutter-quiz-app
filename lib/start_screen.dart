import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(ctx) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/quiz-logo.png',
          width: 200,
          color: const Color.fromARGB(155, 255, 255, 255),
        ),
        const SizedBox(
          height: 80,
        ),
        Text(
          'Learn Flutter the fun way!',
          style: GoogleFonts.lato(
            fontSize: 24,
            color: const Color.fromARGB(255, 201, 201, 201),
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        OutlinedButton.icon(
          onPressed: startQuiz,
          style: OutlinedButton.styleFrom(
            foregroundColor: Colors.white,
          ),
          icon: Icon(Icons.arrow_forward),
          iconAlignment: IconAlignment.start,
          label: const Text(
            'Start Quiz',
          ),
        ),
      ],
    );
  }
}

// Opacity(
//   opacity: .8,
//   child: Image.asset(
//     'assets/images/quiz-logo.png',
//     width: 200,
//   ),
// ), // NOT RECOMMENDED WAY
