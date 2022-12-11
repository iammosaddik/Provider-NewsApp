
import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:updatenewsappprovider/Authentication/sign_up.dart';

import '../Constant Data/app_color.dart';

class NewPassword extends StatefulWidget {
  const NewPassword({Key? key}) : super(key: key);

  @override
  State<NewPassword> createState() => _NewPasswordState();
}

class _NewPasswordState extends State<NewPassword> {
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
                Text('Create New Password 🔒',style: TextStyle(color: blackPrimaryColor, fontWeight: FontWeight.bold,fontSize: 24),),
                SizedBox(height: 8,),
                Text('You can create a new password, please don\'t \nforget it too.',style: TextStyle(color: greyPrimaryColor,fontSize: 16),),
                SizedBox(height: 32,),
                AppTextField(textFieldType: TextFieldType.PASSWORD,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)
                      ),
                      hintText: 'Enter Your Password',
                      labelText: 'Enter Your Password',
                      labelStyle: TextStyle(fontWeight: FontWeight.bold,),
                      hintStyle: TextStyle(fontWeight: FontWeight.bold,color: greyPrimaryColor),
                      prefixIcon: Icon(Icons.lock,color: greyPrimaryColor,)
                  ),),
                SizedBox(height: 16,),
                AppTextField(textFieldType: TextFieldType.PASSWORD,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)
                      ),
                      hintText: 'Re-Enter Your Password',
                      labelText: 'Re-Enter Your Password',
                      labelStyle: TextStyle(fontWeight: FontWeight.bold,),
                      hintStyle: TextStyle(fontWeight: FontWeight.bold,color: greyPrimaryColor),
                      prefixIcon: Icon(Icons.lock,color: greyPrimaryColor,)
                  ),),
                SizedBox(height: 16,),
                Container(
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                        color: purplePrimaryColor,
                        borderRadius: BorderRadius.circular(8)
                    ),
                    child: const Center(
                      child: Text('Confirm',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18
                        ),
                      ),
                    )
                ).onTap(()=>SignUp().launch(context)),
                SizedBox(height: 418,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('Didn’t receive an email?'),
                    Text(' Send again',style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.bold),)
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

