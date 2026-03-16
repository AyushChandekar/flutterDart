import 'package:flutter/material.dart';
import 'package:learnn/views/pages/onBoarding.dart';
import 'package:learnn/views/widgets/heroWidget.dart';

class CoursePage extends StatelessWidget {
  const CoursePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        child: SingleChildScrollView(
          child: Column(
            children: [heroWidget(title: "Course", nextPage: OnBoardingPage())],
          ),
        ),
      ),
    );
  }
}
