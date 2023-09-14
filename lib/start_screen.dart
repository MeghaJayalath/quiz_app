import 'package:flutter/material.dart';
import 'package:quiz_app/gen/assets.gen.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            width: 300,
            child: ColorFiltered(
              colorFilter: const ColorFilter.mode(
                Color(0xff1F1F29),
                BlendMode.srcIn,
              ),
              child: Assets.images.quizLogo.image(),
            ),
          ),
          const SizedBox(
            height: 80,
          ),
          const Text(
            'Learn flutter in the fun way',
            style: TextStyle(color: Color(0xff1F1F29), fontSize: 24),
          ),
          const SizedBox(
            height: 30,
          ),
          SizedBox(
            height: 50,
            width: 150,
            child: OutlinedButton.icon(
              style: OutlinedButton.styleFrom(
                foregroundColor: const Color(0xff1F1F29),
                side: const BorderSide(color: Color(0xff1F1F29), width: 2),
              ),
              label: const Text(
                'Start Quiz',
                style: TextStyle(fontSize: 15),
              ),
              icon: const Icon(
                Icons.arrow_circle_right_outlined,
                color: Color(0xff1F1F29),
              ),
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }
}
