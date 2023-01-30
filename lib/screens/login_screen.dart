// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, unused_element, non_constant_identifier_names, must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:podcast/constants/bottom_constant.dart';
import 'package:podcast/constants/checkedbox_constant.dart';
import 'package:podcast/constants/textformfrild_constant.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('image/Background.jpg'), fit: BoxFit.cover)),
      child: Scaffold(
        body: Container(
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('image/Background.jpg'),
                  fit: BoxFit.cover)),
          child: ListView(
            children: [
              Column(
                children: [
                  SizedBox(
                    height: 25.0,
                  ),
                  Stack(children: [
                    Image(
                      image: AssetImage('image/Group 11599.png'),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 40, top: 20),
                          child: const Text(
                            'RADIO STATION',
                            style: TextStyle(
                              fontSize: 34,
                              color: Color(0xFFF6427B),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 30),
                          child: const Text(
                            'YOUR DAILY DOSE OF HAPPINESS',
                            style: TextStyle(
                                color: Colors.white54, wordSpacing: .5),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * .15,
                    ),
                  ]),
                  Text(
                    'Welcame Back!',
                    style: TextStyle(color: Colors.white, fontSize: 25),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * .001,
                  ),
                  Text(
                    'Login to continue Radio App',
                    style: TextStyle(color: Colors.white54, wordSpacing: .5),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * .03,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: KTextField(
                      hint: 'Email Address',
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * .01,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: KTextField(
                      hint: 'Password',
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * .01,
                  ),
                  Row(
                    children: [
                      KChechedBox(),
                      Text(
                        'Remember me',
                        style: TextStyle(color: Colors.white54),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * .35,
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, 'ForgetPassword');
                        },
                        child: Text(
                          'Forgot Password?',
                          style: TextStyle(color: Colors.white54),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * .03,
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * .08,
                    width: double.infinity - 50,
                    child: KRaisedButtonConstant(
                      onpres: () {
                        Navigator.pushNamed(context, 'TutorialScreen');
                      },
                      text: 'Log In ',
                      textcolor: Colors.white,
                      icon: null,
                      color: Color(0xFFF32A77),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * .03,
                  ),
                  Text(
                    'OR',
                    style: TextStyle(color: Colors.white54, fontSize: 20),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * .03,
                  ),
                  Padding(
                    padding: EdgeInsets.all(8),
                    child: Column(
                      children: [
                        Container(
                          height: MediaQuery.of(context).size.height * .08,
                          width: double.infinity - 50,
                          child: SignInButton(
                            padding: EdgeInsets.only(
                                left: 100, right: 100, top: 20, bottom: 20),
                            Buttons.Google,
                            onPressed: () {},
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                            text: 'Continue with Google',
                          ),
                        ),
                        // KRaisedButtonConstant(
                        //     text: 'Log in Google',
                        //     textcolor: Colors.black,
                        //     color: Colors.white,
                        //     icon: AssetImage(
                        //       'icons/Google Logo.svg-2.png',
                        //     )),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * .03,
                        ),

                        Container(
                          height: MediaQuery.of(context).size.height * .08,
                          width: double.infinity - 50,
                          child: SignInButton(
                            Buttons.Facebook,
                            onPressed: () {},
                            text: 'Continue with Google',
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * .03,
                        ),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Don\'t have an account?',
                              style: TextStyle(color: Colors.white54),
                            ),
                            InkWell(
                              onTap: () {
                                Navigator.pushNamed(context, 'SignUpScreen');
                              },
                              child: Text(
                                'sign up',
                                style: TextStyle(color: Color(0xFFF11775)),
                              ),
                            )
                          ],
                        )
                        // KRaisedButtonConstant(
                        //     text: 'Log in Google',
                        //     textcolor: Colors.black,
                        //     color: Colors.blue,
                        //     icon: AssetImage(
                        //       'image/facebook-logo.png',
                        //     )),),
                      ],
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
