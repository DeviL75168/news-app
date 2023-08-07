//we created a seperate class to handle network request, then installed dio package(to perform, network call, api call, server request/response )
// http : https://pub.dev/packages/http/install
// dio : https://pub.dev/packages/dio

import 'package:dio/dio.dart';
import 'package:news/core/const/apps_urls.dart';
import 'package:news/feature/news/data/news_model.dart';

final network = NetworkRequest();

class NetworkRequest{

static final dio = Dio();

static Future<List<Articles>?> getTopNews() async{
final response = await dio.get(AppUrls.topNews);
print("Server Response : ${response.statusCode}");
//print("Server Response : ${response.data['articles']}");

return NewsModel.fromJson(response.data).articles ?? [];

 }

}