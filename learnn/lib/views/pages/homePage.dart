import 'package:flutter/material.dart';
import 'package:learnn/views/widgets/containerWidget.dart';
import 'package:learnn/views/widgets/heroWidget.dart';

class homePage extends StatelessWidget {
  const homePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            heroWidget(title: "Homie"),
        
            ContainerWidget(title: "Basic Layout",description: "this is a description",),
            ContainerWidget(title: "Normal Layout",description: "this is a description",),
            ContainerWidget(title: "Hardcore Layout",description: "this is a description",),
            ContainerWidget(title: "pro Layout",description: "this is a description",),
            ContainerWidget(title: "pro max Layout",description: "this is a description",),
            ContainerWidget(title: "ultra pro max Layout",description: "this is a description",),
          ],
        ),
      ),
    );
  }
}
