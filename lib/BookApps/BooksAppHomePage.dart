import 'package:educationapp/BookApps/PoemModel/PoemModel.dart';
import 'package:educationapp/BookApps/PoemSource/PoemSource.dart';
import 'package:educationapp/BookApps/PoemViewPage.dart';
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
        body: Center(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListView.builder(
          // ListView প্রথমে কয়টা আইটেম আছে সেটা কাউন্ট করে, পরে সে অনুযায়ি ডাটা শো করে।
          itemCount: PoemSource.Poems.length,
          itemBuilder: (context, index) {
            PoemModel Poem = PoemSource.Poems[
                index]; // index অনুযায়ি সকল ডাটা Porem এর বিতরে স্টোর হয়েছে।
            return Card(
              // poems lenght অনুযায়ি নিচের ডিজাইন শো করবে।
              child: ListTile(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (_) => PoemViewPage(Poem.Poem, Poem.PoemName))); // PoemViewPage এ index অনুযায়ি Poem এর মান টা ছলে যাবে।
                },
                title: Text(Poem.PoemName),
                subtitle: Text(Poem.Writername),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
            );
          },
        ),
      ),
    ));
  }
}
