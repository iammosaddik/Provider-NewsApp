
import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:updatenewsappprovider/Authentication/verification_page.dart';

import '../Constant Data/app_color.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Forgot Password 🤔',style: TextStyle(color: blackPrimaryColor, fontWeight: FontWeight.bold,fontSize: 24),),
                SizedBox(height: 8,),
                Text('We need your email adress so we can send \nyou the password reset code.',style: TextStyle(color: greyPrimaryColor,fontSize: 16),),
                SizedBox(height: 32,),
                AppTextField(textFieldType: TextFieldType.EMAIL,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)
                      ),
                      hintText: 'Enter Your Email',
                      labelText: 'Email Address',
                      labelStyle: TextStyle(fontWeight: FontWeight.bold,),
                      hintStyle: TextStyle(fontWeight: FontWeight.bold,color: greyPrimaryColor),
                      prefixIcon: Icon(Icons.email,color: greyPrimaryColor,)
                  ),),
                SizedBox(height: 16,),
                Container(
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                        color: purplePrimaryColor,
                        borderRadius: BorderRadius.circular(8)
                    ),
                    child: const Center(
                      child: Text('Next',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18
                        ),
                      ),
                    )
                ).onTap(()=>VarificationPage().launch(context)),
                SizedBox(height: 418,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('Remember the password? '),
                    Text('Try again',style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.bold),)
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

