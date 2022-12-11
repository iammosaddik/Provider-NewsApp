
// import '../Widget/news_card_widget.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:iconly/iconly.dart';
import 'package:intl/intl.dart';
import 'package:updatenewsappprovider/Provider/news_provider.dart';

import '../../Constant Data/app_color.dart';
import '../../Model/News Model/News_details_model.dart';
import '../../Repository/news_repo.dart';
import '../../Widget/news_card_widget.dart';

class NewsDetailsNextScreen extends StatefulWidget {
  const NewsDetailsNextScreen({Key? key, required this.newsId}) : super(key: key);


 final String newsId;


  @override
  State<NewsDetailsNextScreen> createState() => _NewsDetailsNextScreenState();
}

class _NewsDetailsNextScreenState extends State<NewsDetailsNextScreen> {
@override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          elevation: 0.0,
         backgroundColor: Colors.transparent,
         leading: IconButton(onPressed: (){Navigator.pop(context);},
             icon: const Icon(Icons.arrow_back_ios_new,color: Colors.black,)),
        ),
        body:  Consumer(builder: (_,ref,watch){
          AsyncValue<NewsDetailsModel> details = ref.watch(getNewsDetailsProvider(widget.newsId));
          return details.when(data: (detailsN){
            return  RefreshIndicator(
              color: Colors.red,
              backgroundColor: Colors.green,
              semanticsLabel: ('Loading'),
              semanticsValue: ('Loading'),
              onRefresh: () async => ref.refresh(getNewsDetailsProvider(widget.newsId)),
              child: SingleChildScrollView(
                physics: const AlwaysScrollableScrollPhysics(),
                child: Padding(
                  padding: const EdgeInsets.only(top: 60.0),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              children: [
                                Container(
                                  decoration: const BoxDecoration(
                                      border: Border(bottom: BorderSide(color: Colors.blue,width: 2))
                                    ),
                                  child: Text(detailsN.data?.newsCategory?? '',
                                    style:  const TextStyle(
                                        color: Colors.blue,
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold),),
                                ),
                              ],
                            ),
                            const SizedBox(height: 10,),
                            Text(detailsN.data?.newsCategoryslug?? '',
                              style: const TextStyle(
                                  color: Colors.grey,
                                  fontSize: 16,
                                  fontStyle: FontStyle.italic),),
                            const SizedBox(height: 5,),
                            Text(detailsN.data?.newsSubcategory?? '',
                              style: const TextStyle(
                                  color: Colors.grey,
                                  fontSize: 16,
                                  fontStyle: FontStyle.italic),),
                            const SizedBox(height: 10,),
                            Text(detailsN.data?.summary?? '',
                              style: const TextStyle(
                                  color: Colors.black,
                                  fontSize: 22
                              ),),
                            Row(
                              children: [
                                const Text('Writer : ', style: TextStyle(color: Colors.black,fontSize: 19,fontWeight: FontWeight.bold),),
                                Text(detailsN.data?.reporterName?? ''),
                              ],
                            ),
                            const SizedBox(height: 10,),
                            Row(
                              children: [
                                const Icon(IconlyBold.time_circle,color: Colors.grey,),
                                const SizedBox(width: 5.0,),
                                const Text('Date : ', style: TextStyle(color: Colors.grey,fontSize: 15),
                                ),
                                Text(detailsN.data?.date?? '',
                                  style: const TextStyle(
                                      color: Colors.grey,
                                      fontSize: 15,
                                      fontStyle: FontStyle.italic
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Row(
                          children: [
                            Container(
                              width: 35,
                              height: 35,
                              decoration: BoxDecoration(
                                  color: Colors.blue,
                                  borderRadius: BorderRadius.circular(50)
                              ),
                              child: IconButton( onPressed: (){}, icon:  const Icon(
                                FontAwesomeIcons.facebookF,color: Colors.white,size: 20,),focusColor: Colors.blue,hoverColor: Colors.blue,),
                            ),
                            const SizedBox(width: 10,),
                            Container(
                              width: 35,
                              height: 35,
                              decoration: BoxDecoration(
                                  color: Colors.blue,
                                  borderRadius: BorderRadius.circular(50)
                              ),
                              child: IconButton( onPressed: (){}, icon:  const Icon(
                                FontAwesomeIcons.twitter,color: Colors.white,size: 20,
                              ),
                              ),
                            ),
                            const SizedBox(width: 10,),
                            Container(
                              width: 35,
                              height: 35,
                              decoration: BoxDecoration(
                                  color: Colors.blue,
                                  borderRadius: BorderRadius.circular(50)
                              ),
                              child: IconButton( onPressed: (){}, icon:  const Icon(
                                FontAwesomeIcons.google,color: Colors.white,size: 20,)),
                            ),
                            const SizedBox(width: 10,),
                            Container(
                              width: 35,
                              height: 35,
                              decoration: BoxDecoration(
                                  color: redGreyColor,
                                  borderRadius: BorderRadius.circular(50)
                              ),
                              child: IconButton( onPressed: (){}, icon:  const Icon(
                                FontAwesomeIcons.share,color: Colors.red,size: 20,),focusColor: Colors.blue,hoverColor: Colors.blue,),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 10,),
                      FeaturesNewsCard(
                        imageUrl: detailsN.data?.image?[0].toString()?? 'images/news.jpeg',
                        titles: detailsN.data?.title?? '',
                      ),

                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child:  Text(Bidi.stripHtmlIfNeeded(detailsN.data?.description?? ''), style: const TextStyle(color: Colors.grey,fontSize: 15),),
                      )
                    ],
                  ),
                ),
              ),
            );
          }, error: (e,stack){
            return Center(child: Text(e.toString()));
          }, loading: (){
            return Center(child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                CircularProgressIndicator(),
                SizedBox(width: 10,),
                Text('Loading....',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,),)
              ],
            ));
          });
        })
      ),
    );
  }
}
