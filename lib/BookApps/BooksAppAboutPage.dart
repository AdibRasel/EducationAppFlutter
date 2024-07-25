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
      body: Text("Books App About Page"),
    );
  }
}