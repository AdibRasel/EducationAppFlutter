import 'package:flutter/material.dart';

class LoginPageDesign extends StatefulWidget {
  const LoginPageDesign({super.key});

  @override
  State<LoginPageDesign> createState() => _LoginPageDesignState();
}

class _LoginPageDesignState extends State<LoginPageDesign> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
      
              Container(
                height: 300,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration( // box এর বাহিরে বর্ডার নেওয়ার জন্য, এখানে বর্ডার নিয়ে অনেক কাজ করা যায়।
                  color: Colors.brown, // Color টা decoration এর বিতরে রাখতে হবে। 
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20.0),
                    bottomRight: Radius.circular(20.0)
                  )
                ),
      
                child: Column(
                  children: [
                    SizedBox(height: 70.0),
                    Image.asset(
                      "images/books.png",
                      height:150.0,
                      width: 150.0,
                    ),
                    SizedBox(height: 20.0),
                    Text("Login".toUpperCase(), style: TextStyle(color: Colors.white, fontSize: 18.0),)
                  ],
                ),
      
      
              ),
      
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Expanded( // Expanded একটা স্কিনের পুরো সাইজ নিয়ে নিবে। উপরে যায়গা নেওয়ার পর যা যায়গা খালি থাকবে সব যায়গা নিয়ে নিবে। 
                  child: Container(
                    
                    child: Column(
                      
                      children: [
              
                        SizedBox(height: 60.0,),
                        
                        // User Name start 
                        Container(
                          width: MediaQuery.of(context).size.width,
                          height: 50,
                          decoration: BoxDecoration(
                            color: Colors.brown[200],
                            borderRadius: BorderRadius.circular(10)
                          ),
                          child: TextField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              contentPadding: EdgeInsets.only(left: 10.0),
                              hintText: "User Name"
                            ),
                          ),
                        ),
                        // User Name End
              
                        SizedBox(height: 15.0),
              
                        // Password start 
                        Container(
                          width: MediaQuery.of(context).size.width,
                          height: 50,
                          decoration: BoxDecoration(
                            color: Colors.brown[200],
                            borderRadius: BorderRadius.circular(10)
                          ),
                          child: TextField(
                            obscureText: true,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              contentPadding: EdgeInsets.only(left: 10.0),
                              hintText: "Password"
                            ),
                          ),
                        ),
                        // Password End
              
                        SizedBox(height: 20,),


                        // Login Button Start
                        Container(
                          width: MediaQuery.of(context).size.width,
                          child: ElevatedButton(
                            onPressed: (){},
                            child: Text(
                              "Login".toUpperCase(), 
                              style: TextStyle(
                                fontSize: 16.0, 
                                color: Colors.white,
                                 
                              )
                            ),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.brown,
                              padding: EdgeInsets.only(top: 10, bottom: 10),
                            ),
                          ),
                        ), 
                        // Login Button End
              
              
                        SizedBox(height: 20.0,),
              
              
              
                        // -------------- or login ------------ start
                        Row(
                          children: [
                            Expanded(child: Divider(color: Colors.brown,)),
                            Padding(
                              padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                              child: Text("Or Login"),
                            ),
                            Expanded(child: Divider(color: Colors.brown,)),
                          ],
                        ), 
                        // -------------- or login ------------ end
              
                        SizedBox(height: 10),

                        // Login With Google start 
                        Card(
                          child: ListTile(
                            leading: Image.asset("images/google.png",
                            height: 40.0,
                            width: 40.0,
                            ),
                            title: Text("Sign In with Google"),
                          ),
                        ),
                        // Login With Design end

                        SizedBox(height: 5),


                        // Login With Facebook start 
                        Card(
                          child: ListTile(
                            leading: Image.asset("images/facebook.png",
                            height: 40.0,
                            width: 40.0,
                            ),
                            title: Text("Sign In with Facebook"),
                          ),
                        ),
                        // Login With Design end


                        SizedBox(height: 10),
                        // -------------- Another ListTile Design Template ------------ start
                        Row(
                          children: [
                            Expanded(child: Divider(color: Colors.brown,)),
                            Padding(
                              padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                              child: Text("ListTile Design Template"),
                            ),
                            Expanded(child: Divider(color: Colors.brown,)),
                          ],
                        ), 
                        // -------------- Another ListTile Design Template ------------ end
                        SizedBox(height: 10),


                        // Another ListTile Design Template start
                        Card(
                          child: ListTile(
                            leading: Image.asset("images/C#.png",
                            height: 40.0,
                            width: 40.0,
                            ),
                            title: Text("Another ListTile Design Template"),
                            subtitle: Text("Design Template"),
                            trailing: Icon(Icons.code),
                          ),
                        ),

                         Card(
                          child: ListTile(
                            leading: Image.asset("images/Flutter.png",
                            height: 40.0,
                            width: 40.0,
                            ),
                            title: Text("Another ListTile Design Template"),
                            subtitle: Text("Design Template"),
                            trailing: Icon(Icons.flutter_dash_outlined),
                          ),
                        ),
                        Card(
                          child: ListTile(
                            leading: Image.asset("images/Dart.png",
                            height: 40.0,
                            width: 40.0,
                            ),
                            title: Text("ListTile Design Template"),
                            subtitle: Text("Design Template"),
                            trailing: Icon(Icons.arrow_forward_ios),
                          ),
                        ),
                        // Another ListTile Design Template end
              
              
              
                      ]
              
                    ),
              
                  ),
                ),
              ),
      
      
      
            ],
          ),
        ),
      ),
    );
  }
}
