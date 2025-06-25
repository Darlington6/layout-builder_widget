import 'package:flutter/material.dart';

// Common background color used across the app
var commonBackground = Colors.white;

// Reusable AppBar widget with customizable title
AppBar commonAppBar (String title){
  return AppBar(
        backgroundColor: Colors.blueGrey[900],
        title: Text(title, style: TextStyle(color: Colors.white),),
        centerTitle: true,
        iconTheme: IconThemeData( color: Colors.white),  // Color of hamburger menu on mobile and tablet views
      );
}

// Reusable Drawer widget shared across screens
var commomDrawer = Drawer(
        backgroundColor: Colors.grey.shade300,
        child: SingleChildScrollView(
          child: Column(
            children: [
              DrawerHeader(
                child: Icon(Icons.account_circle, size: 90.0,),
                ),
                // Navigation items in the drawer
                ListTile(
                  leading: Icon(
                    Icons.home, 
                    size: 40.0, 
                    color: Colors.black,
                    ),
                  title: Text(
                    "Dashboard", 
                    style: TextStyle(
                      fontSize: 18.0, 
                      fontWeight: FontWeight.bold,
                      ),
                      ),
                ),
                SizedBox(height: 15),
                ListTile(
                  leading: Icon(
                    Icons.book,  
                    size: 40.0, 
                    color: Colors.black,
                    ),
                  title: Text(
                    "Courses", 
                    style: TextStyle(
                      fontSize: 18.0, 
                      fontWeight: FontWeight.bold,
                      ),
                      ),
                ),
                SizedBox(height: 15),
                ListTile(
                  leading: Icon(
                    Icons.settings,  
                    size: 40.0, 
                    color: Colors.black,
                    ),
                  title: Text(
                    "Settings", 
                    style: TextStyle(
                      fontSize: 18.0, 
                      fontWeight: FontWeight.bold,
                      ),
                      ),
                ),
                SizedBox(height: 15),
                ListTile(
                  leading: Icon(
                    Icons.person,  
                    size: 40.0, 
                    color: Colors.black,
                    ),
                  title: Text(
                    "Profile", 
                    style: TextStyle(
                      fontSize: 18.0, 
                      fontWeight: FontWeight.bold,
                      color: Colors.black                      
                      ),
                      ),
                ),
            ],
          ),
        ),
      );