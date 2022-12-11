import 'dart:convert';
import 'package:http/http.dart' as http;

import 'package:shared_preferences/shared_preferences.dart';
import 'package:updatenewsappprovider/Repository/server_config.dart';

import '../Model/Authentication Model/Sign_in_model.dart';
import '../Model/User_profile_model.dart';

class AuthRepo{



  // sign in with email
  Future<bool>signInWithWEmail(String email, String password)async{
    final prefes = await SharedPreferences.getInstance();
    var respons = await http.post(Uri.parse(Config.serverUrl+Config.signInUrl),body: <String,String>{
      'email': email,
      'password': password,
    });
    print(respons.body);
    if(respons.statusCode== 200){
      var decodedData=SignInModel.fromJson(jsonDecode(respons.body));
      await prefes.setString('token', decodedData.data!.token.toString());
      print(prefes.get('token'));
      return true;
    }else{
      throw Exception('User Have Exit');
    }
  }

  //Sign Up Started..........

Future<bool> signUpWithEmail(String name, String email, String phone, String password, String confirmPassword)async{
    final prefes = await SharedPreferences.getInstance();
    String signUp= Config.serverUrl+Config.signUpUrl;
    var respons = await http.post(Uri.parse(signUp),body: <String,String>{
      'name': name,
      'email': email,
      'phone': phone,
      'password': password,
    });
    var data = jsonDecode(respons.body);
    if(respons.statusCode==200){
      var decodedData= SignInModel.fromJson(data);
      await prefes.setString('token', decodedData.data!.token.toString());
      print(prefes.get('token'));
      return true;
    }else{
      throw Exception('User Have Exit');
    }
}

Future<UserProfileModel>getProfile()async{
    final prefes = await SharedPreferences.getInstance();
    String token = prefes.getString('token')!;
    var respons = await http.get(Uri.parse(Config.serverUrl+Config.userProfileUrl),headers: {
      'Authorization': 'Bearer $token'
    });
    print(token);
    print(respons.body);
    var data = jsonDecode(respons.body);
    if(respons.statusCode==200){
      print('responscode ${respons.statusCode}');
      return UserProfileModel.fromJson(data);
    }
    else{
      throw Exception('User Not Found');
    }
}


}