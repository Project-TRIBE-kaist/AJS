import 'package:flutter/material.dart';

class FeedScreen extends StatelessWidget {
  //const FeedScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Instagram', style: TextStyle(fontFamily: 'VeganStyle', color: Colors.black87)),
      ),
      body: ListView.builder(itemBuilder: feedListBuilder, itemCount: 30),
    );
  }
  Widget feedListBuilder(BuildContext context, int index){
    return Container(
      color: Colors.accents[index % Colors.accents.length],
      height: 100,
    );
  }
}
