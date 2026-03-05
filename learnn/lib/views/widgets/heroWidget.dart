import 'package:flutter/material.dart';

class heroWidget extends StatelessWidget {
  const heroWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag:'tony',
      child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(
                  'assets/images/68747470733a2f2f6d656469612e74656e6f722e636f6d2f336254785a34486472797341414141642f706978656c732d6e656f6e2e676966.gif',
                  fit: BoxFit.cover,
                  height: 300,
                  color: Colors.teal,
                  colorBlendMode: BlendMode.darken,
                ),
              ),
    );
  }
}