import 'package:flutter/material.dart';

class heroWidget extends StatelessWidget {
  const heroWidget({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Hero(
          tag: 'tony',
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.asset(
              'assets/images/68747470733a2f2f6d656469612e74656e6f722e636f6d2f336254785a34486472797341414141642f706978656c732d6e656f6e2e676966.gif',
              fit: BoxFit.cover,
              height: 250,
              color: const Color.fromARGB(202, 194, 198, 2),
              colorBlendMode: BlendMode.overlay,
            ),
          ),
        ),
        FittedBox(
          child: Text(
            title,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 45.0,
              letterSpacing: 8.0,
              color: Colors.white60,
            ),
          ),
        ),
      ],
    );
  }
}
