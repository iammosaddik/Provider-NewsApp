

 import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:updatenewsappprovider/Repository/category_repo.dart';
import 'package:updatenewsappprovider/Repository/news_repo.dart';


// Home Page Provider.............
final getLatestNewsProvider = FutureProvider((ref) => NewsRepo().getNews());
final getNewsDetailsProvider = FutureProvider.family((ref,newsId) => NewsRepo().getNewsDetails(newsId.toString()));

//Category Page Provider...........
final getCategoryProvider = FutureProvider((ref) => CategoryRepo().getcategory());
final getCategoryDetailsProvider = FutureProvider.family((ref,newsId) => CategoryRepo().getcategoryDetails(newsId.toString()));