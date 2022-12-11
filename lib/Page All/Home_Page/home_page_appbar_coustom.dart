import 'package:anim_search_bar/anim_search_bar.dart';
import 'package:flutter/material.dart';

class HomePageCoustomAppbar extends StatefulWidget {
  const HomePageCoustomAppbar({Key? key}) : super(key: key);

  @override
  State<HomePageCoustomAppbar> createState() => _HomePageCoustomAppbarState();
}

class _HomePageCoustomAppbarState extends State<HomePageCoustomAppbar> {

  TextEditingController textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return  Container(
      child: Padding(
        padding: const EdgeInsets.only(left: 10.0,right: 10.0),
        child: Container(
            color: Colors.white,
            height: 64,
            child: AnimSearchBar(
              width: 400,
              textController: textController,
              suffixIcon:  const Icon(Icons.clear,color: Colors.black,),
              prefixIcon: const Icon(Icons.search,color: Colors.black,),
              onSuffixTap: (){
                setState(() {
                  textController.clear();
                });
              },
              color: Colors.white10,
              helpText: 'Search Text...',style: const TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 18),
              autoFocus: true,
              animationDurationInMilli: 200,
              rtl: true,
            )
        ),
      ),
    );
  }
}
