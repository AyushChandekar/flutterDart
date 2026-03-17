import 'package:flutter/material.dart';
import 'package:learnn/views/widgetTree.dart';
import 'package:lottie/lottie.dart';

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
    double widthScreen = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: LayoutBuilder(
              builder: (context,BoxConstraints constraints) {
                return FractionallySizedBox(
                  // widthFactor: constraints.maxWidth > 500 ? 0.5:1.0,  this will also work 
                  widthFactor: widthScreen > 500 ? 0.5:1.0, //this is another way to do same thing
                  
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Lottie.asset("assets/lotties/Home.json", height: 400.0),
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
                          backgroundColor: const Color.fromARGB(
                            255,
                            55,
                            136,
                            228,
                          ),
                        ),
                      ),
                      SizedBox(height: 50.0),
                    ],
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }

  void onLoginPressed() {
    if (confirmedEmail == controllerEmail.text &&
        confirmedPassword == controllerPassword.text) {
      Navigator.pushAndRemoveUntil(
        //here instead of push we can also use pushreplacement which actually replaces the page instead of stacking it.
        context,
        MaterialPageRoute(
          builder: (context) {
            return widgetTree();
          },
        ),
        (route) => false,
      );
    }
  }
}
