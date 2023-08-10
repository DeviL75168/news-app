import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:news/feature/news/data/news_model.dart';

import '../date_time.dart';

class NewsCard extends StatelessWidget {
  const NewsCard({super.key, required this.news, this.fromNewsDetails});
  final Articles? news;
  final bool? fromNewsDetails;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: fromNewsDetails ?? false
      ?Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Text('News Title :${news?.title}', style: const TextStyle(fontWeight: FontWeight.bold, color: Colors.black87, fontSize: 16),),
            const Text(''),

            CachedNetworkImage(
              //  imageUrl: "http://via.placeholder.com/350x150",
              imageUrl: news?.urlToImage ?? '',

              placeholder: (context, url) => CircularProgressIndicator(),
              errorWidget: (context, url, error) => const SizedBox.shrink(),
              //errorWidget: (context, url, error) => Icon(Icons.error),
            ),

            // Image.network(news?.urlToImage ?? ''),
            const SizedBox(height: 16,),

            Text('${news?.description}', style: const TextStyle(fontSize: 15),),
            const Text(''),

            // Image.network('${news?.urlToImage}')
          ],
        ),
      )

      :Card(child: newsCardWidget(),
      ),
    );

  }
  //better option stateless
  newsCardWidget(){
   return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Text('News Title :${news?.title}', style: const TextStyle(fontWeight: FontWeight.bold, color: Colors.black87, fontSize: 16),),
          const Text(''),

          CachedNetworkImage(
            //  imageUrl: "http://via.placeholder.com/350x150",
            imageUrl: news?.urlToImage ?? '',

            placeholder: (context, url) => CircularProgressIndicator(),
            errorWidget: (context, url, error) => const SizedBox.shrink(),
            //errorWidget: (context, url, error) => Icon(Icons.error),
          ),

          // Image.network(news?.urlToImage ?? ''),
          const SizedBox(height: 16,),

          Text('${news?.description}', style: const TextStyle(fontSize: 15),),
          const Text(''),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('${news?.author}',style: const TextStyle(
                  fontWeight: FontWeight.w600
              ),),

              //Text(DateTimeFormatted.convertDateTime(news?.publishedAt??'')),
            ],
          )
          // Image.network('${news?.urlToImage}')
        ],
      ),
    );
  }
}
