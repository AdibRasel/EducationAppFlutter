import 'package:educationapp/FlutterPractice/FlutterPractice.dart';
import 'package:educationapp/screens/home_screen.dart';
import 'package:flutter/material.dart';

class OneDesign extends StatelessWidget {
  const OneDesign({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Text("One App Design"),
      ),



      body: SingleChildScrollView(
        child: Column(
          children: [
      
      
      
      
      
      
      
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
      
                InkWell( // InkWell দিয়ে রেপ করলে ক্লিক করার মতো অপশন পাওয়া যায়। 
                  onTap: (){
                    Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HomePage(),
                    ));
                  },
                  child: Card(
                    child: Container(
                      height: 100.0,
                      width: 100.0,
                      child: Center(child: Text("Home Page", style: TextStyle(fontSize: 20, color: Colors.white,),)),
                    ),
                    color: Colors.deepPurple,
                  ),
                ),
      
      
      
                Card(
                  child: Container(
                    height: 100.0,
                    width: 100.0,
                  ),
                  color: Colors.deepPurple,
                ),
      
      
      
      
      
                Card(
                  child: Container(
                    height: 100.0,
                    width: 100.0,
                  ),
                  color: Colors.deepPurple,
                )
      
      
      
              ],
            ),
      
      
      
      
      
            SizedBox(height: 15.0),
      
      
      
      
      
      
      
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
      
                Card(
                  child: Container(
                    height: 100.0,
                    width: 100.0,
                  ),
                  color: Colors.deepPurple,
                ),
      
      
      
                Card(
                  child: Container(
                    height: 100.0,
                    width: 100.0,
                  ),
                  color: Colors.deepPurple,
                ),
      
      
      
      
      
                Card(
                  child: Container(
                    height: 100.0,
                    width: 100.0,
                  ),
                  color: Colors.deepPurple,
                )
      
      
      
              ],
            ),









            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
      
                Card(
                  child: Container(
                    height: 100.0,
                    width: 100.0,
                  ),
                  color: Colors.deepPurple,
                ),
      
      
      
                Card(
                  child: Container(
                    height: 100.0,
                    width: 100.0,
                  ),
                  color: Colors.deepPurple,
                ),
      
      
      
      
      
                Card(
                  child: Container(
                    height: 100.0,
                    width: 100.0,
                  ),
                  color: Colors.deepPurple,
                )
      
      
      
              ],
            ),










            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
      
                Card(
                  child: Container(
                    height: 100.0,
                    width: 100.0,
                  ),
                  color: Colors.deepPurple,
                ),
      
      
      
                Card(
                  child: Container(
                    height: 100.0,
                    width: 100.0,
                  ),
                  color: Colors.deepPurple,
                ),
      
      
      
      
      
                Card(
                  child: Container(
                    height: 100.0,
                    width: 100.0,
                  ),
                  color: Colors.deepPurple,
                )
      
      
      
              ],
            ),
      
      
      
      
      
      
      
      
      
      
              Column(
                children: [
            
            
                  Card(
                    child: Container(
                      height:150,
                      width: MediaQuery.of(context).size.width,
                    ),
                    color: Colors.deepOrangeAccent,
                  ),
            
            
            
            
                  InkWell(
                     onTap: (){
                    Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => FlutterPractice(),
                    ));
                  },
                    child: Card(
                      child: Container(
                        height:150,
                        width: MediaQuery.of(context).size.width,
                       child: Center(child: Text("Flutter Practice", style: TextStyle(fontSize: 20, color: Colors.white),)),
                  
                      ),
                      color: Colors.deepOrangeAccent,
                    ),
                  ),
            
            
            
                  Card(
                    child: Container(
                      height:150,
                      width: MediaQuery.of(context).size.width,
                    ),
                    color: Colors.deepOrangeAccent,
                  ),
            
            
            
            
            
                  Card(
                    child: Container(
                      height:150,
                      width: MediaQuery.of(context).size.width,
                    ),
                    color: Colors.deepOrangeAccent,
                  ),
            
            
            
               
            
            
                ],
              ),
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
          ],
        ),
      ),
    );
  }
}
