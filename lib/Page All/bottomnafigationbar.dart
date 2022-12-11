import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

import 'Catagory_Page/category_page.dart';
import 'Home_Page/home_page.dart';
import 'Profile_Page/user_profile_page.dart';

class HomeBottomNavigationBar extends StatefulWidget {
  const HomeBottomNavigationBar({Key? key}) : super(key: key);

  @override
  State<HomeBottomNavigationBar> createState() => _HomeBottomNavigationBarState();
}

class _HomeBottomNavigationBarState extends State<HomeBottomNavigationBar> {

  int selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }
  List<Widget> screenList=[
    const HomePage(),
    const CategoryPage(),
    const UserProfile(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.shifting,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.orangeAccent,
          selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold),
          currentIndex: selectedIndex,
          onTap: _onItemTapped,
          items:const [
            BottomNavigationBarItem(
                icon: Icon(IconlyLight.home, ),
                label: 'Home',
              backgroundColor: Colors.red
            ),
            BottomNavigationBarItem(
                icon: Icon(IconlyLight.category,),
                label: 'Category',
              backgroundColor: Colors.deepPurpleAccent
               ),
            BottomNavigationBarItem(
                icon: Icon(IconlyLight.profile,),
                label: 'Profile',
              backgroundColor:Colors.pink
          ),
          ]
      ),
      body: Center(
        child: screenList.elementAt(selectedIndex),
      ),
    );
  }
}
