import 'package:flutter/material.dart';

class BooksAppAboutPage extends StatefulWidget {
  const BooksAppAboutPage({super.key});

  @override
  State<BooksAppAboutPage> createState() => _BooksAppAboutPageState();
}

class _BooksAppAboutPageState extends State<BooksAppAboutPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Text("Poem Book", style:TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold
            )),
            SizedBox(height: 30.0,),
            Text("Developed by Rasel Hossain Adib"),
          ],
        ),
      )
    );
  }
}