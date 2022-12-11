import 'package:anim_search_bar/anim_search_bar.dart';
import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
class DetailsAppbar extends StatefulWidget {
  const DetailsAppbar({Key? key}) : super(key: key);

  @override
  State<DetailsAppbar> createState() => _DetailsAppbarState();
}

class _DetailsAppbarState extends State<DetailsAppbar> {

  TextEditingController textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return  Container(
      child: Padding(
        padding: const EdgeInsets.only(left: 10.0,right: 10.0),
        child: Row(
          children: [
            const Icon(Icons.arrow_back_ios_new).onTap(()=> Navigator.pop(context)),
            const Spacer(),
            Container(
                color: Colors.white,
                height: 64,
                child: AnimSearchBar(
                  width: 300,
                  textController: textEditingController,
                  suffixIcon:  const Icon(Icons.clear,color: Colors.black,),
                  prefixIcon: const Icon(Icons.search,color: Colors.black,),
                  onSuffixTap: (){
                    setState(() {
                      textEditingController.clear();
                    });
                  },
                  color: Colors.white10,
                  helpText: 'Search Text...',style: const TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 18),
                  autoFocus: true,
                  animationDurationInMilli: 200,
                  rtl: true,
                )
            ),
          ],
        ),
      ),

    );

  }
}


