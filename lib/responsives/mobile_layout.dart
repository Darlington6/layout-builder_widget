import 'package:flutter/material.dart';
import 'package:flutter_layout_builder/utils/constant_ui.dart';
import 'package:flutter_layout_builder/utils/widget_boxes.dart';
import 'package:flutter_layout_builder/utils/widget_lists.dart';

class MobileLayout extends StatefulWidget {
  const MobileLayout({super.key});

  @override
  State<MobileLayout> createState() => _MobileScaffoldState();
}

class _MobileScaffoldState extends State<MobileLayout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: commonBackground,
      appBar: commonAppBar("Mobile View"),
      drawer: commomDrawer,
      // Use SingleChildScrollView to allow scrolling when there’s not enough vertical or horizontal (in this case, vertical) space to display everything at once.
      body: SingleChildScrollView(
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
              aspectRatio: 1,
              child: SizedBox(
                width: double.infinity,
                child: GridView.builder(
                  itemCount: 5,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2, // Lays out the grid items in 2 columns regardless of screen size using a fixed cross axis count
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
                  "To Do",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
              ListView.builder(
                shrinkWrap: true, // Shrinks the widget to fit the size of its content instead of expanding to fill available space
                physics: NeverScrollableScrollPhysics(),  // Prevents GridView from scrolling independently
                itemCount: 5,
                itemBuilder: (context, index){
                  return WidgetLists();
                },
                ),
                Container(
                  height: 500.0,
                  color: Colors.teal,
                  child: Center(
                    child: Text(
                      "Extra data here! It could be footer elements",
                      style: TextStyle(
                        fontSize: 18.0,
                        color: Colors.black, 
                        fontWeight: FontWeight.bold,
                      ),

                      ),
                  ),
                ),
          ],
        ),
      ),
    );
  }
}