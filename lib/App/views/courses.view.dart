import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../view_models/course_list.vm.dart';
import '../widgets/course_card.widget.dart';


class CoursesView extends StatelessWidget {
  const CoursesView({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Consumer(builder: (context, ref, child) {
      final courses = ref.watch(courseListVM);
      return ListView(
        scrollDirection: Axis.horizontal,
        children: [
          ...courses.map(
                (course) => Padding(
                padding: const EdgeInsets.only
                  (top: 20),
                child: CourseCard(
                  description: course.description,
                  title: course.title,
                  image: course.image,
                  onActionPressed: () {},
                )),
          ),
        ],
      );
    });
  }
}