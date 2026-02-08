import 'package:flutter/material.dart';
import 'package:learnn/data/notifiers.dart';
import 'package:learnn/views/pages/homePage.dart';
import 'package:learnn/views/pages/locationPage.dart';
import 'package:learnn/views/pages/profilePage.dart';
import 'package:learnn/views/widgets/navbarWidget.dart';

List<Widget> pages = [homePage(), locationPage(), profilePage()];

class widgetTree extends StatelessWidget {
  const widgetTree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Holly Meal"),
        actions: [
          IconButton(
            onPressed: () {
              isDarkModeNotifier.value = !isDarkModeNotifier.value; 
            },
            icon: ValueListenableBuilder(
              valueListenable: isDarkModeNotifier,
              builder: (context, isDarkMode, child) {
                return Icon(
                  isDarkMode? Icons.light_mode: Icons.dark_mode,);
              },
            ),
          ),
        ],
      ),
      body: ValueListenableBuilder(
        valueListenable: selectedPageNotifer,
        builder: (context, selectedPage, child) {
          return pages.elementAt(selectedPage);
        },
      ),
      bottomNavigationBar: navbarWidget(),
    );
  }
}
