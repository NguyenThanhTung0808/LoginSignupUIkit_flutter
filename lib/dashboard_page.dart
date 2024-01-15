import 'package:flutter/material.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.maxFinite,
        padding: EdgeInsets.symmetric(vertical: 57),
        child: Column(
          children: [
            Spacer(
              flex: 44,
            ),
            Text(
              "DASHBOARD",
              style: TextStyle(
                color: Colors.black,
                fontSize: 43.56435775756836,
                fontWeight: FontWeight.w700,
              ),
            ),
            Spacer(
              flex: 55,
            ),
          ],
        ),
      ),
    );
  }
}
