import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news/feature/news/presentation/widgets/news_card.dart';

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
        children: [

          NewsCard(news: news, fromNewsDetails: true,),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                Row(
                  children: [
                    Text('Content: ',style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),),
                  ],
                ),
                SizedBox(height: 16,),
                Text(news?.content ??'',style: TextStyle(fontSize: 14.5,),),
              ],
            ),
          ),

          Padding(
            padding: EdgeInsets.all(150.0),
            child: Center(child: Text('',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),)),
          ) ,
        ],
      ),

    );
  }
}
