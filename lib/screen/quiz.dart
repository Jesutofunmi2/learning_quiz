import 'package:flutter/material.dart';
import 'package:game/data/questions.dart';
import 'package:game/screen/questions_screen.dart';
import 'package:game/screen/result_screen.dart';
import 'package:game/screen/start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
   List<String> selectedAnswer = [];
  Widget? activeScreen;

  void chooseAnswer(String answer) {
    selectedAnswer.add(answer);

    if(selectedAnswer.length == questions.length){
      setState(() {
        activeScreen =  ResultScreen(choseAnswer: selectedAnswer, onRestart: restartQuiz);
      });
    }
  }
  @override
  void initState() {
    activeScreen = StartScreen(startQuiz:switchScreen);
    super.initState();
  }

  void switchScreen() {
    setState(() {
      activeScreen =  QuestionsScreen(chooseAnswer: chooseAnswer);
    });
  }

  void restartQuiz(){
    setState(() {
      selectedAnswer = [];
      activeScreen = QuestionsScreen(chooseAnswer: chooseAnswer);
    });
  }



  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color.fromARGB(225, 78, 90, 155),
                  Color.fromARGB(225, 3, 7, 33)
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
            child: activeScreen),
      ),
    );
  }
}
