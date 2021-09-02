import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_challenge_01/presentation/pages/sing_up_page.dart';

class LoginPage extends StatelessWidget {
  LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidht = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Center(
        child: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: screenHeight * 0.05,
                  ),
                  Column(
                    children: [
                      Image.asset(
                        'assets/images/login.png',
                        height: screenHeight * 0.2,
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Text(
                        'Welcome back!',
                        style: Theme.of(context).textTheme.headline5,
                      ),
                      SizedBox(
                        height: 6,
                      ),
                      Text(
                        'Log in to your existant account of Q Allure',
                        style: Theme.of(context).textTheme.subtitle2,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: screenHeight * 0.05,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 16,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Material(
                          elevation: 20.0,
                          shadowColor: Colors.blueGrey.withOpacity(0.2),
                          borderRadius: BorderRadius.circular(60),
                          child: TextField(
                            decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                  borderRadius: BorderRadius.circular(60)),
                              filled: true,
                              fillColor: Colors.grey.shade100,
                              hintText: 'Email',
                              hintStyle: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey.shade400),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(60),
                              ),
                              prefixIcon: Icon(
                                Icons.person_outline,
                              ),
                            ),
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                        SizedBox(
                          height: 24,
                        ),
                        Material(
                          borderRadius: BorderRadius.circular(60),
                          elevation: 20.0,
                          shadowColor: Colors.blueGrey.withOpacity(0.2),
                          child: TextField(
                            obscureText: true,
                            decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                  borderRadius: BorderRadius.circular(60)),
                              fillColor: Colors.grey.shade100,
                              hintText: 'Password',
                              filled: true,
                              hintStyle: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey.shade400),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(60),
                              ),
                              prefixIcon: Icon(
                                Icons.lock_outline,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            'Forgot Password?',
                            style: TextStyle(
                                color: Colors.grey.shade800,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                      ],
                    ),
                  ),
                  ElevatedButton(onPressed: () {}, child: Text('LOG IN')),
                  SizedBox(
                    height: 12,
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'Or connect using',
                      style: TextStyle(
                          color: Colors.grey.shade500,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 150,
                        child: OutlinedButton(
                          onPressed: () {},
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset('assets/images/facebook.png', height: 16,),
                              SizedBox(width: 8,),
                              Text('Facebook'),
                            ],
                          ),
                          style: ButtonStyle(

                            backgroundColor: MaterialStateProperty.resolveWith(
                                (states) => Colors.blue.shade700),
                            foregroundColor: MaterialStateProperty.resolveWith(
                                (states) => Colors.white),
                            padding: MaterialStateProperty.resolveWith(
                              (states) => EdgeInsets.symmetric(
                                  horizontal: 0, vertical: 10),
                            ),
                            shape: MaterialStateProperty.resolveWith(
                              (states) => RoundedRectangleBorder(
                                side: BorderSide.none,
                                borderRadius: BorderRadius.circular(8),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 12,),
                      Container(
                        width: 150,
                        child: OutlinedButton(
                          onPressed: () {},
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children:
                            [
                              Image.asset('assets/images/google.png', height: 16,),
                              SizedBox(width: 8,),
                              Text('Google'),
                            ],
                          ),
                          style: ButtonStyle(

                            backgroundColor: MaterialStateProperty.resolveWith(
                                    (states) => Colors.redAccent),
                            foregroundColor: MaterialStateProperty.resolveWith(
                                    (states) => Colors.white),
                            padding: MaterialStateProperty.resolveWith(
                                  (states) => EdgeInsets.symmetric(
                                  horizontal: 0, vertical: 10),
                            ),
                            shape: MaterialStateProperty.resolveWith(
                                  (states) => RoundedRectangleBorder(
                                side: BorderSide.none,
                                borderRadius: BorderRadius.circular(8),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 12 ,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Don't have an account?",style: TextStyle(
                          color: Colors.grey.shade700,
                          fontWeight: FontWeight.bold),),
                      TextButton(
                        onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context)=> SingUpPage())),
                        child: Text(
                          'Sing Up',
                          style: TextStyle(
                              color: Colors.blueAccent,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
