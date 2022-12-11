import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:updatenewsappprovider/Authentication/sign_in.dart';

import '../Constant Data/app_color.dart';
import '../Repository/auth_repo.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {

  TextEditingController nameController= TextEditingController();
  TextEditingController emailAddressController= TextEditingController();
  TextEditingController phoneNumberController= TextEditingController();
  TextEditingController passwordController= TextEditingController();
  TextEditingController confirmPasswordController= TextEditingController();

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
                const Text('Hello, I guess you are new around here. You\ncan start using the application after sign up.',style: TextStyle(color: greyPrimaryColor,fontSize: 16),),
                const SizedBox(height: 32,),
                AppTextField(textFieldType: TextFieldType.NAME,
                  controller: nameController,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)
                      ),
                      hintText: 'Username',
                      labelText: 'Username',
                      labelStyle: const TextStyle(fontWeight: FontWeight.bold,),
                      hintStyle: const TextStyle(fontWeight: FontWeight.bold,color: greyPrimaryColor),
                      prefixIcon: const Icon(Icons.person,color: Colors.blue,)
                  ),),
                const SizedBox(height: 16,),
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
                      prefixIcon: const Icon(Icons.email,color: Colors.blue,)
                  ),),
                const SizedBox(height: 16,),
                AppTextField(textFieldType: TextFieldType.PHONE,
                  controller: phoneNumberController,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)
                      ),
                      hintText: 'Phone Number',
                      labelText: 'Phone Number',
                      labelStyle: const TextStyle(fontWeight: FontWeight.bold),
                      hintStyle: const TextStyle(fontWeight: FontWeight.bold,color: greyPrimaryColor),
                      prefixIcon: const Icon(Icons.lock,color: Colors.blue,)
                  ),),
                const SizedBox(height: 16,),
                AppTextField(textFieldType: TextFieldType.PASSWORD,
                  controller: confirmPasswordController,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)
                      ),
                      hintText: 'Password',
                      labelText: 'Password',
                      labelStyle: const TextStyle(fontWeight: FontWeight.bold),
                      hintStyle: const TextStyle(fontWeight: FontWeight.bold,color: greyPrimaryColor),
                      prefixIcon: const Icon(Icons.lock,color: Colors.blue,)
                  ),),
                const SizedBox(height: 16,),
                AppTextField(textFieldType: TextFieldType.PASSWORD,
                  controller: passwordController,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)
                      ),
                      hintText: 'Re-Enter Your Password',
                      labelText: 'Re-Enter Your Password',
                      labelStyle: const TextStyle(fontWeight: FontWeight.bold),
                      hintStyle: const TextStyle(fontWeight: FontWeight.bold,color: greyPrimaryColor),
                      prefixIcon: const Icon(Icons.lock,color: Colors.blue,)
                  ),),
                const SizedBox(height: 24,),
                InkWell(
                  onTap: (() async {
                    if(emailAddressController.text.isEmpty){
                      toast('Please Enter Your Email');
                    }else if(nameController.text.isEmpty){
                      toast('Please Enter Your Name');
                    }else if(phoneNumberController.text.isEmpty){
                      toast('Please Enter Your Phone Number');
                    }else if(passwordController.text.isEmpty){
                      toast('Please Enter Your Password');
                    }else if(passwordController.text.length<6){
                      toast('Should be at lest 6 digit');
                    }else if(confirmPasswordController.text!=passwordController.text){
                      toast('Password Don\'t Match');
                    }else{
                      try{
                        EasyLoading.show(status: 'Signing Up...');
                        bool status = await AuthRepo().signUpWithEmail(nameController.text, emailAddressController.text, phoneNumberController.text, passwordController.text,confirmPasswordController.text);
                        if(status){

                          EasyLoading.showSuccess('Sign Up Successful');
                          const SignIn().launch(context,isNewTask: true);
                        }else{
                          EasyLoading.showError('Something went wrong please try again');
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
                        child: Text('Sign Up',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 18
                          ),
                        ),
                      )
                  ),
                ),
                const SizedBox(height: 20,),
                const Center(child: Text('or',style: TextStyle(fontSize: 15),)),
                const SizedBox(height: 30,),
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
                    const Text('Sign In',style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.bold),).onTap(()=>const SignIn().launch(context)),
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

