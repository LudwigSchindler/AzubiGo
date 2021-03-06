import 'package:flutter/material.dart';

class MainAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text("Azubi®GO"),
      backgroundColor: Colors.deepPurple,
      actions: [
        CircleAvatar(
          child: Icon(Icons.person_rounded),
        ),
        IconButton(
            icon: Icon(
              Icons.settings_rounded,
              color: Colors.white,
            ),
            onPressed: null)
      ],
    );
  }

  MainAppBar();

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
