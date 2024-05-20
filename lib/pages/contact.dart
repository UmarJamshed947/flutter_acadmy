import 'package:flutter/material.dart';

import '../res/responsive.dart';
import '../widgets/drawer_nav.dart';
import '../widgets/top_nav.dart';


class ContactPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          TopNav(),
        ],
      ),
      drawer: MediaQuery.of(context).size.width > ScreenSizes.md
          ? null
          : DrawerNav(),
    );
  }
}