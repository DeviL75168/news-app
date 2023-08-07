
import 'package:flutter/material.dart';
import 'package:news/%20config/network/network_request.dart';
import 'package:news/feature/news/presentation/news_details.dart';
import 'package:news/feature/news/presentation/widgets/news_card.dart';

import '../data/news_model.dart';

class NewsPage extends StatefulWidget {
  const NewsPage({super.key});

  @override
  State<NewsPage> createState() => _NewsPageState();
}

class _NewsPageState extends State<NewsPage> {

  @override
  void initState() {

    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return  RefreshIndicator(
      onRefresh: () async{
        await NetworkRequest.getTopNews();
      },
      child: ListView(
        children: [
       //   Center(child: Text('News Page')),

          FutureBuilder<List<Articles>?>(
            //We call the data that actually brings the data from the server
              future: NetworkRequest.getTopNews(),
              // In snapshot we get data that we passed in the FutureBuilder
              builder: (context, snapshot) {

                if(snapshot.hasData){

                  return ListView.separated(
                    shrinkWrap: true,
                    itemCount: snapshot.data?.length ?? 0,
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index){
                      var news = snapshot.data?[index];
                      return InkWell(
                          
                        onTap:(){
                          
                          Navigator.push(context, MaterialPageRoute(builder: (context) => NewsDetails(news: news)
                          ));
                          
                        },
                        
                          child: NewsCard(news : news));
                      // return Text('News Title :${snapshot.data?[index].title}');

                    }, separatorBuilder: (BuildContext context, int index) {
                    return const SizedBox();

                  },


                  );
                }

                else if(snapshot.hasError){
                  //print('Error: ${snapshot.error}');
                  return Center(child: Text('Error: ${snapshot.error}'),);
                }
                else{
                  return const CircularProgressIndicator();
                }

                //return Text('');
              }

          )

        ],
      ),
    );

  }
}
