
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:nb_utils/nb_utils.dart';

import '../Constant Data/app_color.dart';
import 'create_new_password.dart';

class VarificationPage extends StatefulWidget {
  const VarificationPage({Key? key}) : super(key: key);

  @override
  State<VarificationPage> createState() => _VarificationPageState();
}

class _VarificationPageState extends State<VarificationPage> {
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
                Text('Verification Code ✅',style: TextStyle(color: blackPrimaryColor, fontWeight: FontWeight.bold,fontSize: 24),),
                SizedBox(height: 8,),
                Text('You need to enter 4-digit code we send to\nyour email adress.',style: TextStyle(color: greyPrimaryColor,fontSize: 16),),
                SizedBox(height: 32,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 68,
                      width: 68,
                      child: AppTextField(textFieldType: TextFieldType.NUMBER,
                        onChanged: (value){
                        if(value.length==1){
                          FocusScope.of(context).nextFocus();
                        }
                        },
                        textStyle: TextStyle(color: Colors.blue,fontSize: 20,fontWeight: FontWeight.bold),
                        inputFormatters: [
                          FilteringTextInputFormatter.digitsOnly,
                          LengthLimitingTextInputFormatter(1)
                        ],
                        textAlign: TextAlign.center,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10)
                            ),
                        ),),
                    ),
                    Container(
                      height: 68,
                      width: 68,
                      child: AppTextField(textFieldType: TextFieldType.NUMBER,
                        onChanged: (value){
                        if(value.length==1){
                          FocusScope.of(context).nextFocus();
                        }
                        },
                        textStyle: TextStyle(color: Colors.blue,fontSize: 20,fontWeight: FontWeight.bold),
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(1),
                          FilteringTextInputFormatter.digitsOnly
                        ],
                        textAlign: TextAlign.center,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10)
                            )
                        ),
                      ),
                    ),
                    Container(
                      height: 68,
                      width: 68,
                      child: AppTextField(textFieldType: TextFieldType.NUMBER,
                        onChanged: (value){
                        if(value.length==1){
                          FocusScope.of(context).nextFocus();
                        }
                        },
                        textStyle: TextStyle(color: Colors.blue,fontSize: 20,fontWeight: FontWeight.bold),
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(1),
                          FilteringTextInputFormatter.digitsOnly
                        ],
                        textAlign: TextAlign.center,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10)
                            )
                        ),
                      ),
                    ),
                    Container(
                      height: 68,
                      width: 68,
                      child: AppTextField(textFieldType: TextFieldType.NUMBER,
                        onChanged: (value){
                        if(value.length==1){
                          FocusScope.of(context).nextFocus();
                        }
                        },
                        textStyle: TextStyle(color: Colors.blue,fontSize: 20,fontWeight: FontWeight.bold),
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(1),
                          FilteringTextInputFormatter.digitsOnly
                        ],
                        textAlign: TextAlign.center,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10)
                            )
                        ),
                      ),
                    ),
                  ],
                ),

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
                ).onTap(()=> NewPassword().launch(context)),
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

