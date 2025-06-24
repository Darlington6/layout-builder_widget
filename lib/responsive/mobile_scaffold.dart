import 'package:flutter/material.dart';
import 'package:flutter_layout_builder/utils/constant_ui.dart';
import 'package:flutter_layout_builder/utils/widget_boxes.dart';
import 'package:flutter_layout_builder/utils/widget_lists.dart';

class MobileScaffold extends StatefulWidget {
  const MobileScaffold({super.key});

  @override
  State<MobileScaffold> createState() => _MobileScaffoldState();
}

class _MobileScaffoldState extends State<MobileScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: commonBackground,
      appBar: commonAppBar("Mobile View"),
      drawer: commomDrawer,
      body: SingleChildScrollView(
        child: Column(
          children: [
            AspectRatio(
              aspectRatio: 1,
              child: SizedBox(
                width: double.infinity,
                child: GridView.builder(
                  itemCount: 4,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    ), 
                  itemBuilder: (context, index){
                    return WidgetBoxes();
                  },
                  ),
              ),
              ),
              ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: 5,
                itemBuilder: (context, index){
                  return WidgetLists();
                },
                ),
                Container(
                  height: 500.0,
                  color: Colors.orange,
                  child: Center(
                    child: Text("Extra data here!"),
                  ),
                ),
          ],
        ),
      ),
    );
  }
}