import 'package:azubi_go/main.dart';
import 'package:azubi_go/service/auth_service.dart';
import 'package:flutter/material.dart';

import 'main_screen.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  bool register = false;
  String value = "AFD";
  TextEditingController mailController;
  TextEditingController passwordController;
  bool loading = false;

  @override
  void initState() {
    super.initState();
    mailController = TextEditingController();
    passwordController = TextEditingController();
  }

  @override
  void dispose() {
    mailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage("images/hexagon_background3.png"),
          ),
        ),
        child: Center(
          child: Container(
            alignment: Alignment.center,
            height: 800,
            width: 600,
            child: SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.all(
                    MediaQuery.of(context).size.longestSide / 25),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Azubi®Go",
                      style: TextStyle(fontSize: 48),
                    ), //AZUBIGO TITLE
                    SizedBox(
                      height: 60,
                    ),
                    Form(
                      key: _formKey,
                      child: Column(
                        children: [
                          TextFormField(
                              controller: mailController,
                              decoration: InputDecoration(
                                hintText: "Kürzel",
                                icon: Icon(Icons.badge),
                              ),
                              autofocus: true,
                              validator: (value) {
                                if (value.isEmpty) {
                                  return "Bitte Kürzel eingeben.";
                                }
                                return null;
                              },
                              autovalidateMode:
                                  AutovalidateMode.onUserInteraction),
                          SizedBox(
                            height: 10,
                          ),
                          TextFormField(
                            validator: (value) {
                              if (value.isEmpty) {
                                return "Passwort eingeben.";
                              }
                              if (register) {
                                if (value.length < 12) {
                                  return "Das Passwort muss aus mindestens 12 Zeichen bestehen.";
                                }
                                if (!RegExp(
                                        r"((?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[\W]).{12,64})")
                                    .hasMatch(value)) {
                                  return "Das Passwort muss Klein- und Großbuchstaben, Ziffern und Sonderzeichen enthalten.";
                                }
                              }
                              return null;
                            },
                            obscureText: true,
                            enableSuggestions: false,
                            autocorrect: false,
                            autovalidateMode:
                                AutovalidateMode.onUserInteraction,
                            decoration: InputDecoration(
                              errorMaxLines: 3,
                              hintText: "Passwort",
                              icon: Icon(Icons.vpn_key_rounded),
                            ),
                            controller: passwordController,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          register
                              ? TextFormField(
                                  validator: (value) {
                                    if (value.isEmpty) {
                                      return "Passwort wiederholen.";
                                    }
                                    if (passwordController.text != value) {
                                      return "Passwörter stimmen nicht überein.";
                                    }
                                    return null;
                                  },
                                  obscureText: true,
                                  enableSuggestions: false,
                                  autocorrect: false,
                                  decoration: InputDecoration(
                                    hintText: "Passwort wiederholen",
                                    icon: Icon(Icons.repeat_rounded),
                                  ),
                                  autovalidateMode:
                                      AutovalidateMode.onUserInteraction,
                                )
                              : Container(),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 60,
                    ),
                    //Login-Button
                    ElevatedButton(
                      style: ButtonStyle(
                        padding: MaterialStateProperty.all(
                            EdgeInsets.symmetric(vertical: 20, horizontal: 40)),
                        backgroundColor:
                            MaterialStateProperty.resolveWith<Color>((states) {
                          return Colors.deepPurple;
                        }),
                      ),
                      child: Container(
                        height: 25,
                        width: 180,
                        child: Center(
                          child: loading
                              ? AspectRatio(
                                  aspectRatio: 1,
                                  child: CircularProgressIndicator(
                                    valueColor:
                                        new AlwaysStoppedAnimation<Color>(
                                            Colors.white),
                                  ),
                                )
                              : Text(
                                  register ? "Registrieren" : "Anmelden",
                                  style: TextStyle(fontSize: 20),
                                ),
                        ),
                      ),
                      onPressed: () {
                        if (_formKey.currentState.validate()) {
                          setState(() {
                            loading = true;
                          });

                          authenticate();

                          if (register)
                            setState(() {
                              register = false;
                            });
                        }
                      },
                    ),

                    if (AzubiGo.DEBUG)
                      IconButton(
                        icon: Icon(
                          Icons.offline_bolt_rounded,
                          color: Colors.deepPurple,
                        ),
                        onPressed: () {
                          mailController.text = "lsc";
                          passwordController.text = "123456789AAAb#";
                          authenticate();
                        },
                      ),
                    SizedBox(
                      height: 25,
                    ),
                    TextButton(
                      child: Text(register
                          ? "Stattdessen anmelden"
                          : "Stattdessen registrieren"),
                      onPressed: () {
                        setState(
                          () {
                            register = !register;
                          },
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  void authenticate() {
    register
        ? AuthService.registerUserAndLogin(
            mailController.text, passwordController.text)
        : AuthService.loginUser(mailController.text, passwordController.text)
      ..then((value) {
        setState(() {
          loading = false;
        });
        return value;
      }).then((value) {
        if (value != null) {
          showDialog(
              context: context,
              builder: (context) => AlertDialog(
                    content: Text(value),
                    actions: [
                      TextButton(
                          child: Text('Okay'),
                          onPressed: () {
                            Navigator.of(context).pop();
                          }),
                    ],
                  ),
              barrierDismissible: true);
        } else {
          Navigator.of(context).pushReplacement(
              MaterialPageRoute(builder: (BuildContext context) {
            return MainScreen();
          }));
        }
      });
  }
}
