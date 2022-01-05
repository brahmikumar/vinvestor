import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  static const routeName = "/dashboard";
  const Dashboard({Key? key}) : super(key: key);

  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Investor Home"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text("Dashboard Page")
              ],
            ),
          ),
        ),
      ),
    );
  }
}
