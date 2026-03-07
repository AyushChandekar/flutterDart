import 'package:flutter/material.dart';
import 'package:learnn/views/widgetTree.dart';
import 'package:learnn/views/widgets/heroWidget.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key, required this.title});

  final String title;
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController controllerEmail = TextEditingController(text: '123');
  TextEditingController controllerPassword = TextEditingController(text: '456');
  String confirmedEmail = "123";
  String confirmedPassword = "456";
  @override
  void initState() {
    // TODO: implement initState
    print("initState");
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    controllerEmail.dispose();
    controllerPassword.dispose();
    super.dispose();
  }

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
              heroWidget(title: widget.title),
              SizedBox(height: 20),
              TextField(
                controller: controllerEmail,
                decoration: InputDecoration(
                  hint: Text("Enter Email"),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                onEditingComplete: () => setState(() {}),
              ),
              SizedBox(height: 10),
              TextField(
                controller: controllerPassword,
                decoration: InputDecoration(
                  hint: Text("Enter Password"),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                onEditingComplete: () => setState(() {}),
              ),
              SizedBox(height: 20),
              FilledButton(
                onPressed: () {
                  onLoginPressed();
                },
                child: Text(widget.title),
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

  void onLoginPressed() {
    if (confirmedEmail == controllerEmail.text &&
        confirmedPassword == controllerPassword.text) {
      Navigator.pushReplacement(
        //here instead of push we can also use pushreplacement which actually replaces the page instead of stacking it.
        context,
        MaterialPageRoute(
          builder: (context) {
            return widgetTree();
          },
        ),
      );
    }
  }
}
