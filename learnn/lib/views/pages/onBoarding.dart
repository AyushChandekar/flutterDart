import 'package:flutter/material.dart';
import 'package:learnn/data/constant.dart';
import 'package:learnn/views/pages/loginPage.dart';
import 'package:lottie/lottie.dart';

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Lottie.asset("assets/lotties/Welcome.json",height:350.0),
              Text("Flutter Mapp is the way to learn flutter,period",style:KTextStyle.descriptionText),
              SizedBox(height: 15),
              FilledButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return LoginPage(title: "Register");
                        },
                      ),
                    );
                },
                child: Text("Next"),
                style: FilledButton.styleFrom(
                  minimumSize: Size(double.infinity, 45.0),
                  backgroundColor: const Color.fromARGB(255, 55, 136, 228),
                ),
              ),
              SizedBox(height: 50.0),
            ],
          ),
        ),
      ),
    );
  }
}
