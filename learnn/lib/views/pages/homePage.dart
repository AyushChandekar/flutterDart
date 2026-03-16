import 'package:flutter/material.dart';
import 'package:learnn/data/constant.dart';
import 'package:learnn/views/pages/coursePage.dart';
import 'package:learnn/views/widgets/containerWidget.dart';
import 'package:learnn/views/widgets/heroWidget.dart';

class homePage extends StatelessWidget {
  const homePage({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> list = [
      KValue.basicLayout,
      KValue.cleanUI,
      KValue.fixBugs,
      KValue.keyConcepts,
    ];
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 10.0,),
            heroWidget(title: "Homie",nextPage:CoursePage()),
            SizedBox(height: 10.0,),
            ContainerWidget(
              title: "Basic Layout",
              description: "this is a description",
            ),
            ContainerWidget(
              title: "Normal Layout",
              description: "this is a description",
            ),
            ContainerWidget(
              title: "Hardcore Layout",
              description: "this is a description",
            ),
            ContainerWidget(
              title: "pro Layout",
              description: "this is a description",
            ),
            ContainerWidget(
              title: "pro max Layout",
              description: "this is a description",
            ),

            // List.generate(4, (index) {
            //   return ContainerWidget(
            //     title: "ultra pro max Layout",         it has list of 4 widgets at one go that why it creates error
            //     description: "this is a description",  we can use ... and then List ... will say that it contains the
            //   );                                         list of widgets and render it
            // }),

            // one way to implement this:
            // Column(
            //   children: List.generate(4, (index) {
            //     return ContainerWidget(
            //       title: "ultra pro max Layout",
            //       description: "this is a description",
            //     );
            //   }),
            // ),

            // another way to implement this:
            ...List.generate(4, (index) {
              return ContainerWidget(
                title: list.elementAt(index),
                description: "this is a description",
              );
            }),
          ],
        ),
      ),
    );
  }
}
