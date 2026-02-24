import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class profilePage extends StatefulWidget {
  const profilePage({super.key});

  @override
  State<profilePage> createState() => _profilePageState();
}

class _profilePageState extends State<profilePage> {
  TextEditingController controller = TextEditingController();
  bool? isChecked = false;
  bool? isCheckedw = false;
  bool isSwitched = false;
  double sliderValue = 0.0;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            TextField(
              controller: controller,
              decoration: InputDecoration(border: OutlineInputBorder()),
              onEditingComplete: () => setState(() {}),
            ),
            Text(controller.text),
            Checkbox(
              tristate: true,
              value: isCheckedw,
              onChanged: (bool? value) {
                setState(() {
                  isCheckedw = value;
                });
              },
            ),
            CheckboxListTile(
              tristate: true,
              title: Text("Click me"),
              value: isChecked,
              onChanged: (bool? value) {
                setState(() {
                  isChecked = value;
                });
              },
            ),
            Switch.adaptive(
              value: isSwitched,
              onChanged: (bool value) {
                setState(() {
                  isSwitched = value;
                });
              },
            ),
            SwitchListTile.adaptive(
              title: Text("this is switch"),
              value: isSwitched,
              onChanged: (bool value) {
                setState(() {
                  isSwitched = value;
                });
                print(isSwitched.toString());
              },
            ),
            Slider.adaptive(
              min: 0,
              max: 100,
              divisions: 10,
              value: sliderValue,
              onChanged: (double value) {
                setState(() {
                  sliderValue = value;
                });
                print(sliderValue);
              },
            ),
            Image.asset('assets/images/ezgif.com-effects.gif'),
            Image.asset('assets/images/pxfuel.jpg'),
      
          ],
        ),
      ),
    );
  }
}
