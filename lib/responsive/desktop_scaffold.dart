import 'package:flutter/material.dart';
import 'package:flutter_layout_builder/utils/constant_ui.dart';
import 'package:flutter_layout_builder/utils/widget_boxes.dart';
import 'package:flutter_layout_builder/utils/widget_lists.dart';

class DesktopScaffold extends StatefulWidget {
  const DesktopScaffold({super.key});

  @override
  State<DesktopScaffold> createState() => _DesktopScaffoldState();
}

class _DesktopScaffoldState extends State<DesktopScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: commonBackground,
      appBar: commonAppBar("Desktop View"),
      body: Row(
        children: [
          commomDrawer,
          Expanded(
            flex: 2,
            child: Column(
                    children: [
            AspectRatio(
              aspectRatio: 4,
              child: SizedBox(
                width: double.infinity,
                child: GridView.builder(
                  itemCount: 5,
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