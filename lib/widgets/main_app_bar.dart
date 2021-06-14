import 'package:azubi_go/models/azubiUser.dart';
import 'package:azubi_go/screens/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class MainAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      // centerTitle: true,
      title: Text("Azubi®Go"),
      backgroundColor: Colors.deepPurple,
      actions: [
        Chip(
          label: Text("10:33 Statusmeeting QS"),
          elevation: 5,
        ),
        IconButton(
          icon: Icon(Icons.public_rounded),
          tooltip: "Storymodus (Pre-Alpha)",
          onPressed: () {},
        ),
        PopupMenuButton(
          itemBuilder: (context) {
            List<PopupMenuEntry<Object>> list = [
              PopupMenuItem(
                child: ListTile(
                  leading: Icon(
                    Icons.person_rounded,
                  ),
                  title: Text("Profil"),
                  onTap: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          AzubiUser user = AzubiUser.getUser();
                          return AlertDialog(
                            content: Column(
                              children: [
                                Text("Name: " +
                                    user.getFirstName() +
                                    " " +
                                    user.getLastName()),
                                Text("Abteilung: " + user.department),
                                Text("Geburtsdatum: " +
                                    DateFormat(DateFormat.YEAR_MONTH_DAY)
                                        .format(user.dateOfBirth)),
                              ],
                            ),
                          );
                        });
                  },
                ),
              ),
              PopupMenuDivider(),
              PopupMenuItem(
                child: ListTile(
                  leading: Icon(
                    Icons.shield,
                  ),
                  title: Text("PANIC!!!"),
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
              PopupMenuItem(
                child: ListTile(
                  leading: Icon(
                    Icons.info_rounded,
                  ),
                  title: Text("Info"),
                  onTap: () {
                    showAboutDialog(context: context);
                  },
                ),
              ),
              PopupMenuDivider(),
              PopupMenuItem(
                child: ListTile(
                  leading: Icon(
                    Icons.logout,
                  ),
                  title: Text("Logout"),
                  onTap: () {
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                      builder: (BuildContext context) {
                        return LoginScreen();
                      },
                    ));
                  },
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
