import 'package:flutter/material.dart';
import 'package:vinvestor/src/dashboard/widgets/buttons.dart';
import 'package:vinvestor/src/dashboard/widgets/overview.dart';
import 'package:vinvestor/src/dashboard/widgets/toastMessages.dart';

class Dashboard extends StatefulWidget {
  static const routeName = "/dashboard";
  const Dashboard({Key? key}) : super(key: key);

  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  redirect(){
    print("redirect to live facilities 1");
    Navigator.pushNamed(context, "/liveFacilities");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Investor Home"),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              child: Column(
                //mainAxisAlignment: MainAxisAlignment.center,
                children:  const [
                  Overview(),
                  Divider(),
                  ButtonsDemo(),
                  Divider(),
                  ToastMessagesDemo(),


                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
