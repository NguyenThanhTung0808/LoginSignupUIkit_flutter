import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  String yourName = "";
  String email = "";
  String yourPass = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        width: double.maxFinite,
        padding: const EdgeInsets.symmetric(horizontal: 35, vertical: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Register",
                style: TextStyle(
                    color: Colors.blue,
                    fontSize: 32,
                    fontWeight: FontWeight.w700)),
            const SizedBox(height: 10),
            const Padding(
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
            ),
            const SizedBox(height: 40),
            Padding(
              padding: const EdgeInsets.only(left: 1),
              child: TextField(
                onChanged: (newEmail) {
                  print(newEmail);
                  email = newEmail;
                },
                keyboardType: TextInputType.text,
                style: const TextStyle(fontSize: 10),
                decoration: InputDecoration(
                    prefixIcon: Image.asset("assets/images/img_a.png"),
                    labelText: 'Email',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10))),
              ),
            ),
            const SizedBox(height: 40),
            Padding(
              padding: const EdgeInsets.only(left: 1),
              child: TextField(
                onChanged: (newYourName) {
                  print(newYourName);
                  yourName = newYourName;
                },
                keyboardType: TextInputType.text,
                style: const TextStyle(fontSize: 10),
                decoration: InputDecoration(
                    prefixIcon: Image.asset("assets/images/img_Vector.png"),
                    labelText: 'Your Name',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10))),
              ),
            ),
            const SizedBox(height: 40),
            Padding(
                padding: const EdgeInsets.only(left: 1),
                child: TextField(
                    onChanged: (newYouPass) {
                      print(newYouPass);
                      yourPass = newYouPass;
                    },
                    keyboardType: TextInputType.text,
                    style: const TextStyle(fontSize: 10),
                    decoration: InputDecoration(
                        prefixIcon:
                            Image.asset("assets/images/img_password.png"),
                        labelText: 'Your Password',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10))))),
            const SizedBox(height: 30),
            Padding(
                padding: const EdgeInsets.only(left: 2),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: Colors.blue, // foreground
                  ),
                  child: const Text('           Register           ',
                      style: TextStyle(fontSize: 30)),
                  onPressed: () {},
                )),
            const SizedBox(height: 30),
            const Padding(
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
            ),
          ],
        ),
      ),
    );
  }
}
