// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:podcast/constants/checkedbox_constant.dart';
import 'package:podcast/constants/textformfrild_constant.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('image/Background.jpg'), fit: BoxFit.cover)),
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Container(
              child: ListView(
            children: [
              Column(
                children: [
                  SizedBox(
                    height: 40,
                  ),
                  Text(
                    'Sign Up',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 40,
                        decoration: TextDecoration.none),
                  ),
                  Text(
                    'Sign Up and Start Learning',
                    style: TextStyle(
                        color: Colors.white54,
                        fontSize: 20,
                        fontWeight: FontWeight.w300,
                        decoration: TextDecoration.none),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 20),
                    child: KTextField(
                      icon: Icon(
                        Icons.man,
                        color: Colors.white54,
                      ),
                      hint: 'User Name',
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 20),
                    child: KTextField(
                      icon: Icon(
                        Icons.email,
                        color: Colors.white54,
                      ),
                      hint: 'Email Address',
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 20),
                    child: KTextField(
                      icon: Icon(
                        Icons.password,
                        color: Colors.white54,
                      ),
                      hint: 'password',
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      KChechedBox(),
                      Text(
                        'Yes! I want to get the most out of Ezymaster by',
                        style: TextStyle(color: Colors.white54),
                      )
                    ],
                  ),
                  Container(
                    width: double.infinity,
                    height: 60,
                    child: SignInButtonBuilder(
                        text: 'Sign in with Email',
                        onPressed: () {
                          Navigator.pushNamed(context, 'LoginScreen');
                        },
                        backgroundColor: Color(0xffF9537D),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10))),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "OR",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white54),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: double.infinity,
                    height: 60,
                    child: SignInButton(Buttons.Google,
                        onPressed: () {},
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10))),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: double.infinity,
                    height: 60,
                    child: SignInButton(Buttons.Facebook,
                        onPressed: () {},
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10))),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Already have an account?',
                        style: TextStyle(color: Colors.white54),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, 'LoginScreen');
                        },
                        child: Text(
                          'Log in',
                          style: TextStyle(color: Color(0xFFF11775)),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ],
          )),
        ),
      ),
    );
  }
}
