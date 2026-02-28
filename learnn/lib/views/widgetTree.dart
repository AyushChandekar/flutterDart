import 'package:flutter/material.dart';
import 'package:learnn/data/notifiers.dart';
import 'package:learnn/views/pages/homePage.dart';
import 'package:learnn/views/pages/locationPage.dart';
import 'package:learnn/views/pages/profilePage.dart';
import 'package:learnn/views/pages/settingsPage.dart';
import 'package:learnn/views/widgets/navbarWidget.dart';

List<Widget> pages = [homePage(), locationPage(), ProfilePage()];

class widgetTree extends StatelessWidget {
  const widgetTree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // leading: BackButton(
        //   onPressed: () {
        //     Navigator.pop(context);  // this will crash the app cause there is no page before this 
        //   },
        // ),
        title: Text("Holly Meal"),
        actions: [
          IconButton(
            onPressed: () {
              isDarkModeNotifier.value = !isDarkModeNotifier.value;
            },
            icon: ValueListenableBuilder(
              valueListenable: isDarkModeNotifier,
              builder: (context, isDarkMode, child) {
                return Icon(isDarkMode ? Icons.light_mode : Icons.dark_mode);
              },
            ),
          ),
          IconButton(
            onPressed: () {
              Navigator.push( //here instead of push we can also use pushreplacement which actually replaces the page instead of stacking it.
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return SettingsPage();
                  },
                ),
              );
            },
            icon: Icon(Icons.settings),
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
