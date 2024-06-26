import 'package:flutter/material.dart';

import '../../main.dart';
import '../res/assets.red.dart';
import '../res/responsive.res.dart';
import '../widgets/call_to_action.widget.dart';
import '../widgets/course_card.widget.dart';
import '../widgets/drawer_nav.widget.dart';
import '../widgets/featured_section.widget.dart';
import '../widgets/footer.widget.dart';
import '../widgets/header.widget.dart';
import '../widgets/top_nav.widget.dart';


class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          TopNav(),
          Header(),
          const SizedBox(height: 40.0),
          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Text("Recent courses",
                style: Theme.of(context).textTheme.headline3),
          ),
          const SizedBox(height: 10.0),
          Container(
            height: 450,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                const SizedBox(width: 20.0),
                CourseCard(
                  title: "Taking Flutter to Web",
                  image: Assets.course,
                  description:
                  "Flutter web is stable. But there are no proper course focused on Flutter web. So, In this course we will learn what Flutter web is good for and we will build a production grade application along the way.",
                  onActionPressed: () {
                    routerDelegate.go('/courses/taking-flutter-to-web');
                  },
                ),
                const SizedBox(width: 20.0),
                CourseCard(
                  title: "Taking Flutter to Web",
                  image: Assets.course,
                  description:
                  "Flutter web is stable. But there are no proper course focused on Flutter web. So, In this course we will learn what Flutter web is good for and we will build a production grade application along the way.",
                  onActionPressed: () {
                    routerDelegate.go('/courses/taking-flutter-to-web-2');
                  },
                ),
              ],
            ),
          ),
          // Featured section
          Center(
            child: FeaturedSection(
              image: Assets.instructor,
              title: "Start teaching today",
              description:
              "Instructors from around the world teach millions of students on Udemy. We provide the tools and skills to teach what you love.",
              buttonLabel: "Become an instructor",
              onActionPressed: () {},
            ),
          ),
          Center(
            child: FeaturedSection(
              imageLeft: false,
              image: Assets.instructor,
              title: "Transform your life through education",
              description:
              "Education changes your life beyond your imagination. Education enables you to achieve your dreams.",
              buttonLabel: "Start learning",
              onActionPressed: () {},
            ),
          ),
          CallToAction(),
          Center(
            child: FeaturedSection(
              imageLeft: false,
              image: Assets.instructor,
              title: "Know your instructors",
              description:
              "Know your instructors. We have chosen the best of them to give you highest quality courses.",
              buttonLabel: "Browse",
              onActionPressed: () {},
            ),
          ),
          //footer
          Footer(),
        ],
      ),
      drawer: MediaQuery.of(context).size.width > ScreenSizes.md
          ? null
          : DrawerNav(),
    );
  }
}