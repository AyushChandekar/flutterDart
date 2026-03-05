import 'package:flutter/material.dart';
import 'package:learnn/views/widgetTree.dart';
import 'package:learnn/views/widgets/heroWidget.dart';

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
            heroWidget(),
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
