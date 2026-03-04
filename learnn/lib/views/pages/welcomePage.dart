import 'package:flutter/material.dart';
import 'package:learnn/views/widgetTree.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(
                'assets/images/68747470733a2f2f6d656469612e74656e6f722e636f6d2f336254785a34486472797341414141642f706978656c732d6e656f6e2e676966.gif',
                fit: BoxFit.cover,
                height: 300,
              ),
            ),
            FilledButton(onPressed: () {
                Navigator.pushReplacement( //here instead of push we can also use pushreplacement which actually replaces the page instead of stacking it.
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return widgetTree();
                  },
                ),
              );
            }, child: Text('Login')),
          ],
        ),
      ),
    );
  }
}
