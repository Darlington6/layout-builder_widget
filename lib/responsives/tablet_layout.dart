import 'package:flutter/material.dart';
import 'package:flutter_layout_builder/utils/constant_ui.dart';
import 'package:flutter_layout_builder/utils/widget_boxes.dart';
import 'package:flutter_layout_builder/utils/widget_lists.dart';

class TabletLayout extends StatefulWidget {
  const TabletLayout({super.key});

  @override
  State<TabletLayout> createState() => _TabletScaffoldState();
}

class _TabletScaffoldState extends State<TabletLayout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: commonBackground,
      appBar: commonAppBar("Tablet View"),
      drawer: commomDrawer,
      body: Row(
        children: [
          Expanded(
            flex: 3,
            child: Column(
              children: [
                Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                "Dashboard",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
                AspectRatio(
                  aspectRatio: 4,
                  child: SizedBox(
                    width: double.infinity,
                    child: GridView.builder(
                      itemCount: 5,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 4, // Lays out the grid items in 4 columns regardless of screen size using a fixed cross axis count
                        ), 
                      itemBuilder: (context, index){
                        return WidgetBoxes();
                      },
                      ),
                  ),
                  ),
            
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      "To do",
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Expanded(
                    child: ListView.builder(
                      itemCount: 5,
                      itemBuilder: (context, index){
                        return WidgetLists();
                      },
                      ),
                    ),
              ],
            ),
          ),
          Expanded(
            child: Column(
              children: [
                Expanded(
                  child: Container(
                    color: Colors.teal,
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Center(
                        child: Text(
                          "Extra data here! This could be an aside", 
                          style: TextStyle(
                            fontSize: 18.0,
                            color: Colors.black, 
                            fontWeight: FontWeight.bold,
                            ),
                            ),
                      ),
                    ),
                  ),
                  ),
              ],
            ),
            ),
        ],
      ),
    );
  }
}