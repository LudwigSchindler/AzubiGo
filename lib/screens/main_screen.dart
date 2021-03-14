import 'package:azubi_go/screens/home_screen.dart';
import 'package:azubi_go/widgets/main_app_bar.dart';
import 'package:azubi_go/widgets/main_navigation_rail.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  static ValueNotifier<Widget> screenWidget = ValueNotifier(HomeScreen());


  MainScreen.route(Widget screen){
    screenWidget.value = screen;
  }


  MainScreen();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              child: ValueListenableBuilder(
                  valueListenable: screenWidget,
                  builder: (BuildContext context, Widget screen, Widget child) {
                    return screen;
                  }),
            ),
          ),
        ],
      ),
      appBar: MainAppBar(),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.campaign_rounded),
        backgroundColor: Colors.deepPurple,
        onPressed: null,
      ),
    );
  }
}
