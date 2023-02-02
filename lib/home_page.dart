import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('인스타그램임', style: TextStyle(color: Colors.black) ),
        backgroundColor: Colors.white,
      ),
      body: Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          width: double.infinity, height:double.infinity,
          color:Colors.orangeAccent,
          //margin: EdgeInsets.all(20),
          padding: EdgeInsets.all(10),
          child: Text('텍스트임'),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: SizedBox(
          height: 50,
          child: Row(

            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(Icons.home),
              Icon(Icons.search),
              Icon(Icons.add),
              Icon(Icons.healing),
              Icon(Icons.account_circle),
            ],
          ),
        ),
      ), //BottomAppBar
    );
  }
}