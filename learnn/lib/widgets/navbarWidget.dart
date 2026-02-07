import 'package:flutter/material.dart';

class navbarWidget extends StatefulWidget {
  const navbarWidget({super.key});

  @override
  State<navbarWidget> createState() => _navbarWidgetState();
}

class _navbarWidgetState extends State<navbarWidget> {
  int currIndex = 0;
  @override
  Widget build(BuildContext context) {
    return NavigationBar(
      destinations: [
        NavigationDestination(icon: Icon(Icons.home), label: "Home"),
        NavigationDestination(icon: Icon(Icons.place), label: "Location"),
        NavigationDestination(icon: Icon(Icons.person), label: "Profile"),
      ],
      onDestinationSelected: (value) => {
        setState(() {
          currIndex = value;
        }),
      },
      selectedIndex: currIndex,
    );
  }
}
