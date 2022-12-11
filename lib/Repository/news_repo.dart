import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:updatenewsappprovider/Repository/server_config.dart';


import '../Model/News Model/Latest_news_model.dart';
import '../Model/News Model/News_details_model.dart';


class NewsRepo{

  Future<LatestNewsModel> getNews()async{
    var respons= await http.get(Uri.parse(Config.serverNewsUrl+Config.letestNewsUrl));
    if(respons.statusCode==200){
      return LatestNewsModel.fromJson(jsonDecode(respons.body));
    }else{
      throw Exception('Error Occurred');
    }
  }


  Future<NewsDetailsModel> getNewsDetails(String id)async{
    var respons= await http.get(Uri.parse('${Config.serverNewsUrl+Config.newsDetailssUrl}/$id'));
    if(respons.statusCode==200){
      return NewsDetailsModel.fromJson(jsonDecode(respons.body));
    }else{
      throw Exception('Error Occurred');
    }
  }



}