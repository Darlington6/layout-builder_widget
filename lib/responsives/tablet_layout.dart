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
                AspectRatio(
                  aspectRatio: 4,
                  child: SizedBox(
                    width: double.infinity,
                    child: GridView.builder(
                      itemCount: 4,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 4,
                        ), 
                      itemBuilder: (context, index){
                        return WidgetBoxes();
                      },
                      ),
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
                    color: Colors.orange,
                    child: Center(
                      child: Text("Extra data here!"),
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