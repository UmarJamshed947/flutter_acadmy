import 'package:flutter/material.dart';
import 'package:flutter_acadmy/App/res/responsive.res.dart';
import 'package:flutter_acadmy/App/widgets/top_nav.widget.dart';

import '../widgets/drawer_nav.widget.dart';


class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          TopNav(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("About Page"),
          )
        ],
      ),
      drawer: MediaQuery.of(context).size.width > ScreenSizes.md
          ? null
          : DrawerNav(),
    );
  }
}