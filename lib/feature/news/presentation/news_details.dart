import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../data/news_model.dart';

class NewsDetails extends StatelessWidget {
  const NewsDetails({super.key, required this.news});

final Articles? news;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CupertinoColors.systemBlue,
      appBar:AppBar(
        backgroundColor: Colors.red,
        title: Text(news?.title??'',
          maxLines: 2,
          overflow: TextOverflow.ellipsis,

          style: const TextStyle(color: Colors.white,fontSize: 14,fontWeight: FontWeight.bold),),) ,

      body: ListView(
        children: const [

          Padding(
            padding: EdgeInsets.all(150.0),
            child: Center(child: Text('News ',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,),)),
          ) ,
        ],
      ),

    );
  }
}
