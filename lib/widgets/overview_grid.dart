import 'package:flutter/material.dart';

class OverviewGrid extends StatelessWidget {
  final tree;
  final double space;
  final int gridDelegate;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: tree.length,
      itemBuilder: (BuildContext context, int index) {
        return tree[index];
      },
      // padding: EdgeInsets.symmetric(
      //     horizontal: MediaQuery.of(context).size.longestSide / 8,
      //     vertical: MediaQuery.of(context).size.shortestSide / 5),
      primary: false,
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent:
              MediaQuery.of(context).size.longestSide / gridDelegate,
          crossAxisSpacing: MediaQuery.of(context).size.longestSide / space,
          mainAxisSpacing: MediaQuery.of(context).size.longestSide / space),
    );
  }

  OverviewGrid(this.tree, this.space, this.gridDelegate);
}
