import 'package:flutter/material.dart';
import 'package:learnn/data/notifiers.dart';
import 'package:learnn/views/pages/welcomePage.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20.0),
      child: Column(
        children: [
          ListTile(
            title: Text("Logout"),
            onTap: () {
              selectedPageNotifer.value = 0;  //this will make sure, after logout relogin should redirect to the page 0 not on which the logout btn is present
              Navigator.pushReplacement(
                //here instead of push we can also use pushreplacement which actually replaces the page instead of stacking it.
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return WelcomePage();
                  },
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
