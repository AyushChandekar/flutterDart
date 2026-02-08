import 'package:flutter/material.dart';

class profilePage extends StatefulWidget {
  const profilePage({super.key});

  @override
  State<profilePage> createState() => _profilePageState();
}

class _profilePageState extends State<profilePage> {
  TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          TextField(controller: controller,decoration: InputDecoration(border: OutlineInputBorder()),
          onEditingComplete: () {
            setState(() {
              
            });
          },),
          Text(controller.text),
        ],
      ),
    );
  }
}
