
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:updatenewsappprovider/Model/Category%20Model/Category_details_model.dart';
import 'package:updatenewsappprovider/Provider/news_provider.dart';

import '../../Widget/category_card_widget.dart';
import '../Home_Page/news_details_next_screen.dart';
import 'category_details_coustom_appbar.dart';


class CategoryDetailsPage extends StatefulWidget {
  const CategoryDetailsPage({Key? key, required this.newsId}) : super(key: key);

  final String newsId;

  @override
  State<CategoryDetailsPage> createState() => _CategoryDetailsPageState();
}

class _CategoryDetailsPageState extends State<CategoryDetailsPage> {

  TextEditingController textEditingController=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: const PreferredSize(preferredSize: Size.fromHeight(64), child: DetailsAppbar()),
          body: Consumer(builder: (_,ref,watch){
            AsyncValue<CategoryDetailsModel> category=ref.watch(getCategoryDetailsProvider(widget.newsId));
            return category.when(data: (categoryD){
              return  RefreshIndicator(
                onRefresh: () async => ref.refresh(getCategoryDetailsProvider(widget.newsId)),
                child: ListView.builder(
                  physics: const AlwaysScrollableScrollPhysics(),
                    itemCount: categoryD.datas?.data?.length ?? 0,
                    itemBuilder: (context,index){
                      return Column(
                        children: [
                          CategoryFutureDetails(imageUrl:categoryD.datas?.data?[index].image?[0] ?? '',
                              titles: categoryD.datas?.data?[index].title ?? '').visible(index==0),
                          CategoryFututreCard2(titles:categoryD.datas?.data?[index].title ?? '',
                            imageUrl: categoryD.datas?.data?[index].image?[0] ?? '',
                            times: categoryD.datas?.data?[index].date ?? '',).visible(index!=0)
                        ],
                      ).onTap(()=> NewsDetailsNextScreen(newsId: categoryD.datas!.data![index].id.toString()).launch(context));
                    }
                ),
              );
            }, error: (e,stack){
              return Center(child: Text(e.toString()));
            }, loading: (){
              return  Column(
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


