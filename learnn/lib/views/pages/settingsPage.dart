import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  TextEditingController controller = TextEditingController();
  bool? isChecked = false;
  bool? isCheckedw = false;
  bool isSwitched = false;
  double sliderValue = 0.0;
  String? menuItem;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
        leading: BackButton(
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        automaticallyImplyLeading:
            false, //this is turn off the back button but still we can go back using device back button
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              DropdownButton(
                value: menuItem,
                hint: Text("clikie"),
                items: [
                  DropdownMenuItem(child: Text("other1"), value: "other1"),
                  DropdownMenuItem(child: Text("other2"), value: "other2"),
                  DropdownMenuItem(child: Text("other3"), value: "other3"),
                ],
                onChanged: (String? value) {
                  setState(() {
                    menuItem = value;
                  });
                },
              ),
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
                title: Text("Click me 🥹"),
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

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  InkWell(
                    splashColor: const Color.fromARGB(255, 54, 212, 244),
                    onTap: () {
                      print('faultie boxie😗clicked bruh');
                    },
                    child: Container(
                      height: 100,
                      width: 100,

                      decoration: BoxDecoration(
                        // Replace color with decoration
                        color: const Color.fromARGB(31, 128, 105, 149),
                        borderRadius: BorderRadius.circular(12), // Add this
                      ),
                    ),
                  ),
                  //issued one ~ ^
                  Ink(
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(18, 128, 105, 149),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: InkWell(
                      splashColor: const Color.fromARGB(255, 111, 37, 222),
                      borderRadius: BorderRadius.circular(12),
                      onTap: () {
                        print('boxie😘clicked bruh');
                      },
                      child: Container(height: 100, width: 100),
                    ),
                  ),
                ],
              ),

              // fixed one ^
              GestureDetector(
                onTap: () {
                  print('giffie clicked bruh');
                },
                child: Image.asset('assets/images/ezgif.com-effects.gif'),
              ),

              Image.asset('assets/images/pxfuel.jpg'),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(174, 3, 137, 57),
                  foregroundColor: const Color.fromARGB(255, 255, 255, 255),
                  shadowColor: const Color.fromARGB(255, 246, 255, 0),
                ),
                child: Text("submit"),
              ),
              ElevatedButton(onPressed: () {}, child: Text("submit🧟‍♀️")),
              FilledButton(onPressed: () {}, child: Text("submit🤑")),
              TextButton(onPressed: () {}, child: Text("submit🕹️")),
              OutlinedButton(onPressed: () {}, child: Text("submit👆")),
              CloseButton(),
              IconButton(onPressed: () {}, icon: Icon(Icons.add)),
              BackButton(color: Colors.blue),
            ],
          ),
        ),
      ),
    );
  }
}
