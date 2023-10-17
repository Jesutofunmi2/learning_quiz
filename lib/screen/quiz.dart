import 'package:flutter/material.dart';
import 'package:game/screen/questions_screen.dart';
import 'package:game/screen/start_screen.dart';


class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {

  Widget? activeScreen;

  @override
  void initState() {
   activeScreen  =  StartScreen(switchScreen);
    super.initState();
  }
  void switchScreen(){
    setState(() {
      activeScreen = const QuestionsScreen();
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
                  Color.fromARGB(225, 80, 90, 168)
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
            child: activeScreen
        ),
      ),
    );
  }
}
