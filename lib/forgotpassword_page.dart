import 'package:flutter/material.dart';

class ForgotPasswordPage extends StatefulWidget {
  const ForgotPasswordPage({super.key});

  @override
  State<ForgotPasswordPage> createState() => _ForgotPasswordPageState();
}

class _ForgotPasswordPageState extends State<ForgotPasswordPage> {
  String email = "";

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
                child: Text("Recover you password if you have  "
                    "             forgot the password!"),
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
                        child: Text('           Submit           ',
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
