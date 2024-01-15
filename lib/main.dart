import 'package:flutter/material.dart';
import 'package:login1_flutter/register_page.dart';
import 'package:login1_flutter/registerverification_page.dart';
import 'package:login1_flutter/welcom_page.dart';

import 'dashboard_page.dart';
import 'forgotpassword_page.dart';
import 'forgotpasswordentercode_page.dart';
import 'forgotpasswordverification_page.dart';
import 'login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const WelcomPage(),
    );
  }
}

