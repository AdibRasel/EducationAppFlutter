import 'package:flutter/material.dart';

class BooksAppHomePage extends StatefulWidget {
  const BooksAppHomePage({super.key});

  @override
  State<BooksAppHomePage> createState() => _BooksAppHomePageState();
}

class _BooksAppHomePageState extends State<BooksAppHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text("Books App Home Page"),
    );
  }
}