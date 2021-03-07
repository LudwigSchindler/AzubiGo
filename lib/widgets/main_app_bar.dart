import 'package:flutter/material.dart';

class MainAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text("Azubi®Go"),
      backgroundColor: Colors.deepPurple,
      actions: [
        PopupMenuButton(
          itemBuilder: (context) {
            List<PopupMenuEntry<Object>> list = [
              PopupMenuItem(
                child: ListTile(
                  leading: Icon(
                    Icons.person_rounded,
                  ),
                  title: Text("Profil"),
                ),
              ),
              PopupMenuDivider(),
              PopupMenuItem(
                child: ListTile(
                  leading: Icon(
                    Icons.shield,
                  ),
                  title: Text("Unschuldig"),
                ),
              ),
              PopupMenuItem(
                child: ListTile(
                  leading: Icon(
                    Icons.do_not_disturb_on,
                  ),
                  title: Text("Nicht stören"),
                ),
              ),
              PopupMenuDivider(),
              PopupMenuItem(
                child: ListTile(
                  leading: Icon(
                    Icons.settings_rounded,
                  ),
                  title: Text("Einstellungen"),
                ),
              ),
            ];

            return list;
          },
          icon: Icon(Icons.person_rounded),
        ),
      ],
    );
  }

  MainAppBar();

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
