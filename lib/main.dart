import 'package:flutter/material.dart';
import 'package:flutter_acadmy/App/routes/app_route_parser.router.dart';
import 'package:flutter_acadmy/App/routes/router_delegate.router.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';


void main() {
  runApp(ProviderScope(child: MyApp()));
}

final routerDelegate = AppRouterDelegate();

class MyApp extends StatelessWidget {
  final _routeParser = AppRouteInformationParser();
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routerDelegate: routerDelegate,
      routeInformationParser: _routeParser,
      // routes: {
      //   '/': (_) => HomePage(),
      //   '/about': (_) => AboutPage(),
      //   '/contact': (_) => ContactPage(),
      //   '/courses': (_) => CoursesPage(),
      // },
      // onGenerateRoute: (settings) {
      //   return MaterialPageRoute(
      //     builder: (_) {
      //       switch (settings.name) {
      //         case '/':
      //           return HomePage();
      //         case '/about':
      //           return AboutPage();
      //         case '/contact':
      //           return ContactPage();
      //         case '/courses':
      //           return CoursesPage();
      //         default:
      //           final pathSegments = Uri.parse(settings.name!).pathSegments;
      //           print(pathSegments);
      //           if (pathSegments.length == 2 && pathSegments[0] == 'courses') {
      //             final courseId = int.parse(pathSegments[1]);
      //             return CourseDetailsPage(courseId: courseId);
      //           }
      //           return Error404Page();
      //       }
      //     },
      //     settings: settings,
      //   );
      // },
    );
  }
}