import 'package:flutter/material.dart';

class CounterApps extends StatefulWidget {
  const CounterApps({super.key});

  @override
  State<CounterApps> createState() => _CounterAppsState();
}

class _CounterAppsState extends State<CounterApps> {
  int Number = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Counter App"), // এপ বার এর টাইটেল
        backgroundColor: Colors.deepPurple,
        leading: IconButton(// লেডিং হচ্ছে ব্যাক বাটন, back button
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context); // ডিপোল্ড ভাবে back এর যাবে
          },
        ),
        // leading: Icon(Icons.arrow_back_ios) // লেডিং হচ্ছে ব্যাক বাটন, back button
        actions: [
          // AppBar আর রাইট পাশের আইকন
          Icon(Icons.person),
          Icon(Icons.search),
        ],
      ),
      body: Container(
        child: Center(
          child: Text(Number.toString(), style: TextStyle(fontSize: 18.0)),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            Number++; // Number ভ্যরিয়েবলে ইঙ্ক্রিমেন্ট হবে। কিন্তু আবডেট ভ্যলু টা শো করবে না।
          });
          // Number++; // Number ভ্যরিয়েবলে ইঙ্ক্রিমেন্ট হবে। কিন্তু আবডেট ভ্যলু টা শো করবে না।
        },
        child: Icon(Icons.add),
        tooltip: "Increment", // button এর উপরে মাউস বা টাস করলে এই লেখা টা শো করবে।
        backgroundColor: Colors.deepPurpleAccent,
      ),
    );
  }
}
