import 'package:clipboard/clipboard.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:share_plus/share_plus.dart';

class PoemViewPage extends StatefulWidget {
  String Poem;
  String PoemName;

  PoemViewPage(this.Poem, this.PoemName);

  @override
  State<PoemViewPage> createState() => _PoemViewPageState();
}

class _PoemViewPageState extends State<PoemViewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(Icons.arrow_back_ios),
        ),
        title: Text(widget.PoemName),
        actions: [
          InkWell(
            onTap: (){
            // clipboard: ^0.1.3 এই প্যাকেজটির কারনে কপি হবে। 
            FlutterClipboard.copy(widget.Poem).then(( value ) => 

              // fluttertoast: ^8.2.5 এই প্যাকেজটির কারনে টোস্ট এসএমএস দিবে। 
              Fluttertoast.showToast(msg:"Poem Copid Successfuly")
            
            );

            },
            child: Icon(Icons.copy, color: Colors.white,),
          ),
          SizedBox(width: 10.0,),

          InkWell(
            onTap: (){

            // share_plus: ^8.0.0 এই প্যাকেজটির কারনে শেয়ার হবে। 
            Share.share(widget.Poem, subject: widget.PoemName);


            },
            child: Icon(Icons.share, color: Colors.white,),
          ),
          SizedBox(width: 10.0,),


          SizedBox(width: 12.0,)
        ],
      ),

      
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(12.0),
          child: SelectableText( // mobile থেকে সিলেক্ট করা যাবে এই SelectableText এর জন্য। 
            widget.Poem,
            style: TextStyle(
              fontSize: 18.0,
              
            ),
          )
        ),
      )




    );
  }
}
