import 'package:flutter/material.dart';
import 'package:quiz_app/gen/assets.gen.dart';
import 'package:quiz_app/question.dart';

import 'start_screen.dart';

class Qiuz extends StatefulWidget {
  const Qiuz({super.key});

  @override
  State<Qiuz> createState() => _QiuzState();
}

class _QiuzState extends State<Qiuz> {
  var activeScreen = 'start-screen';

  void switchScreen() {
    setState(() {
      activeScreen = 'question-screen';
    });
  }

  @override
  Widget build(context) {
    Widget screenWidget = StartScreen(switchScreen);

    if (activeScreen == 'question-screen') {
      screenWidget = const QuestionScreen();
    }

    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(Assets.images.backgroundImage.path),
              fit: BoxFit.cover,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(20, 50, 20, 50),
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(
                  // color: const Color.fromARGB(26, 31, 31, 41),
                  color: Colors.transparent,
                  width: 2.0,
                ),
                borderRadius: BorderRadius.circular(5),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(1),
                    spreadRadius: 5,
                    blurRadius: 50,
                    offset: const Offset(0, 0),
                  ),
                ],
                gradient: const LinearGradient(
                  colors: [
                    Color(0xfff0f0f5),
                    Color.fromARGB(207, 240, 240, 245)
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
              child: screenWidget,
            ),
          ),
        ),
      ),
    );
  }
}
