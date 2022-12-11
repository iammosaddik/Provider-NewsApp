
import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';

import '../Constant Data/app_color.dart';
import 'forgot_password.dart';

class SignInForgot extends StatefulWidget {
  const SignInForgot({Key? key}) : super(key: key);

  @override
  State<SignInForgot> createState() => _SignInForgotState();
}

class _SignInForgotState extends State<SignInForgot> {
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
                Text('Welcome Back 👋',style: TextStyle(color: blackPrimaryColor, fontWeight: FontWeight.bold,fontSize: 24),),
                SizedBox(height: 8,),
                Text('I am happy to see you again. You can \ncontinue where you left off by logging in',style: TextStyle(color: greyPrimaryColor,fontSize: 16),),
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
                AppTextField(textFieldType: TextFieldType.PASSWORD,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)
                      ),
                      hintText: 'Password',
                      labelText: 'Password',
                      labelStyle: TextStyle(fontWeight: FontWeight.bold),
                      hintStyle: TextStyle(fontWeight: FontWeight.bold,color: greyPrimaryColor),
                      prefixIcon: Icon(Icons.lock,color: greyPrimaryColor,)
                  ),),
                SizedBox(height: 16,),
                Container(
                  alignment: Alignment.centerRight,
                  child: const Text('Forgot Password?',
                    style: TextStyle(
                      color: greyPrimaryColor,
                      fontSize: 16,
                    ),
                  ),
                ),
                SizedBox(height: 24,),
                Container(
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                        color: purplePrimaryColor,
                        borderRadius: BorderRadius.circular(8)
                    ),
                    child: const Center(
                      child: Text('Sign In',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18
                        ),
                      ),
                    )
                ).onTap(()=> ForgotPassword().launch(context)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

