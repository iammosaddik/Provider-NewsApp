import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:updatenewsappprovider/Authentication/sign_in_forgot.dart';
import 'package:updatenewsappprovider/Authentication/sign_up.dart';

import '../Constant Data/app_color.dart';
import '../Page All/bottomnafigationbar.dart';
import '../Repository/auth_repo.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}


class _SignInState extends State<SignIn> {

  TextEditingController emailAddressController= TextEditingController();
  TextEditingController passwordController= TextEditingController();

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
                const Text('Welcome Back 👋',style: TextStyle(color: blackPrimaryColor, fontWeight: FontWeight.bold,fontSize: 24),),
                const SizedBox(height: 8,),
                const Text('I am happy to see you again. You can \ncontinue where you left off by logging in',style: TextStyle(color: greyPrimaryColor,fontSize: 16),),
                const SizedBox(height: 32,),
                AppTextField(textFieldType: TextFieldType.EMAIL,
                controller: emailAddressController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10)
                  ),
                  hintText: 'Enter Your Email',
                  labelText: 'Email Address',
                  labelStyle: const TextStyle(fontWeight: FontWeight.bold,),
                  hintStyle: const TextStyle(fontWeight: FontWeight.bold,color: greyPrimaryColor),
                  prefixIcon: const Icon(Icons.email,color: greyPrimaryColor,)
                ),),
                const SizedBox(height: 16,),
                AppTextField(textFieldType: TextFieldType.PASSWORD,
                  controller: passwordController,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)
                      ),
                      hintText: 'Password',
                      labelText: 'Password',
                      labelStyle: const TextStyle(fontWeight: FontWeight.bold),
                      hintStyle: const TextStyle(fontWeight: FontWeight.bold,color: greyPrimaryColor),
                      prefixIcon: const Icon(Icons.lock,color: greyPrimaryColor,)
                  ),),
                const SizedBox(height: 16,),
                Container(
                  alignment: Alignment.centerRight,
                    child: const Text('Forgot Password?',
                      style: TextStyle(
                          color: greyPrimaryColor,
                          fontSize: 16,
                      ),
                    ).onTap(()=> const SignInForgot().launch(context)),
                ),
                const SizedBox(height: 24,),
                InkWell(
                  onTap: (() async {
                    if(emailAddressController.text.isEmpty){
                      toast('Please Enter Your Email Address');
                    }else if(passwordController.text.isEmpty){
                      toast('Please Enter Your Correct Password');
                    }else{
                      try{
                        EasyLoading.show(status:'Signing In...');
                        bool status=await AuthRepo().signInWithWEmail(emailAddressController.text, passwordController.text);
                        if(status){
                          EasyLoading.showSuccess('Sign In SuccessFull');
                          HomeBottomNavigationBar().launch(context,isNewTask: true);
                        }else{
                          EasyLoading.showError('Email or Password wrong');
                        }
                      }catch(e){
                        EasyLoading.showError(e.toString());
                      }
                    }
                  }),
                  child: Container(
                      padding: const EdgeInsets.all(20),
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
                  ),
                ),
                const SizedBox(height: 48,),
                const Center(child: Text('or',style: TextStyle(fontSize: 15),)),
                const SizedBox(height: 64,),
                Container(padding: const EdgeInsets.only(left: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(color: greyPrimaryColor,width: 1.0),
                  ),
                  child: Container(
                    alignment: Alignment.center,
                    height: 56,
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      image:  DecorationImage(image: AssetImage('images/google.png'),alignment: Alignment.centerLeft,scale: 3.5,),
                    ),
                    child: const Text('Sign In with Google',style: TextStyle(color: greyDarkerColor,fontSize: 16),),
                  ),
                ),
                const SizedBox(height: 16,),
                Container(padding: const EdgeInsets.only(left: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(color: greyPrimaryColor,width: 1.0),
                  ),
                  child: Container(
                    alignment: Alignment.center,
                    height: 56,
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      image:  DecorationImage(image: AssetImage('images/facebook.png'),alignment: Alignment.centerLeft,scale: 3.5,),
                    ),
                    child: const Text('Sign In with Facebook',style: TextStyle(color: greyDarkerColor,fontSize: 16),),
                  ),
                ),
               const SizedBox(height: 66,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('Don\'t have an account? '),
                    const Text('Sign Up',style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.bold),).onTap(()=>SignUp().launch(context)),
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

