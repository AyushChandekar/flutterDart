import 'package:flutter/material.dart';
import 'package:learnn/views/pages/loginPage.dart';
import 'package:learnn/views/pages/onBoarding.dart';
import 'package:learnn/views/widgets/heroWidget.dart';
import 'package:lottie/lottie.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Lottie.asset('assets/lotties/EarthRotating.json', height: 200),
                FittedBox(child: heroWidget(title: "Flutter Map")),
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
                    Navigator.push(
                      //here instead of push we can also use pushreplacement which actually replaces the page instead of stacking it.
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return OnBoardingPage();
                        },
                      ),
                    );
                  },
                  child: Text('Get Started'),
                  style: FilledButton.styleFrom(
                    minimumSize: Size(double.infinity, 45.0),
                    backgroundColor: const Color.fromARGB(255, 55, 136, 228),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      //here instead of push we can also use pushreplacement which actually replaces the page instead of stacking it.
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return LoginPage(title: "Login",);
                        },
                      ),
                    );
                  },
                  child: Text("Login"),
                  style: FilledButton.styleFrom(
                    minimumSize: Size(double.infinity, 45.0),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
