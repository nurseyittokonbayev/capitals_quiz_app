import 'package:capitals_app/components/appbar_title_widget.dart';
import 'package:capitals_app/components/variant_widget.dart';
import 'package:capitals_app/models/questions.dart';
import 'package:capitals_app/pages/start_page.dart';
import 'package:flutter/material.dart';

import '../components/slider_widget.dart';

class TestPage extends StatefulWidget {
  const TestPage({Key? key, required this.questions}) : super(key: key);

  final List<Questions> questions;

  @override
  State<TestPage> createState() => _TestPageState();
}

class _TestPageState extends State<TestPage> {
  int index = 0;
  int correctAnswer = 0;
  int wrongAnswer = 0;
  int lives = 3;

  void checkAnswer(bool isTrue) async {
    await Future.delayed(const Duration(seconds: 1));
    setState(() {
      if (isTrue) {
        correctAnswer++;
      } else {
        wrongAnswer++;
        lives--;
      }
    });

    if (index + 1 == widget.questions.length || lives == 0) {
      // ignore: use_build_context_synchronously
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            backgroundColor: Colors.white,
            title: const Text('Тест завершен'),
            content: Text(
              'Правильные ответы: $correctAnswer\nНеправильные ответы: $wrongAnswer',
            ),
            actions: [
              Row(
                children: [
                  TextButton(
                    onPressed: () => Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const StartPage()),
                      (route) => false,
                    ),
                    child: const Text('На главную'),
                  ),
                  TextButton(
                    onPressed: () {
                      resetQuiz();
                      Navigator.of(context).pop();
                    },
                    child: const Text('Начать заново'),
                  ),
                ],
              ),
            ],
          );
        },
      );
    } else {
      setState(() {
        index++;
      });
    }
  }

  void resetQuiz() {
    setState(() {
      lives = 3;
      index = 0;
      correctAnswer = 0;
      wrongAnswer = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: AppBarTitleWidget(
          questionsLength: index + 1,
          correctAnswer: correctAnswer,
          wrongAnswer: wrongAnswer,
          lives: lives,
          continetQuestionLength: widget.questions.length,
        ),
      ),
      body: Column(
        children: [
          SliderWidget(
            continetQuestionLength: widget.questions.length,
            value: index,
          ),
          const SizedBox(height: 30),
          Text(
            widget.questions[index].text,
            style: const TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.w500,
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: SizedBox(
                width: double.infinity,
                child: Image.asset(
                  'assets/images/${widget.questions[index].image}',
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          VariantWidget(
            answer: widget.questions[index].answers,
            onTap: checkAnswer,
          ),
        ],
      ),
    );
  }
}
