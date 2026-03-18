import 'package:flutter/material.dart';

class ExpandableFlexiblePage extends StatelessWidget {
  const ExpandableFlexiblePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Row(
            children: [
              Expanded(
                flex: 4,
                child: Container(color: Colors.pinkAccent, height: 20.0),
              ),
              Expanded(
                flex: 2,
                child: Container(color: Colors.blueAccent, height: 20.0),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                flex: 4,
                child: Container(
                  color: Colors.amberAccent,
                  height: 20.0,
                  child: Text("Hwlo"),
                ),
              ),
              Flexible(
                flex: 2,
                child: Container(
                  color: Colors.deepPurpleAccent,
                  height: 20.0,
                  child: Text("Hwlo"),
                ),
              ),
            ],
          ),
          Divider(),
          //flexible and expanded should be within the column or row widget
          Row(
            children: [
              Flexible(     //in this section the remaining part is taken by this purple area
                child: Container(
                  color: Colors.deepPurpleAccent,
                  height: 20.0,
                  child: Text("Hwlo"),
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.amberAccent,
                  height: 20.0,
                  child: Text("Hwlo"),
                ),
              ),
            ],
          ),
          Expanded(
            flex: 4,
            child: Container(color: Colors.cyanAccent, height: 20.0),
          ),
          Expanded(
            flex: 4,
            child: Container(color: Colors.deepOrangeAccent, height: 20.0),
          ),
        ],
      ),
    );
  }
}
