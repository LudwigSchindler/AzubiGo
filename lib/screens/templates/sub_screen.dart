import 'package:azubi_go/widgets/main_app_bar.dart';
import 'package:azubi_go/widgets/main_navigation_rail.dart';
import 'package:flutter/material.dart';

class SubScreen extends StatelessWidget {
  final Widget child;

  SubScreen(this.child);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MainAppBar(),
      body: Row(
        children: [
          MainNavigationRail(),
          Expanded(
            child: Container(
              alignment: Alignment.topCenter,
              margin: EdgeInsets.only(
                  left: MediaQuery.of(context).size.longestSide / 8,
                  right: MediaQuery.of(context).size.longestSide / 8,
                  top: MediaQuery.of(context).size.shortestSide / 5),
              child: child,
            ),
          ),
        ],
      ),
    );
  }
}
