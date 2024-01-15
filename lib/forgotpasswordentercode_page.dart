import 'package:flutter/material.dart';

class ForgotPasswordEnterCode extends StatefulWidget {
  const ForgotPasswordEnterCode({super.key});

  @override
  State<ForgotPasswordEnterCode> createState() =>
      _ForgotPasswordEnterCodeState();
}

class _ForgotPasswordEnterCodeState extends State<ForgotPasswordEnterCode> {
  String enternewpassword = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.maxFinite,
        padding: EdgeInsets.symmetric(horizontal: 35, vertical: 110),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Forgot Password",
                style: TextStyle(
                    color: Colors.blue,
                    fontSize: 32,
                    fontWeight: FontWeight.w700)),
            SizedBox(height: 10),
            Container(
              child: Padding(
                padding: EdgeInsets.only(left: 1),
                child: Text("set your new password to login intro  "
                    "              your account!"),
              ),
            ),
            SizedBox(height: 40),
            Padding(
              padding: EdgeInsets.only(left: 1),
              child: TextField(
                onChanged: (newEnterNewPassword) {
                  print(newEnterNewPassword);
                  enternewpassword = newEnterNewPassword;
                },
                keyboardType: TextInputType.text,
                style: TextStyle(fontSize: 10),
                decoration: InputDecoration(
                    labelText: 'Enter New Password',
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
                        child: Text('           Confirm           ',
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
