import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

//stateless
//material app  -this is theme of the app
//scaffold      - this is the skeleton of the app

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
      home: Scaffold(
        appBar: AppBar(
          title: Text('Massaging'),
          centerTitle: true,
          leading: Icon(
            Icons.menu,
            color: const Color.fromARGB(255, 0, 255, 110),
          ),
          actions: [Text('condo'), Icon(Icons.account_circle)],
          backgroundColor: Colors.teal,
        ),
        floatingActionButton: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            FloatingActionButton(
              onPressed: () {
                print('kasak');
              },
              child: Icon(Icons.add),
            ),
            SizedBox(height: 10.0),
            FloatingActionButton(
              onPressed: () {
                print('love');
              },
              child: Icon(Icons.add),
            ),
            SizedBox(height: 10.0),
            FloatingActionButton(
              onPressed: () {
                print('ayush');
              },
              child: Icon(Icons.add),
            ),
          ],
        ),
        bottomNavigationBar: NavigationBar(
          destinations: [
            NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
            NavigationDestination(icon: Icon(Icons.search), label: 'Search'),
            NavigationDestination(icon: Icon(Icons.person), label: 'Profile'),
          ],
          onDestinationSelected: (int value) {},
          selectedIndex: 2,
        ),
      ),
    );
  }
}
