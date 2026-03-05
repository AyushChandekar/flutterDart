import 'package:flutter/material.dart';
import 'package:learnn/views/widgetTree.dart';
import 'package:learnn/views/widgets/heroWidget.dart';
import 'package:lottie/lottie.dart';

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
            Lottie.asset('assets/lotties/EarthRotating.json', height: 200),
            FittedBox(child: heroWidget()),
            FittedBox(
              child: Text(
                'Flutter Map',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 40.0,
                  letterSpacing: 5.0,
                ),
              ),
            ),
            FilledButton(
              onPressed: () {
                Navigator.pushReplacement(
                  //here instead of push we can also use pushreplacement which actually replaces the page instead of stacking it.
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return widgetTree();
                    },
                  ),
                );
              },
              child: Text('Login'),
              style: FilledButton.styleFrom(
                minimumSize: Size(double.infinity, 45.0),
                backgroundColor: const Color.fromARGB(255, 55, 136, 228),
              ),
            ),
            TextButton(
              onPressed: () {
                Navigator.pushReplacement(
                  //here instead of push we can also use pushreplacement which actually replaces the page instead of stacking it.
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return widgetTree();
                    },
                  ),
                );
              },
              child: Text("Sign In"),
              style: FilledButton.styleFrom(
                minimumSize: Size(double.infinity, 45.0),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
