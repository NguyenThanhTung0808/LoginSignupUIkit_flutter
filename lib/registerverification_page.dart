import 'package:flutter/material.dart';

class RegisterVerificatinonPage extends StatefulWidget {
  const RegisterVerificatinonPage({super.key});

  @override
  State<RegisterVerificatinonPage> createState() =>
      _RegisterVerificatinonPageState();
}

class _RegisterVerificatinonPageState extends State<RegisterVerificatinonPage> {
  String verificationcode = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.maxFinite,
        padding: EdgeInsets.symmetric(horizontal: 35, vertical: 110),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Register",
                style: TextStyle(
                    color: Colors.blue,
                    fontSize: 32,
                    fontWeight: FontWeight.w700)),
            SizedBox(height: 10),
            Container(
              child: Padding(
                padding: EdgeInsets.only(left: 1),
                child: Text("We have sent an email to your email "
                    "          account with a verification code!"),
              ),
            ),
            SizedBox(height: 40),
            Padding(
              padding: EdgeInsets.only(left: 1),
              child: TextField(
                onChanged: (newVerificationCode) {
                  print(newVerificationCode);
                  verificationcode = newVerificationCode;
                },
                keyboardType: TextInputType.text,
                style: TextStyle(fontSize: 10),
                decoration: InputDecoration(
                    labelText: 'Verification Code',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10))),
              ),
            ),
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
                        child: Text('           Register           ',
                            style: TextStyle(fontSize: 30)),
                        onPressed: () {},
                      ))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
