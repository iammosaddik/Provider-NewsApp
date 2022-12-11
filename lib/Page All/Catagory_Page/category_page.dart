import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:updatenewsappprovider/Provider/news_provider.dart';

import '../../Constant Data/app_color.dart';
import '../../Model/Category Model/Category_news_model.dart';
import 'category_details_page.dart';
import 'category_page_coustom_appbar.dart';

class CategoryPage extends StatefulWidget {
  const CategoryPage({Key? key}) : super(key: key);

  @override
  State<CategoryPage> createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {

  TextEditingController textController= TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: const PreferredSize(preferredSize: Size.fromHeight(64), child: CategoryAppbar()),
        body: Consumer(builder: (_,ref,watch){
          AsyncValue<CategoryNewsModel> category= ref.watch(getCategoryProvider);
          return category.when(data: (categoryN){
             return RefreshIndicator(
               onRefresh: () async => ref.refresh(getCategoryProvider),
               child: GridView.builder(
                 physics: const AlwaysScrollableScrollPhysics(),
                  gridDelegate:  const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 5.0,
                      mainAxisSpacing: 5.0
                  ),
                  itemCount:categoryN.datas?.data?.length ?? 0,
                  itemBuilder: (_,index){
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: InkWell(
                        onTap: (()=> CategoryDetailsPage(newsId: categoryN.datas!.data![index].id.toString(),).launch(context)),
                        child: Stack(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                gradient: ThemeColor().gradientColor(),
                                borderRadius: BorderRadius.circular(10),
                                image: DecorationImage(image: NetworkImage(categoryN.datas?.data?[index].image?? ''),fit: BoxFit.fill),
                              ),
                            ),
                            Positioned(
                                bottom: 10,
                                right: 10,
                                child: Text(categoryN.datas?.data?[index].name.toString() ?? '', style: const TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 22),))
                          ],
                        ),
                      ),
                    );
                  }),
             );
          }, error: (e,stack){
            return Center(child: Text(e.toString()));
          }, loading: (){
            return  Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                CircularProgressIndicator(),
                SizedBox(width: 10,),
                Text('Loading...', style:  TextStyle(color: Colors.black,fontWeight: FontWeight.bold,),)
              ],
            );
          });
        })
      ),
    );
  }
}
