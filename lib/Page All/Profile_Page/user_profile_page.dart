import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nb_utils/nb_utils.dart';


import '../../Authentication/spelas_screen.dart';
import '../../Model/User_profile_model.dart';
import '../../Repository/auth_repo.dart';

class UserProfile extends StatefulWidget {
  const UserProfile({Key? key}) : super(key: key);

  @override
  State<UserProfile> createState() => _UserProfileState();
}

class _UserProfileState extends State<UserProfile> {

  final GlobalKey<ScaffoldState>_globalKey= GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _globalKey,
      drawer: Drawer(
        child: ListView(
          padding: const EdgeInsets.all(0),
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.green,
              ), //BoxDecoration
              child: UserAccountsDrawerHeader(
                decoration: BoxDecoration(color: Colors.green),
                accountName: Text(
                  "Abhishek Mishra",
                  style: TextStyle(fontSize: 18),
                ),
                accountEmail: Text("abhishekm977@gmail.com"),
                currentAccountPictureSize: Size.square(50),
                currentAccountPicture: CircleAvatar(
                  backgroundColor: Color.fromARGB(255, 165, 255, 137),
                  child: Text(
                    "A",
                    style: TextStyle(fontSize: 30.0, color: Colors.blue),
                  ), //Text
                ), //circleAvatar
              ), //UserAccountDrawerHeader
            ), //DrawerHeader
            ListTile(
              leading: const Icon(Icons.person),
              title: const Text(' My Profile '),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.book),
              title: const Text(' My Course '),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.workspace_premium),
              title: const Text(' Go Premium '),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.video_label),
              title: const Text(' Saved Videos '),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.edit),
              title: const Text(' Edit Profile '),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.logout),
              title: const Text('LogOut'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ), //Deawer

      body: Center(
        child: SafeArea(
          child: FutureBuilder<UserProfileModel>(
            future: AuthRepo().getProfile(),
              builder: (_,snapshot){
            if(snapshot.hasData){
             return Column(
                children:  [
                  Container(
                    height: 64, color: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 8.0,right: 12.0),
                      child: Row(
                        children: [
                          GestureDetector(
                            onTap:(()=> _globalKey.currentState?.openDrawer()) ,
                            child: const CircleAvatar(
                              backgroundColor: Color(0xffF6F6F6),
                              child: Icon(Icons.menu_outlined,color: Colors.black,),
                            ),
                          ),
                          const SizedBox(width: 12,),
                          Text('Profile',style: GoogleFonts.lato(fontSize: 27,fontWeight: FontWeight.bold,color: Colors.black),),
                          const Spacer(),
                          const SizedBox(width: 15,),
                          const CircleAvatar(
                            backgroundColor: Color(0xffF6F6F6),
                            child: FaIcon(FontAwesomeIcons.pencil,color: Colors.black,),
                          ),
                        ],
                      ),
                    ),
                  ),

                  Column(
                    children: [
                      SizedBox(
                        height: 230,
                        child: Stack(
                          children: [
                            Container(
                              height: 200,
                              decoration: const BoxDecoration(
                                  image: DecorationImage(image: AssetImage('images/mosaddik.jpg'),fit: BoxFit.fill)
                              ),
                            ),
                            Positioned(
                              bottom: 60,
                             right: 10,
                             child:
                                 CircleAvatar(
                                   backgroundColor: Colors.white.withOpacity(0.5),
                                   child: const FaIcon(FontAwesomeIcons.camera,color: Colors.black,),
                                 ),
                            ),
                            Positioned(
                              left: 10,
                              top: 110,
                             child: CircleAvatar(
                                   radius: 60,
                                   backgroundColor: const Color(0xFFF6F6F6),
                                   child: Stack(
                                     children: [
                                       Container(
                                       decoration: BoxDecoration(
                                         border: Border.all(color: Colors.black),
                                         borderRadius: BorderRadius.circular(60),
                                         image: const DecorationImage(
                                           image: AssetImage('images/mosaddik.jpg'),fit: BoxFit.fill
                                         )
                                       ),
                                     ),
                                       Positioned(
                                         bottom: 0.0,
                                         right: 0.0,
                                         child: CircleAvatar(
                                           radius: 20,
                                           backgroundColor: Colors.white.withOpacity(0.3),
                                           child: const FaIcon(FontAwesomeIcons.camera,color: Colors.black,),
                                         ),
                                       ),
                                     ]
                                   ),
                                 ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),

                  Padding(
                    padding:  const EdgeInsets.only(top: 10, left: 20),
                    child: Column(
                      children:  [
                        Row(
                          children: [
                            Text( snapshot.data?.data?.user?.name?? '', style: const TextStyle(fontWeight: FontWeight.normal, fontSize: 27,),),
                            const SizedBox(width: 5,),
                            const Text('(Sadik)', style: TextStyle( fontSize: 20,),),
                          ],
                        ),
                        const SizedBox(height: 8,),
                        Row(
                          children: [
                            const Text('Email: ',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                            Text(snapshot.data?.data?.user?.email?? '',style: const TextStyle(fontWeight: FontWeight.normal,fontSize: 20),),
                          ],
                        ),
                        const SizedBox(height: 8,),
                        Row(
                          children: [
                            const Text('Phone: ',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                            Text(snapshot.data?.data?.user?.phone?? '',style: const TextStyle(fontWeight: FontWeight.normal,fontSize: 20),),
                          ],
                        ),
                        const SizedBox(height: 8,),
                        Row(
                          children: [
                            const Text('Wallet: ',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                            Text(snapshot.data?.data?.user?.wallet?.balance.toString()??'',style: const TextStyle(fontWeight: FontWeight.normal,fontSize: 20),),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20,),
                  Container(
                    padding: const EdgeInsets.all(20),
                    width: double.infinity,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.blue
                    ),
                    child: const Center(child: Text('Log Out',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),)),
                  ).onTap(() async {
                    final prefes=await SharedPreferences.getInstance();
                    await prefes.setString('token', '');
                    const SplashScreen().launch(context);
                  })
                ],
              );
            }
            else{
            return  Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                CircularProgressIndicator(),
                SizedBox(width: 10,),
                Text('Loading...', style:  TextStyle(color: Colors.black,fontWeight: FontWeight.bold,),),
              ],
            );
            }
          }),
        ),
      ),
    );
  }
}
