import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

//stateful  -'this can refresh the screen'
//stateless  -'this cann't refresh the screen'
//setstate  -'this is to refresh the screen'

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.teal,
          brightness: Brightness.dark,
        ),
      ),
      home: myHomePage(),
    );
  }
}

class myHomePage extends StatefulWidget {
  const myHomePage({super.key});

  @override
  State<myHomePage> createState() => _myHomePageState();
}

class _myHomePageState extends State<myHomePage> {
  //here
  @override
  //here
  int currIndex = 0;
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('meal'), centerTitle: true),
      body: currIndex == 0
          ? Center(child: Text('Home Page'))
          : Center(child: Text('Profile Page')),
      bottomNavigationBar: NavigationBar(
        destinations: [
          NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
          NavigationDestination(icon: Icon(Icons.search), label: 'Search'),
          NavigationDestination(icon: Icon(Icons.person), label: 'Profile'),
        ],
        onDestinationSelected: (int value) {
          setState(() {
            currIndex = value;
          });
        },
        selectedIndex: currIndex,
      ),
    );
  }
}
