import 'package:flutter/material.dart';

class BooksAppSettingPage extends StatefulWidget {
  const BooksAppSettingPage({super.key});

  @override
  State<BooksAppSettingPage> createState() => _BooksAppSettingPageState();
}

class _BooksAppSettingPageState extends State<BooksAppSettingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text("Books App Setting Page"),
    );
  }
}