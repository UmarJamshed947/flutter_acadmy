import 'package:flutter/material.dart';

import '../res/responsive.res.dart';

class CallToAction extends StatelessWidget {
  const CallToAction({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 40.0),
      color: Colors.grey.shade200,
      height: 400,
      alignment: Alignment.center,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            "Ready to Begin Learning",
            style: Theme.of(context).textTheme.displayMedium,
          ),
          const SizedBox(height: 20.0),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              fixedSize: MediaQuery.of(context).size.width >
                  ScreenSizes.md
                  ? Size(180, 50)
                  : Size(180, 60),
            ),
            onPressed: () {
              print("register");
            },
            child: Text("Get Started"),
          )
        ],
      ),
    );
  }
}