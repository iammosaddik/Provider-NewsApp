
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:nb_utils/nb_utils.dart';

import '../Constant Data/app_color.dart';

class FeaturesNewsCard extends StatelessWidget {
   FeaturesNewsCard({required this.imageUrl, required this.titles,
    Key? key,
  }) : super(key: key);

  final String imageUrl;
  final String titles;

  final List<Color> _colors = [Colors.deepOrange, Colors.redAccent,Colors.blue];
  final List<double> _stops = [0.1,0.3,0.5,];


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: _colors,
              stops: _stops,
            ),
          ),
            child: Image.network(imageUrl,height: 300,width: context.width(),fit: BoxFit.cover,)),
        const SizedBox(height: 6.0,),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Text(titles,style: const TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 20.0),maxLines: 2,overflow: TextOverflow.ellipsis,),
        ),
        const Padding(
          padding: EdgeInsets.only(left: 10.0,right: 10),
          child: Divider(color: Colors.black,thickness: 1.0,),
        )
      ],
    );
  }
}



class NewsCard extends StatelessWidget {
   NewsCard({ required this.titles, required this.imageUrl,
    Key? key, required this.time,
  }) : super(key: key);


  final String imageUrl;
  final String titles;
 final String time;



  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                flex: 3,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(titles,style:  const TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 20.0),maxLines: 3,overflow: TextOverflow.ellipsis,),
                    const SizedBox(height: 10.0,),
                     Row(
                       children: [
                         Icon(IconlyBold.time_circle,color: Colors.grey,),
                         SizedBox(width: 10,),
                         Text(time,style:  const TextStyle(color: Colors.grey,),),
                       ],
                     ),
                  ],
                ),
              ),
              const SizedBox(height:4.0),
              Expanded( flex: 2, child: Container(
                  decoration: BoxDecoration(
                    gradient: ThemeColor().gradientColor(),
                  ),
                  child: Image.network(imageUrl,height: 100, width: 100,fit: BoxFit.fill,)))
            ],
          ),
          const SizedBox(height: 8.0,),
          const Divider(color: Colors.black,),
        ],
      ),
    );
  }
}
