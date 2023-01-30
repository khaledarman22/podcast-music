// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:podcast/constants/textformfrild_constant.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('image/Background.png'),
                  fit: BoxFit.cover)),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListView(
              children: [
                Column(
                  children: [
                    SizedBox(
                      height: 120,
                    ),
                    Text(
                      'Forget Password',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          decoration: TextDecoration.none),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      child: Text(
                        textAlign: TextAlign.center,
                        'Enter your email address below. We\'ll look for your account and send you a password reset email.',
                        style: TextStyle(
                            color: Colors.white54,
                            fontSize: 20,
                            fontWeight: FontWeight.w300,
                            decoration: TextDecoration.none),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    KTextField(
                      hint: 'Email Address',
                      icon: Icon(
                        Icons.email,
                        color: Colors.white54,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: 60,
                      width: double.infinity,
                      child: SignInButtonBuilder(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          backgroundColor: Color(0xffFA5F7F),
                          text: 'Send Passord Resat ',
                          onPressed: () {}),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height / 2,
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
            ),
          )),
    );
  }
}
