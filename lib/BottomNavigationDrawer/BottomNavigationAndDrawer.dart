import 'package:educationapp/BottomNavigationDrawer/AboutPage.dart';
import 'package:educationapp/BottomNavigationDrawer/HomePage.dart';
import 'package:flutter/material.dart';

class BottomNavigationAndDrawer extends StatefulWidget {
  const BottomNavigationAndDrawer({super.key});

  @override
  State<BottomNavigationAndDrawer> createState() =>
      _BottomNavigationAndDrawerState();
}

class _BottomNavigationAndDrawerState extends State<BottomNavigationAndDrawer> {
  // পেইজ গুলো কে ইমপোর্ট করে একটা লিস্ট এ রাখা হলো। start
  List<Widget> pages = [HomePage(), AboutPage()];
  // পেইজ গুলো কে ইমপোর্ট করে একটা লিস্ট এ রাখা হলো। end
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

        // appBar start
        appBar: AppBar(
          title: Text("Bottom Navigation And Drawer"),
        ),
        // appBar end

        // drawer start. drawer হচ্ছে সাইড মেনু।
        drawer: Drawer(
          child: Column(
            children: [
              SizedBox(height: 40.0,),
              Image.asset(
                "images/books.png",
                height: 150.0,
                width: 150.0,
              ),

              SizedBox( height: 10.0,),

              Text("Drawer Side Menu",
                style: TextStyle(fontSize: 25.0),
              ),
              
              Divider(
                color: Colors.grey,
                indent:20.0, // Divider এর প্রথমে ২০ পিক্সেল যায়গা নিবে এবং শেষে ২০ পিক্সেল যায়গা নিবে।
                endIndent: 20.0,
              ),

              Card(
                child: ListTile(
                  leading: Icon(Icons.home),
                  title: Text("Home"),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomePage(),
                        ));
                  },
                ),
              ),


              Card(
                child: ListTile(
                  leading: Icon(Icons.info_outline),
                  title: Text("About"),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => AboutPage(),
                        ));
                  },
                ),
              ),


              Card(
                child: ListTile(
                  leading: Icon(Icons.dashboard),
                  title: Text("More Apps"),
                  onTap: () {
                    Navigator.pop(context); // Drawer Cloge 
                  },
                ),
              ),


            ],
          ),
        ),
        // drawer end. drawer হচ্ছে সাইড মেনু।

        // Bottom Navbar Start
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.brown,
          unselectedItemColor: Colors.grey,
          
          currentIndex: index, // currentIndex এর মাধ্যমে index 0 এর ব্যালু HomePage শো করাবে।
          onTap: (value) {
            setState(() {
              index = value;
            });
          },
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(Icons.info_outline), label: "About"),
          ],
        ),

        // pages লিস্ট থেকে index 0 টি রান করাবে। int index = 0
        // bottomNavigationBar এর ডিপোল্ড হচ্ছে body আর বডির বিতরে শো করবে index এর মাধ্যমে HomePage
        body: pages.elementAt(index)
        // Bottom Navbar end
      
      
      );
  }
}
