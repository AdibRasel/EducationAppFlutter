import 'package:educationapp/BookApps/BookAppsBottomNavigation.dart';
import 'package:educationapp/BottomNavigationDrawer/BottomNavigationAndDrawer.dart';
import 'package:educationapp/CounterApps/CounterApps.dart';
import 'package:educationapp/FlutterRowAndColumn/FlutterColumn.dart';
import 'package:educationapp/FlutterRowAndColumn/FlutterRow.dart';
import 'package:educationapp/LoginPageDesign/LoginPageDesign.dart';
import 'package:educationapp/OneDesign/OneDesign.dart';
import 'package:flutter/material.dart';

class FlutterPractice extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Practice'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Column(
        children: [
          ListTile(
              leading: Container(
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  color: Color(0xFF674AEF),
                  shape: BoxShape.circle,
                ),
                child: Icon(Icons.plus_one_outlined,
                    color: Colors.white, size: 30),
              ),
              title: Text("Counter Apps"),
              subtitle: Text("One Page Counter Apps"),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => CounterApps(),
                    ));
              }),
              ListTile(
              leading: Container(
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  color: Color(0xFF674AEF),
                  shape: BoxShape.circle,
                ),
                child: Icon(Icons.view_column_outlined,
                    color: Colors.white, size: 30),
              ),
              title: Text("Flutter Column"),
              subtitle: Text("Flutter Column Exampole"),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => FlutterColumn(),
                    ));
              }),
              ListTile(
              leading: Container(
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  color: Color(0xFF674AEF),
                  shape: BoxShape.circle,
                ),
                child: Icon(Icons.view_compact, color: Colors.white, size: 30),
              ),
              title: Text("Flutter Row"),
              subtitle: Text("Flutter Row Exampole"),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => FlutterRow(),
                    ));
              }),
              ListTile(
              leading: Container(
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  color: Color(0xFF674AEF),
                  shape: BoxShape.circle,
                ),
                child: Icon(Icons.design_services_outlined,
                    color: Colors.white, size: 30),
              ),
              title: Text("One Design"),
              subtitle: Text("One Android App Design"),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => OneDesign(),
                    ));
              }),
              ListTile(
              leading: Container(
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  color: Color(0xFF674AEF),
                  shape: BoxShape.circle,
                ),
                child:
                    Icon(Icons.login_outlined, color: Colors.white, size: 30),
              ),
              title: Text("Login Page"),
              subtitle: Text("One Login Page Deign"),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => LoginPageDesign(),
                    ));
              }),
              ListTile(
              leading: Container(
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  color: Color(0xFF674AEF),
                  shape: BoxShape.circle,
                ),
                child:
                    Icon(Icons.app_blocking_outlined, color: Colors.white, size: 30),
              ),
              title: Text("Bottom Navigation And Drawer"),
              subtitle: Text("Bottom Navigation and Drawer- দ্রয়ার হচ্ছে সাইড মেনু"),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => BottomNavigationAndDrawer(),
                    ));
              }),
              ListTile(
              leading: Container(
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  color: Color(0xFF674AEF),
                  shape: BoxShape.circle,
                ),
                child:
                    Icon(Icons.book_online_outlined, color: Colors.white, size: 30),
              ),
              title: Text("Book Apps"),
              subtitle: Text("Complate One Book Apps"),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => BookAppsBottomNavigation(),
                    ));
              }),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        showUnselectedLabels: true,
        iconSize: 32,
        selectedItemColor: Color(0xFF674AEF),
        selectedFontSize: 18,
        unselectedItemColor: Colors.grey,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.assignment), label: "Courses"),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite), label: "Wishlist"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Account"),
        ],
      ),
    );
  }
}
