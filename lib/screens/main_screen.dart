import 'package:flutter/material.dart';
import '../config/palette.dart';

class LoginSignUpScreen extends StatefulWidget {
  const LoginSignUpScreen({Key? key}) : super(key: key);

  @override
  State<LoginSignUpScreen> createState() => _LoginSignUpScreenState();
}
//첫번째

class _LoginSignUpScreenState extends State<LoginSignUpScreen> {
  bool isSignupScreen = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Palette.backgroundColor,
        body: Stack(children: [
          Positioned(
              top: 0,
              left: 0,
              right: 0,
              child: Container(
                height: 300,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/background.png'),
                    fit: BoxFit.fill,
                  ),
                ),
                child: Container(
                  padding: EdgeInsets.only(top: 90, left: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      RichText(
                          text: TextSpan(
                              text: 'Welcome ',
                              style: TextStyle(
                                letterSpacing: 1.0,
                                fontSize: 25,
                                color: Colors.white,
                              ),
                              children: [
                                TextSpan(
                                  text: 'to EOS chat',
                                  style: TextStyle(
                                    letterSpacing: 1.0,
                                    fontSize: 25,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                )
                              ])),
                      SizedBox(
                        height: 5.0,
                      ),
                      Text(
                        'Signup to Continue',
                        style: TextStyle(
                          color: Colors.white,
                          letterSpacing: 1.0,
                        ),
                      ),
                    ],),),)),
          Positioned(
              top: 150,
              child: Container(
                height: 280.0,
                padding: EdgeInsets.all(20),
                width: MediaQuery
                    .of(context)
                    .size
                    .width - 40,
                margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.3),
                      blurRadius: 15,
                      spreadRadius: 5,
                    )
                  ],
                ),
                child: Column(children: [
                  Row(
                    mainAxisAlignment:
                    MainAxisAlignment.spaceAround,
                    children: [
                      GestureDetector(
                        child: Column(
                          children: [
                            Text(
                              "LOGIN",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: isSignupScreen
                                    ? Palette.textColor1
                                    : Palette.activeColor,
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 3),
                              height: 2,
                              width: isSignupScreen ? 0 : 55,
                              color: isSignupScreen
                                  ? Colors.transparent
                                  : Colors.green,
                            )
                          ],
                        ),
                      ),
                      GestureDetector(
                          child: Column(
                            children: [
                              Text(
                                'SIGNUP',
                                style: TextStyle(
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.bold,
                                  color: isSignupScreen
                                      ? Palette.activeColor
                                      : Palette.textColor1,
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 3.0),
                                height: 2.0,
                                width: isSignupScreen ? 55.0 : 0,
                                color: isSignupScreen
                                    ? Colors.green
                                    : Colors.transparent,
                              )
                            ],
                          ))
                    ],
                  ),
                  Container(
                      child: Form(
                        child: Column(children: [
                          TextFormField(
                            decoration: InputDecoration(
                              prefixIcon: Icon(Icons.email,
                                  color: Palette.iconColor),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Palette.textColor1),
                                borderRadius: BorderRadius.all(
                                    Radius.circular(35.0)),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Palette.textColor1),
                                borderRadius: BorderRadius.all(
                                    Radius.circular(35.0)),
                              ),
                            ),
                          )
                        ]),
                      ))
                ]),
              ))
        ],
        ));}
}
