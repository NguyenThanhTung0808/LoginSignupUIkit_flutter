import 'package:flutter/material.dart';

class ForgotPasswordEnterCode extends StatefulWidget {
  const ForgotPasswordEnterCode({super.key});

  @override
  State<ForgotPasswordEnterCode> createState() =>
      _ForgotPasswordEnterCodeState();
}

class _ForgotPasswordEnterCodeState extends State<ForgotPasswordEnterCode> {
  String enterNewPassword = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.maxFinite,
        padding: EdgeInsets.symmetric(horizontal: 35, vertical: 110),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("Forgot Password",
                style: TextStyle(
                    color: Colors.blue,
                    fontSize: 32,
                    fontWeight: FontWeight.w700)),
            const SizedBox(height: 10),
             const Padding(
                padding: EdgeInsets.only(left: 1),
                child: Text("set your new password to login intro  "
                    "              your account!"),),
            const SizedBox(height: 40),
            Padding(
              padding: const EdgeInsets.only(left: 1),
              child: TextField(
                onChanged: (newEnterNewPassword) {
                  print(newEnterNewPassword);
                  enterNewPassword = newEnterNewPassword;
                },
                keyboardType: TextInputType.text,
                style: const TextStyle(fontSize: 10),
                decoration: InputDecoration(
                    prefixIcon: Image.asset("assets/images/img_password.png"),
                    labelText: 'Enter New Password',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10))),
              ),
            ),
            const SizedBox(height: 30),

                  Padding(
                      padding: const EdgeInsets.only(left: 2),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          foregroundColor: Colors.white,
                          backgroundColor: Colors.blue, // foreground
                        ),
                        child: const Text('           Confirm           ',
                            style: TextStyle(fontSize: 30)),
                        onPressed: () {},
                      ))
          ],
        ),
      ),
    );
  }
}
