import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tribe_v3/widgets/post.dart';

class FeedScreen extends StatelessWidget {
  //const FeedScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CupertinoNavigationBar(
        leading: IconButton(
          onPressed: null,
          icon: Image.asset('Images/dog.png'),
          /*Icon( Icons.camera_alt, color: Colors.black87, )*/
        ),
        middle: Text('T r i b e', style: TextStyle(fontFamily: 'VeganStyle', color: Colors.black87)),
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            IconButton(onPressed: null,
              icon: ImageIcon(AssetImage('Images/actionbar_camera.png'), color: Colors.black87),),
          ],),
      ),
      body: ListView.builder(itemBuilder: feedListBuilder, itemCount: 30),

    );
  }
  Widget feedListBuilder(BuildContext context, int index){ return Post(index); }
}
