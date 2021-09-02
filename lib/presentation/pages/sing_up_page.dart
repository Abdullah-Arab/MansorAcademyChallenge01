import 'package:flutter/material.dart';
import 'package:flutter_challenge_01/presentation/pages/login_page.dart';

class SingUpPage extends StatelessWidget {
  const SingUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidht = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
        foregroundColor: Colors.grey.shade700,
        iconTheme: IconThemeData(color: Colors.grey.shade800,),
      ),
      body: Center(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Text(
                      "Let's Get Started!",
                      style: Theme.of(context).textTheme.headline5,
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    Text(
                      'Create an account to Q Allure to get all features',
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
                            hintText: 'Username',
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
                              Icons.email_outlined,
                            ),
                          ),
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(
                        height: 24,
                      ),
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
                            hintText: 'Phone',
                            hintStyle: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.grey.shade400),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(60),
                            ),
                            prefixIcon: Icon(
                              Icons.phone_iphone_outlined,
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
                        height: 24,
                      ),
                      Material(
                        elevation: 20.0,
                        shadowColor: Colors.blueGrey.withOpacity(0.2),
                        borderRadius: BorderRadius.circular(60),
                        child: TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius: BorderRadius.circular(60)),
                            filled: true,
                            fillColor: Colors.grey.shade100,
                            hintText: 'Confirm password',
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
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(
                        height: 24,
                      ),

                    ],
                  ),
                ),
                ElevatedButton(onPressed: () {}, child: Text('CREATE')),

                SizedBox(
                  height: 12,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Already have an account?",
                      style: TextStyle(
                          color: Colors.grey.shade700,
                          fontWeight: FontWeight.bold),
                    ),
                    TextButton(
                      onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context)=> LoginPage())),
                      child: Text(
                        'Login here',
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
    );
  }
}
