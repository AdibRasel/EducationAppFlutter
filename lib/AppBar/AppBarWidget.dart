import 'package:flutter/material.dart';

class AppBarWidget extends StatelessWidget {
  dynamic AppBarTitle;
  AppBarWidget(this.AppBarTitle);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      title: Text(AppBarTitle),
      leading: IconButton(
        icon: Icon(Icons.arrow_back),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
    ));
  }
}
