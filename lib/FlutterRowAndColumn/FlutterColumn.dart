import 'package:flutter/material.dart';


class FlutterColumn extends StatefulWidget {
  const FlutterColumn({super.key});

  @override
  State<FlutterColumn> createState() => _FlutterColumnState();
}

class _FlutterColumnState extends State<FlutterColumn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold( // Scaffold এর বিতরে একটা ফেইজ ডিজাইন করার জন্য সব কিছু পাওয়া যায়। 
      appBar: AppBar(
        title: Text("Flutter Column"),
        backgroundColor: Colors.orange,
        leading: IconButton( // leading হচ্ছে ব্যাক back বাটন, এপ বার এর ব্যাক back বাটন
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),

      body: SingleChildScrollView(
        child: Container( // একটা বডির বিতরে সকল ডিজাইন করা হয়। 
          width: MediaQuery.of(context).size.width, // পুরো স্কিনের width নিবে। 
          child: Column( // Column একটা children নেয়। 
            mainAxisAlignment: MainAxisAlignment.center, // center লম্বা-লম্বি সেন্টার করবে।
            // mainAxisAlignment: MainAxisAlignment.spaceBetween, // spaceBetween প্রত্যেক টা প্রত্যেক টা থেকে সমান দূরুত্বে থাকবে। 
            // mainAxisAlignment: MainAxisAlignment.spaceAround, // spaceAround উপরে যতটুকু দূরুত্ব নিচে ও তত টুকু দূরুত্ব  থাকবে। 
            crossAxisAlignment: CrossAxisAlignment.center, // ডান দিক থেকে বাম দিক সেন্টার করবে। 
            
            children: [ // children এর বিতরে অনেক গুলো আইটেম ব্যবহার করা যায়। children এর বিতরে Container নেওয়া যায়।
              
              Container( 
                height: 50.0,
                width: 100.0,
                color: Colors.deepPurpleAccent,
                child:Center(
                  child: Text("Column 1", style: TextStyle(fontSize: 20, color: Colors.white),),
                ) 
              ),
              SizedBox(height: 10.0,), // white space সাদা যায়গার জন্য SizedBox ব্যবহার করা হয়।
        
              Container( 
                height: 50.0,
                width: 100.0,
                color: Colors.deepPurpleAccent,
                child: Icon(Icons.home),
              ),
              SizedBox(height: 10.0,), // white space সাদা যায়গার জন্য SizedBox ব্যবহার করা হয়।
        
              Container( 
                height: 50.0,
                width: 100.0,
                color: Colors.deepPurpleAccent,
                child: FlutterLogo(),
              ),
              SizedBox(height: 10.0,), // white space সাদা যায়গার জন্য SizedBox ব্যবহার করা হয়।
        
              Container( 
              height: 50.0,
              width: 100.0,
              color: Colors.deepPurpleAccent,
              child:Center(
                child: Text("Column 2", style: TextStyle(fontSize: 20, color: Colors.white),),
              )
              ),
              SizedBox(height: 10.0,), // white space সাদা যায়গার জন্য SizedBox ব্যবহার করা হয়।



              
              Container( 
              height: 50.0,
              width: 100.0,
              color: Colors.deepPurpleAccent,
              child:Center(
                child: Text("Column 3", style: TextStyle(fontSize: 20, color: Colors.white),),
              )
              ),
              SizedBox(height: 10.0,), // white space সাদা যায়গার জন্য SizedBox ব্যবহার করা হয়।




              Container(
                child:Center(
                  child: Image.asset(
                  "images/Column.png",
                  scale: 0.8,
                )),
              ),
      
              SizedBox(height: 5.0,), // white space সাদা যায়গার জন্য SizedBox ব্যবহার করা হয়।
              Container(
                child: ColoredBox(color: Colors.red,),
              ),
              SizedBox(height: 5.0,), // white space সাদা যায়গার জন্য SizedBox ব্যবহার করা হয়।
      
      
              Container(
                child:Center(
                  child: Image.asset(
                  "images/ColumnMap.png",
                  scale: 0.8,
                )),
              ),
              SizedBox(height: 10.0,), // white space সাদা যায়গার জন্য SizedBox ব্যবহার করা হয়।
              
              
              Container(
                child:Center(
                  child: Text("Scroll Image")),
              ),
              SizedBox(height: 10.0,), // white space সাদা যায়গার জন্য SizedBox ব্যবহার করা হয়।
              
              
              
              Container(
                child:Center(
                  child: Image.asset(
                  "images/scroll.png",
                  scale: 0.8,
                )),
              ),
              SizedBox(height: 10.0,), // white space সাদা যায়গার জন্য SizedBox ব্যবহার করা হয়।



        
            ],
          ),
        ),
      ),



      // body: Container( // একটা Container এ একটা child থাকতে পারে। 
      //   child: Column( // একটা child এ কলাম Column অথবা যে কোন উইজেড থাকতে পারে। 
      //     children: [ // একটা chilodren এ অনেক গুলো Container থাকতে পারে। 
      //       Container( 
      //         child: AboutDialog(applicationName: "hello"), // একটা child এ যে কোন উইজেড থাকতে পারে। যেমন- Text, Icon, AboutDiolog, Divider, BackButton, Etc.
      //       ),
      //       Container(
      //         child:Divider(color: Colors.red),
      //       ),
      //       Container(
      //         child:BackButton(), // একটা child এ যে কোন উইজেড থাকতে পারে। যেমন- Text, Icon, AboutDiolog, Divider, BackButton, Etc.
      //       ),
      //       Container(
      //           child: ColoredBox(color: Colors.black, child: Text("Hello"),),
      //       ),
      //       Container( // একটা Container এ একটা child থাকতে পারে। 
      //         child: Column( // একটা child এ কলাম Column অথবা যে কোন উইজেড থাকতে পারে। 
      //           children: [ // একটা chilodren এ অনেক গুলো Container থাকতে পারে। 
      //             Container(),
      //             Container(),
      //             Container(),
      //           ],
      //         ),
      //       )
      //     ],
      //   ),
      // ),







    );
  }
}
