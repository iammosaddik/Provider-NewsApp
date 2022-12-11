
import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:updatenewsappprovider/Repository/server_config.dart';

import '../Model/Category Model/Category_details_model.dart';
import '../Model/Category Model/Category_news_model.dart';

class CategoryRepo{

  Future<CategoryNewsModel> getcategory()async{
    var response= await http.get(Uri.parse(Config.serverNewsUrl + Config.categoryNewsUrl));
    if(response.statusCode==200){
      return CategoryNewsModel.fromJson(jsonDecode(response.body));
    }
    else{
      throw Exception('Error');
    }
  }


  Future<CategoryDetailsModel> getcategoryDetails(String id)async{
    var response= await http.get(Uri.parse('${Config.serverNewsUrl + Config.categoryDetailsUrl}/$id'));
    if(response.statusCode==200){
      return CategoryDetailsModel.fromJson(jsonDecode(response.body));
    }
    else{
      throw Exception('Error');
    }
  }

}