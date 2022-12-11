
import 'package:flutter/material.dart';
import 'package:updatenewsappprovider/Page%20All/Profile_Page/user_profile_page.dart';


class CoustomAppbar extends StatefulWidget {
  const CoustomAppbar({Key? key}) : super(key: key);

  @override
  State<CoustomAppbar> createState() => _CoustomAppbarState();
}

class _CoustomAppbarState extends State<CoustomAppbar> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(64),
          child: UserProfile()
      ),
    );
  }
}
