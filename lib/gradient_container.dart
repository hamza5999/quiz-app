import 'package:flutter/material.dart';
import 'package:quiz_app/styled_text.dart';

const beginAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  final Color color1;
  final Color color2;

  const GradientContainer(this.color1, this.color2, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            begin: beginAlignment,
            end: endAlignment,
            colors: [color1, color2]),
      ),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              "assets/images/quiz-logo.png",
              width: 250,
            ),
            const SizedBox(height: 70),
            const StyledText("Learn Flutter the fun way!"),
          ],
        ),
      ),
    );
  }
}
