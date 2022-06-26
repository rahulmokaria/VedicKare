import 'package:flutter/material.dart';

import '../theme/my_theme.dart';
import '../widgets/text_field_ui.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _passwordTextController = TextEditingController();
  final TextEditingController _emailTextController = TextEditingController();

  List<bool> isSelected = [true, false];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: secondary,
      body: ListView(
        children: [
          Container(
            // padding: const EdgeInsets.only(left: 35, top: 80),
            child: Image.asset("assets/images/online_doctor.png"),
          ),
          Container(
            padding: const EdgeInsets.only(left: 35, top: 30),
            child: const Text(
              "Login",
              textScaleFactor: 3,
              style: TextStyle(
                color: primary,
              ),
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          SingleChildScrollView(
            child: Container(
              padding: const EdgeInsets.only(
                right: 35,
                left: 35,
              ),
              child: Column(children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Container(
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(20)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width * 0.42,
                          decoration: BoxDecoration(
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(10),
                              bottomLeft: Radius.circular(10),
                            ),
                            color: isSelected[0] ? primary : secondaryLight,
                          ),
                          height: 45,
                          child: InkWell(
                            onTap: () {
                              setState(() {
                                isSelected[0] = true;
                                isSelected[1] = false;
                              });
                            },
                            child: Center(
                              child: Text(
                                'Patient',
                                textScaleFactor: isSelected[0] ? 1.45 : 1.3,
                                style: TextStyle(
                                  color: isSelected[0] ? white : primary,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.42,
                          decoration: BoxDecoration(
                            borderRadius: const BorderRadius.only(
                              topRight: Radius.circular(10),
                              bottomRight: Radius.circular(10),
                            ),
                            color: isSelected[1] ? primary : secondaryLight,
                          ),
                          height: 45,
                          child: InkWell(
                            onTap: () {
                              setState(() {
                                isSelected[1] = true;
                                isSelected[0] = false;
                              });
                            },
                            child: Center(
                              child: Text(
                                'Doctor',
                                textScaleFactor: isSelected[1] ? 1.45 : 1.3,
                                style: TextStyle(
                                  color: isSelected[1] ? white : primary,
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                textFieldUi('Email', Icons.person, false, _emailTextController),
                const SizedBox(
                  height: 20,
                ),
                textFieldUi('Password', Icons.lock_outline, true,
                    _passwordTextController),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(
                        onPressed: () {
                          Navigator.pushNamed(context, 'forgotPasswordPage');
                        },
                        child: const Text(
                          'Forgot Password',
                          style: TextStyle(
                            fontSize: 18,
                            color: primary,
                          ),
                        ))
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 50,
                  margin: const EdgeInsets.fromLTRB(0, 10, 0, 20),
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(90)),
                  child: ElevatedButton(
                    onPressed: () {
                      // loginUserDb(context, _emailTextController,
                      // _passwordTextController);
                    },
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.resolveWith((states) {
                        if (states.contains(MaterialState.pressed)) {
                          return secondary;
                        }
                        return primary;
                      }),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10))),
                    ),
                    child: const Text(
                      "Login",
                      style: TextStyle(
                        color: secondary,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
                Row(children: <Widget>[
                  Expanded(
                    child: Container(
                        margin: const EdgeInsets.only(right: 20.0),
                        child: const Divider(
                          color: primary,
                          // height: 36,
                        )),
                  ),
                  const Text(
                    "OR",
                    style: TextStyle(
                      color: primary,
                    ),
                  ),
                  Expanded(
                    child: Container(
                        margin: const EdgeInsets.only(left: 20.0),
                        child: const Divider(
                          color: primary,
                          // height: 36
                        )),
                  ),
                ]),
                const SizedBox(
                  height: 15,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 50,
                  margin: const EdgeInsets.fromLTRB(0, 10, 0, 20),
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(90)),
                  child: ElevatedButton(
                    onPressed: () {
                      // loginUserDb(context, _emailTextController,
                      // _passwordTextController);
                    },
                    style: ButtonStyle(
                      elevation: MaterialStateProperty.all(0),
                      backgroundColor:
                          MaterialStateProperty.resolveWith((states) {
                        if (states.contains(MaterialState.pressed)) {
                          return primary;
                        }
                        return secondaryLight;
                      }),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10))),
                    ),
                    child: Stack(
                      children: const [
                        // Positioned(
                        //   left: -20,
                        //   child: Image.asset(
                        //     "assets/images/google-logo.png",
                        //     height: 20,
                        //     width: 20,
                        //   ),
                        // ),
                        Text(
                          "Login with Google",
                          style: TextStyle(
                            color: primary,
                            // fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Don't have an account?",
                      style: TextStyle(
                        fontSize: 18,
                        color: black,
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, 'registerPage');
                      },
                      child: const Text(
                        "Sign Up",
                        style: TextStyle(
                          fontSize: 18,
                          color: primary,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 40,
                ),
              ]),
            ),
          )
        ],
      ),
    );
  }
}
