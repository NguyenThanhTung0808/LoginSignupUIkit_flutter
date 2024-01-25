import 'package:flutter/material.dart';

class WelcomPage extends StatefulWidget {
  const WelcomPage({super.key});

  @override
  State<WelcomPage> createState() => _WelcomPageState();
}

class _WelcomPageState extends State<WelcomPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
              padding: EdgeInsets.only(left: 20),
              child: Text("Welcome to",
                  style: TextStyle(
                      color: Colors.black87,
                      fontSize: 24,
                      fontWeight: FontWeight.w400))),
          SizedBox(height: 1),
          Padding(
              padding: EdgeInsets.only(left: 20),
              child: Text("MaxPense",
                  style: TextStyle(
                      color: Colors.blue,
                      fontSize: 40,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w700))),
          SizedBox(height: 8),
          Container(
              width: 267,
              margin: EdgeInsets.only(left: 20, right: 77),
              child: Text(
                  "A place where you can track all your expenses and incomes...",
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                      color: Colors.black87,
                      fontSize: 16,
                      fontWeight: FontWeight.w400))),
          SizedBox(height: 53),
          Padding(
              padding: EdgeInsets.only(left: 20),
              child: Text("Let’s Get Started...",
                  style: TextStyle(
                      fontSize: 17.3170223236084,
                      fontWeight: FontWeight.w400))),
          SizedBox(height: 10),
          Container(
              width: double.infinity,
              height: 50,
              alignment: Alignment.center,
              child: Stack(
                children: [
                  Positioned(
                    child: Image.asset(
                      "assets/images/img_google.png",
                      width: 160,
                      height: 45,
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.only(left: 5),
                        child: OutlinedButton(
                          style: OutlinedButton.styleFrom(
                            padding: EdgeInsets.only(left:100,right:100),
                          ),
                          onPressed: () {
                            debugPrint('Received click');
                          },
                          child: const Text('Continue with Google',style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                            fontSize: 15,
                          ),),
                        ),
                      ),
                ],
              )
          ),
          SizedBox(height: 10),
          Container(
              width: double.infinity,
              height: 50,
              alignment: Alignment.center,
              child: Stack(
                children: [
                  Positioned(
                    right: 20,
                    child: Image.asset(
                      "assets/images/img_a.png",
                      width: 120,
                      height: 45,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 5),
                    child: OutlinedButton(
                      style: OutlinedButton.styleFrom(
                        padding: EdgeInsets.only(left:105,right:105),
                      ),
                      onPressed: () {
                        debugPrint('Received click');
                      },
                      child: const Text('Continue with Email',style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                        fontSize: 15,
                      ),),
                    ),
                  ),
                ],
              )
          ),
          SizedBox(height: 10),
          Container(
              child: Padding(
            padding: EdgeInsets.only(left: 100),
            child: Text.rich(
              TextSpan(
                text: 'Already have an account? ',
                children: <TextSpan>[
                  TextSpan(
                      text: 'Login',
                      style: TextStyle(
                        color: Colors.blue,
                        decoration: TextDecoration.underline,
                      )),
                  // can add more TextSpans here...
                ],
              ),
            ),
          ))
        ],
      ),
    );
  }
}
