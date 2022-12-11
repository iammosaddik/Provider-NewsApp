import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:updatenewsappprovider/Model/News%20Model/Latest_news_model.dart';
import '../../Provider/news_provider.dart';
import '../../Widget/news_card_widget.dart';
import 'home_page_appbar_coustom.dart';
import 'news_details_next_screen.dart';
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  TextEditingController textController =TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: const PreferredSize(preferredSize: Size.fromHeight(64), child: HomePageCoustomAppbar()),
        body: Consumer(builder: (_,ref,watch){
          AsyncValue<LatestNewsModel> getLatest = ref.watch(getLatestNewsProvider);
          return getLatest.when(data: (news){
            return  RefreshIndicator(
              onRefresh: ()async => ref.refresh(getLatestNewsProvider),
              child: ListView.builder(
                physics: const AlwaysScrollableScrollPhysics(),
                  itemCount: news.datas?.data?.length?? 0,
                  itemBuilder: (_,index){
                    return Column(
                      children: [
                        FeaturesNewsCard(imageUrl: news.datas?.data?[index].image?[0] ?? 'images/news.jpeg',
                            titles: news.datas?.data?[index].title?? '').visible(index==0),
                        NewsCard(imageUrl: news.datas?.data?[index].image?[0] ?? '',
                          titles: news.datas?.data?[index].title?? '',
                          time: news.datas?.data?[index].date ?? '',).visible(index!=0),
                      ],
                    ).onTap(()=>NewsDetailsNextScreen(newsId: news.datas!.data![index].id.toString(),).launch(context)
                    );
                  }),
            );
          }, error: (e,stack){
            return Center(child: Text(e.toString()));
          }, loading: (){
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    CircularProgressIndicator(),
                    SizedBox(width: 10,),
                    Text('Loading...', style:  TextStyle(color: Colors.black,fontWeight: FontWeight.bold,),),
                  ],
                ),
              ],
            );
          });
        })
      ),
    );
  }
}


