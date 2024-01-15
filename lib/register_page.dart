import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  String yourname = "";
  String email = "";
  String yourpass = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        width: double.maxFinite,
        padding: EdgeInsets.symmetric(horizontal: 35, vertical: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Register",
                style: TextStyle(
                    color: Colors.blue,
                    fontSize: 32,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w700)),
            SizedBox(height: 10),
            Container(
                child: Padding(
              padding: EdgeInsets.only(left: 1),
              child:
                  Text.rich(TextSpan(text: 'Create an ', children: <TextSpan>[
                TextSpan(
                    text: 'account ',
                    style: TextStyle(
                        color: Colors.blue, fontWeight: FontWeight.w700)),
                TextSpan(
                    text: 'to access all the              '
                        'features of '),
                TextSpan(
                    text: 'Maxpensel',
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w700))
              ])),
            )),
            SizedBox(height: 40),
            Padding(
              padding: EdgeInsets.only(left: 1),
              child: TextField(
                onChanged: (newEmail) {
                  print(newEmail);
                  email = newEmail;
                },
                keyboardType: TextInputType.text,
                style: TextStyle(fontSize: 10),
                decoration: InputDecoration(
                    labelText: 'Email',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10))),
              ),
            ),
            SizedBox(height: 40),
            Padding(
              padding: EdgeInsets.only(left: 1),
              child: TextField(
                onChanged: (newYourname) {
                  print(newYourname);
                  yourname = newYourname;
                },
                keyboardType: TextInputType.text,
                style: TextStyle(fontSize: 10),
                decoration: InputDecoration(
                    labelText: 'Your Name',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10))),
              ),
            ),
            SizedBox(height: 40),
            Padding(
                padding: EdgeInsets.only(left: 1),
                child: TextField(
                    onChanged: (newYoupass) {
                      print(newYoupass);
                      yourpass = newYoupass;
                    },
                    keyboardType: TextInputType.text,
                    style: TextStyle(fontSize: 10),
                    decoration: InputDecoration(
                        labelText: 'Your Password',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10))))),
            SizedBox(height: 30),
            Container(
              child: Stack(
                children: [
                  Padding(
                      padding: EdgeInsets.only(left: 2),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.blue, // background
                          onPrimary: Colors.white, // foreground
                        ),
                        child: Text(
                          '           Register           ',
                          style: TextStyle(
                              fontSize: 30)),
                        onPressed: () {},))
                ],
              ),
            ),
            SizedBox(height: 30),
            Container(
                child: Padding(
              padding: EdgeInsets.only(left: 50),
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
            )),
          ],
        ),
      ),
    );
  }
}
