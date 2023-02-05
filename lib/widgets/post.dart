import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:tribe_v3/constants/common_size.dart';

class Post extends StatelessWidget {
  final int index;
  const Post(this.index, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        _postHeader(),
        _postImage(),
      ],
    );
  }

  Widget _postHeader(){
    return Row(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(common_xxs_gap),
          child: ClipOval(
            child: CachedNetworkImage(
              imageUrl: 'https://picsum.photos/100',
              width: avatar_size,
              height: avatar_size,
            ),
          ),
        ),
        Expanded(child: Text('username')),
        IconButton(
          onPressed: null,
          icon: Icon(
            Icons.more_horiz,
            color: Colors.black87,
          ),
        ),
      ],
    );
  }

  CachedNetworkImage _postImage() {
    return CachedNetworkImage(
        imageUrl: 'https://picsum.photos/id/$index/200/200',
        imageBuilder: (BuildContext context, ImageProvider imageProvider){
          return AspectRatio(
            aspectRatio: 1,
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(image: imageProvider, fit: BoxFit.cover)
                ),
              ),
          );
        },
      );
  }
}
