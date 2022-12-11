import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:updatenewsappprovider/Authentication/sign_in.dart';

import '../Constant Data/app_color.dart';

class GetStarted extends StatefulWidget {
  const GetStarted({Key? key}) : super(key: key);

  @override
  State<GetStarted> createState() => _GetStartedState();
}

class _GetStartedState extends State<GetStarted> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 277,
            width: double.infinity,
            child: Image(image: AssetImage('images/handshak.png'),),
          ),
          SizedBox(height: 120,),
          const Text('Welcome', style: TextStyle(color: Colors.black,fontSize: 22,fontWeight: FontWeight.bold),),
          SizedBox(height: 24,),
          const Text('All news in one place, be the\nfirst to know last news', style: TextStyle(color: Colors.black,fontSize: 16),textAlign: TextAlign.center,),
          SizedBox(height: 64,),
          Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 19),
            child: Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                    color: purplePrimaryColor,
                    borderRadius: BorderRadius.circular(8)
                ),
                child: const Center(
                  child: Text('Get Started',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18
                    ),
                  ),
                )
            ).onTap(()=> const SignIn().launch(context)),
          ),

        ],
      ),
    );
  }
}
