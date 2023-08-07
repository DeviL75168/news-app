import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news/feature/news/presentation/widgets/news_card.dart';

import '../data/news_model.dart';

class NewsDetails extends StatelessWidget {
  const NewsDetails({super.key, required this.news, this.newsList});

final Articles? news;
final List<Articles>? newsList;
  @override
  Widget build(BuildContext context) {

    //We filtered the news by removing the currently selected news

    final similarNews = newsList?.where((element) => element!=news).toList();

    return Scaffold(
      backgroundColor: CupertinoColors.activeOrange,
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
                Text(''),
                Text('See More:\n${news?.url??''}',style: TextStyle(fontSize: 14.5,color: Colors.blue),),
                SizedBox(height: 30,),

                Row(
                  children: [

                    Text('Similar News: ',style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.all(4),
                  child: Center(child: Text('',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),)),
                ) ,
                ListView.separated(
                  shrinkWrap: true,
                  itemCount: similarNews?.length ?? 0,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index){
                    var news = similarNews?[index];
                    return InkWell(

                        onTap:(){

                          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => NewsDetails(news: news,
                          newsList: newsList,)
                          ));

                        },

                        child: NewsCard(news : news, fromNewsDetails: false,));
                    // return Text('News Title :${snapshot.data?[index].title}');

                  }, separatorBuilder: (BuildContext context, int index) {
                  return const SizedBox();

                },


                ),
              ],
            ),
          ),


        ],
      ),

    );
  }
}
