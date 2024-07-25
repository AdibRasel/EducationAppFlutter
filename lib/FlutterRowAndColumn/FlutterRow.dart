import 'package:flutter/material.dart';

class FlutterRow extends StatelessWidget {
  const FlutterRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter Row"),
        backgroundColor: Colors.orange,
        leading: IconButton(
          // leading হচ্ছে ব্যাক back বাটন, এপ বার এর ব্যাক back বাটন
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),


      // // স্ক্রল করা
      body: SingleChildScrollView(
        //SingleChildScrollView বাই ডিপোল্ড বার্টিকেল থাকে উপর থেকে নিচে স্ক্রল করার জন্য
        //কিন্তু রো এর ক্ষেত্রে হরিজেন্টাল করতে হবে। ডান পাশ থেকে বাম পাশে স্ক্রল করার জন্য scrollDirection: Axis.horizontal করতে হবে
        scrollDirection: Axis.horizontal,
        
        child: Column(

              children: [
                Container(
                  child: Row( // নিচের সব গুলো রো Row আকারে বাম পাশ থেকে ডান পাশে শো করবে। 
                    mainAxisAlignment: MainAxisAlignment.center, // center লম্বা-লম্বি সেন্টার করবে।
                    crossAxisAlignment: CrossAxisAlignment.start, // ডান দিক থেকে বাম দিক সেন্টার করবে। 
                    children: [
                      SizedBox(height: 80.0), // white space সাদা যায়গার জন্য SizedBox ব্যবহার করা হয়।
                      Container(
                          height: 50,
                          width: 100,
                          color: Colors.deepPurpleAccent,
                          child: Center(
                            child: Text("Row 1", style: TextStyle(fontSize: 25)),
                          )),
                      SizedBox( width: 10.0), // white space সাদা যায়গার জন্য SizedBox ব্যবহার করা হয়।
                      
                      Container(
                          height: 50,
                          width: 100,
                          color: Colors.deepPurpleAccent,
                          child: Center(
                            child: Text("Row 2", style: TextStyle(fontSize: 25)),
                          )),
                      SizedBox( width: 10.0), // white space সাদা যায়গার জন্য SizedBox ব্যবহার করা হয়।


                      Container(
                          height: 50,
                          width: 100,
                          color: Colors.deepPurpleAccent,
                          child: Center(
                            child: Text("Row 3", style: TextStyle(fontSize: 25)),
                          )),
                      SizedBox( width: 10.0), // white space সাদা যায়গার জন্য SizedBox ব্যবহার করা হয়।




                      Container(
                          height: 50,
                          width: 100,
                          color: Colors.deepPurpleAccent,
                          child: Center(
                            child: Text("Row 4", style: TextStyle(fontSize: 25)),
                          )),
                      SizedBox( width: 10.0), // white space সাদা যায়গার জন্য SizedBox ব্যবহার করা হয়।




                      Container(
                          height: 50,
                          width: 100,
                          color: Colors.deepPurpleAccent,
                          child: Center(
                            child: Text("Row 5", style: TextStyle(fontSize: 25)),
                          )),
                      SizedBox( width: 10.0), // white space সাদা যায়গার জন্য SizedBox ব্যবহার করা হয়।





                      Container(
                        child:Center(
                          child: Image.asset(
                          "images/Row.png",
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
                          "images/RowMapImage.png",
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
              ],
        ),
      ),




      // body: Container( // একটা Container এ একটা child থাকতে পারে। 
      //   child: Row( // একটা child এ রো Row অথবা যে কোন উইজেড থাকতে পারে। 
      //     children: [ // একটা children এ অনেক গুলো Container থাকতে পারে। 
      //       Container( 
      //         child: AboutDialog(applicationName: "hello"), // একটা child এ যে কোন উইজেড থাকতে পারে। যেমন- Text, Icon, BackButton, Etc.
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
      //         child: Row( // একটা child এ রো Row অথবা যে কোন উইজেড থাকতে পারে।
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
