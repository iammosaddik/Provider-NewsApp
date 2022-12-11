import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

import '../Constant Data/app_color.dart';

class CategoryFututreCard2 extends StatelessWidget {
   CategoryFututreCard2({
    Key? key,
    required this.titles,
    required this.imageUrl,
     required this.times,
  }) : super(key: key);

  final String titles;
  final String imageUrl;
  final String times;
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
                    Text(titles, maxLines: 2, style: const TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold)),
                    const SizedBox(height: 10,),
                    Row(
                      children: [
                        const Icon(IconlyBold.time_circle,color: Colors.grey,),
                        const SizedBox(width: 10,),
                        Text(times,style:  const TextStyle(color: Colors.grey,),),
                      ],
                    ),
                  ],
                ),
              ),
              Expanded(
                  flex: 2,
                  child: Container(
                      decoration: BoxDecoration(
                        gradient: ThemeColor().gradientColor()
                      ),
                      child: Image.network(imageUrl,fit: BoxFit.cover,)))
            ],
          ),
          const Divider(color: Colors.black,thickness: 2,),
        ],
      ),
    );
  }
}

class CategoryFutureDetails extends StatelessWidget {
  const CategoryFutureDetails({
    Key? key,
    required this.imageUrl,
    required this.titles,
  }) : super(key: key);

  final String imageUrl;
  final String titles;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.network(imageUrl,fit: BoxFit.cover,),
        const SizedBox(height: 10,),
        Padding(
          padding: const EdgeInsets.only(left: 10.0,right: 10.0),
          child: Text(titles,
            maxLines: 2,
            style: const TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),
          ),
        ),
        const SizedBox(height: 10,),
        const Padding(
          padding: EdgeInsets.only(left: 10.0,right: 10.0,bottom: 10.0),
          child: Divider(color: Colors.black,thickness: 1.7,),
        ),
      ],
    );
  }
}
