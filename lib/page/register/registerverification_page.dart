import 'package:flutter/material.dart';

class RegisterVerificatinonPage extends StatefulWidget {
  const RegisterVerificatinonPage({super.key});

  @override
  State<RegisterVerificatinonPage> createState() =>
      _RegisterVerificatinonPageState();
}

class _RegisterVerificatinonPageState extends State<RegisterVerificatinonPage> {
  String veRiFiCationCode = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.maxFinite,
        padding: const EdgeInsets.symmetric(horizontal: 35, vertical: 110),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("Register",
                  style: TextStyle(
                      color: Colors.blue,
                      fontSize: 32,
                      fontWeight: FontWeight.w700)),
              const SizedBox(height: 10),
              const Padding(
                padding: EdgeInsets.only(left: 1),
                child: Text("We have sent an email to your email "
                    "          account with a verification code!"),
              ),
              const SizedBox(height: 100),
              Padding(
                padding: const EdgeInsets.only(left: 1),
                child: TextField(
                  onChanged: (newVerificationCode) {
                    print(newVerificationCode);
                    veRiFiCationCode = newVerificationCode;
                  },
                  keyboardType: TextInputType.text,
                  style: const TextStyle(fontSize: 10),
                  decoration: InputDecoration(
                      labelText: 'Verification Code',
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
                          child: const Text('           Register           ',
                              style: TextStyle(fontSize: 30)),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        ))
            ],
          ),
        ),
      ),
    );
  }
}
