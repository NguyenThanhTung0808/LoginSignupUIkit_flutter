import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String email = "";
  String yourpassword =  "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.maxFinite,
        padding: EdgeInsets.symmetric(horizontal: 35, vertical: 110),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [
            Text("Login",
                style: TextStyle(
                    color: Colors.blue,
                    fontSize: 32,
                    fontWeight: FontWeight.w700)),
            SizedBox(height: 10),
            Container(
              child: Padding(
                padding: EdgeInsets.only(left: 1),
                child: Text("Login now to track all you expenses "
                    "                 and income at a place"
                ),
              ),
            ),
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
            SizedBox(height: 50),
            Padding(
              padding: EdgeInsets.only(left: 1),
              child: TextField(
                onChanged: (newPassWord) {
                  print(newPassWord);
                  yourpassword = newPassWord;
                },
                keyboardType: TextInputType.text,
                style: TextStyle(fontSize: 10),
                decoration: InputDecoration(
                    labelText: 'Your Password',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10))),
              ),
            ),
            SizedBox(height: 10),
            Container(
                child: Padding(
                  padding: EdgeInsets.only(left:1),
                  child: Text.rich(
                    TextSpan(
                      children: <TextSpan>[
                        TextSpan(
                            text: 'Forgot Password?',
                            style: TextStyle(
                              color: Colors.blue,
                              decoration: TextDecoration.underline,
                            )),
                        // can add more TextSpans here...
                      ],
                    ),
                  ),
                )
            ),
            SizedBox(height: 40),
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
                            '             Login           ',
                            style: TextStyle(
                                fontSize: 30)), onPressed: () {}))])),
            const Divider(
              height: 50,
              thickness: 2,
              indent: 5,
              endIndent: 0,
              color: Colors.black12,
            ),
            Container(
                child: Stack(
                  children: [
                    Padding(
                        padding: EdgeInsets.only(left:20),
                        child: OutlinedButton(onPressed: () {
                          debugPrint('Received click');},
                          child: const Text('                    Continue with Google                         '),))],
                )),
            SizedBox(height: 20),
            Container(
                child: Padding(
                  padding: EdgeInsets.only(left: 50),
                  child: Text.rich(
                    TextSpan(
                      text: "Don't have an account?",
                      children: <TextSpan>[
                        TextSpan(
                            text: 'Register',
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
