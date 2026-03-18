// import 'dart:convert' as convert;
// import 'dart:developer';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:learnn/data/classes/activityClass.dart';
import 'package:learnn/views/pages/onBoarding.dart';
import 'package:learnn/views/widgets/heroWidget.dart';

class CoursePage extends StatefulWidget {
  const CoursePage({super.key});
  @override
  State<CoursePage> createState() => _CoursePageState();
}

class _CoursePageState extends State<CoursePage> {
  // late Activity
  // activity; //late means latter we will set this value and null for now
  @override
  void initState() {
    getData();
    super.initState();
  }

  Future getData() async {
    var url = Uri.https('bored-api.appbrewery.com', '/random');

    var response = await http.get(url);
    // if (response.statusCode == 200) {
    //   var jsonResponse =
    //       convert.jsonDecode(response.body) as Map<String, dynamic>;
    //   var itemCount = jsonResponse['activity'];
    //   print(itemCount);
    //   log(response.body);
    // } else {
    //   print('Request failed with status: ${response.statusCode}.');
    // }
    if (response.statusCode == 200) {
      // If the server did return a 200 OK response,
      // then parse the JSON.
      return Activity.fromJson(
        jsonDecode(response.body) as Map<String, dynamic>,
      );
      // print(activity.activity);
    } else {
      throw Exception('Failed to load album');
    }
  }

  // if the data is coming late from server through api and not present so,for this we'll use future builder
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: FutureBuilder(
        future: getData(),
        builder: (context, AsyncSnapshot snapshot) {
          Widget widgetie;
          // snapshot is used to check whether data is loading or has been loaded.
          // It shows a loading indicator first, then displays the data.
          if (snapshot.connectionState == ConnectionState.waiting) {
            widgetie = Center(child: CircularProgressIndicator());
          }
          if (snapshot.hasData) {
            Activity activitys = snapshot.data;
            widgetie = Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    heroWidget(
                      title: activitys.activity,
                      nextPage: OnBoardingPage(),
                    ),
                    SizedBox(height: 20),
                    Text("Type: ${activitys.activity}"),
                  ],
                ),
              ),
            );
          } else {
            widgetie = Center(child: Text("Error"));
          }
          return widgetie;
        },
      ),
    );
  }
}
