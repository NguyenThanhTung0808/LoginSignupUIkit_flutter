import 'package:flutter/material.dart';
import 'package:login1_flutter/registerverification_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String email = "";
  String yourpassword = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 35, vertical: 110),
        child: SingleChildScrollView(
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
                      "                 and income at a place"),
                ),
              ),
              SizedBox(height: 40),
              Container(
                child: Stack(
                  children: [
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
                            prefixIcon: Image.asset("assets/images/img_a.png"),
                            labelText: 'Email',
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10))),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 40),
              Container(
                child: Stack(
                  children: [
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
                            prefixIcon: Image.asset("assets/images/img_password.png"),
                            labelText: 'Your Password',
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10))),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              Container(
                  child: Padding(
                padding: EdgeInsets.only(left: 1),
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
              )),
              SizedBox(height: 40),
              Padding(
                  padding: EdgeInsets.only(left: 2),
                  child: Container(
                    width: double.infinity,
                    height: 50,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.all(Radius.circular(10))
                    ),
                    child: Text('Login',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                        )),
                  )),
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
                  Positioned(
                    child: Image.asset(
                      "assets/images/img_google.png",
                      width: 200,
                      height: 50,
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.only(left: 20),
                      child: OutlinedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const RegisterVerificatinonPage()));
                          debugPrint('Received click');
                        },
                        child: const Text(
                            '                    Continue with Google                         '),
                      ))
                ],
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
      ),
    );
  }
}
