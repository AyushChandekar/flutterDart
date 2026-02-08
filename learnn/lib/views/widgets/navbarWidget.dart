import 'package:flutter/material.dart';
import 'package:learnn/data/notifiers.dart';

class navbarWidget extends StatelessWidget {
  const navbarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: selectedPageNotifer,
      builder: (context, selectedPage, child) {
        return NavigationBar(
          destinations: [
            NavigationDestination(icon: Icon(Icons.home), label: "Home"),
            NavigationDestination(icon: Icon(Icons.place), label: "Location"),
            NavigationDestination(icon: Icon(Icons.person), label: "Profile"),
          ],
          onDestinationSelected: (int value) {
            selectedPageNotifer.value = value; 
          },
          selectedIndex: selectedPage,
        );
      },
    );
  }
}
