import 'package:educationapp/BookApps/BooksAppAboutPage.dart';
import 'package:educationapp/BookApps/BooksAppHomePage.dart';
import 'package:educationapp/BookApps/BooksAppSettingPage.dart';
import 'package:flutter/material.dart';

class BookAppsBottomNavigation extends StatefulWidget {
  const BookAppsBottomNavigation({super.key});

  @override
  State<BookAppsBottomNavigation> createState() =>
      _BookAppsBottomNavigationState();
}

class _BookAppsBottomNavigationState extends State<BookAppsBottomNavigation> {

  // পেইজ গুলো কে ইমপোর্ট করে একটা লিস্ট এ রাখা হলো। start
  List <Widget> pages = [BooksAppHomePage(), BooksAppAboutPage(), BooksAppSettingPage()];
  // পেইজ গুলো কে ইমপোর্ট করে একটা লিস্ট এ রাখা হলো। end
  int index = 0;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar start
      appBar: AppBar(
        title: Text("My Book Apps"),
        backgroundColor: Colors.green,
      ),
      // appBar end

      // drawer start. drawer হচ্ছে সাইড মেনু।
      drawer: Drawer(
        child: Column(children: [
          // drawer top image start
          Container(
            width: MediaQuery.of(context).size.width,
            color: Color.fromARGB(255, 45, 83, 47),
            child: Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Image.asset(
                "images/AdibRasel.png",
                height: 250.0,
                width: 250.0,
              ),
            ),
          ),
          // drawer top image end

          SizedBox(
            height: 10.0,
          ),

          // -------------- or login ------------ start
          Row(
            children: [
              Expanded(
                  child: Divider(
                color: Color.fromARGB(255, 45, 83, 47),
              )),
              Padding(
                padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                child: Text(
                  "My Book Apps",
                  style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.w500),
                ),
              ),
              Expanded(
                  child: Divider(
                color: Color.fromARGB(255, 45, 83, 47),
              )),
            ],
          ),
          // -------------- or login ------------ end

          // SizedBox(
          //   height: 10.0,
          // ),
          // // Drawer item start
          // Card(
          //   child: ListTile(
          //     trailing: Icon(Icons.arrow_forward_ios),
          //     title: Text("Home"),
          //     subtitle: Text("Go to Home Page"),
          //     onTap: () {
          //       Navigator.push(
          //           context,
          //           MaterialPageRoute(
          //             builder: (context) => BooksAppHomePage(),
          //           ));
          //     },
          //   ),
          // ),
          // // Drawer item end

          // SizedBox(
          //   height: 10.0,
          // ),
          // // Drawer item start
          // Card(
          //   child: ListTile(
          //     trailing: Icon(Icons.arrow_forward_ios),
          //     title: Text("About"),
          //     subtitle: Text("Go to About Page"),
          //     onTap: () {
          //       Navigator.push(
          //           context,
          //           MaterialPageRoute(
          //             builder: (context) => BooksAppAboutPage(),
          //           ));
          //     },
          //   ),
          // ),
          // // Drawer item end

          // SizedBox(
          //   height: 10.0,
          // ),
          // // Drawer item start
          // Card(
          //   child: ListTile(
          //     trailing: Icon(Icons.arrow_forward_ios),
          //     title: Text("Settings"),
          //     subtitle: Text("Setting Your Apps"),
          //     onTap: () {
          //       Navigator.pop(context); // Drawer Cloge
          //     },
          //   ),
          // ),
          // // Drawer item end


          // SizedBox(
          //   height: 10.0,
          // ),
          // // Drawer item start
          // Card(
          //   child: ListTile(
          //     trailing: Icon(Icons.arrow_forward_ios),
          //     title: Text("More Apps"),
          //     subtitle: Text("Our More Apps"),
          //     onTap: () {
          //       Navigator.pop(context); // Drawer Cloge
          //     },
          //   ),
          // ),
          // // Drawer item end





          // another Drawer item start
      
          // Drawer item start
          Card(
            child: ListTile(
              leading: Icon(Icons.home),
              title: Text("Home"),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => BooksAppHomePage(),
                    ));
              },
            ),
          ),
          // Drawer item end

          // Drawer item start
          Card(
            child: ListTile(
              leading: Icon(Icons.info_outline),
              title: Text("About"),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => BooksAppAboutPage(),
                    ));
              },
            ),
          ),
          // Drawer item end

          // Drawer item start
          Card(
            child: ListTile(
              leading: Icon(Icons.settings_accessibility_outlined),
              title: Text("Settings"),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => BooksAppSettingPage(),
                    ));
              },
            ),
          ), 
          // Drawer item end

          // Drawer item start
          Card(
            child: ListTile(
              leading: Icon(Icons.dashboard),
              title: Text("More Apps"),
              onTap: () {
                Navigator.pop(context); // Drawer Cloge 
              },
            ),
          ), 
          // Drawer item end

          // another Drawer item end


        ]),
      ),
      // drawer end. drawer হচ্ছে সাইড মেনু।




        // Bottom Navbar start
        bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.green,
        unselectedItemColor: Color.fromARGB(255, 45, 83, 47),

        currentIndex: index, // currentIndex এর মাধ্যমে index 0 এর ব্যালু HomePage শো করাবে।
        onTap: (value) {
          setState(() {
            index = value;
          });
        },

        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.info_outline), label: "About"),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: "Settings"),
        ],
        
        ),
        body: pages.elementAt(index),
      // Bottom Navbar end








    );
  }
}
