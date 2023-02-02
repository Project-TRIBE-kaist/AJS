import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar( title: Text('앱임')),
        body: Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            width: double.infinity, height:50,
            //color:Colors.blue,
            margin: EdgeInsets.all(20),
            padding: EdgeInsets.all(10),
            child: Text('텍스트임'),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black),
            ),
          ),
        ),
        bottomNavigationBar: BottomAppBar(
          child: SizedBox(
            height: 50,
            child: Row(

              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(Icons.phone),
                Icon(Icons.message),
                Icon(Icons.contact_page),
              ],
            ),
          ),
        ), //BottomAppBar
      )
    );
  }
}
