import 'package:flutter/material.dart';

import '../../../../../Core/utils/theme.dart';

class Question {
  String questionText;
  int? selectedAnswer;

  Question({required this.questionText});
}

// ignore: must_be_immutable
class AddQuestionCard extends StatelessWidget {
  final Question question;

  AddQuestionCard({super.key, required this.question});

  int? selectedAnswer;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: darkBlue,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            question.questionText,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          ...List.generate(3, (index) {
            return RadioListTile<int>(
              contentPadding: EdgeInsets.zero,
              value: index,
              groupValue: selectedAnswer,
              onChanged: (value) {
                // setState(() {
                //   selectedAnswer = value;
                // });
              },
              title: Text(
                'Answer ${index + 1}',
                style: const TextStyle(color: Colors.white),
              ),
              activeColor: Colors.white,
            );
          }),
        ],
      ),
    );
  }
}
