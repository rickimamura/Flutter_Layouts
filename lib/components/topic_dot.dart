import 'package:flutter/material.dart';
import 'package:alubank/components/color_dot.dart';

class TopicDot extends StatelessWidget {
  final Color? color;
  final String label;

  const TopicDot({Key? key, this.color, required this.label}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 4.0),
          child: ColorDot(
            color: color,
          ),
        ),
        Text(label),
      ],
    );
  }
}