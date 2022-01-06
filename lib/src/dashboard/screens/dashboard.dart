import 'package:flutter/material.dart';
import 'package:vinvestor/vui/ui_components/button.dart';
import 'package:vinvestor/vui/ui_components/outlined_button.dart';
import 'package:vinvestor/vui/ui_components/snackbar.dart';
import 'package:vinvestor/vui/ui_components/text_button.dart';

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
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(
            child: Column(
              //mainAxisAlignment: MainAxisAlignment.center,
              children:  [
                Card(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Portfolio Balance", style: Theme.of(context).textTheme.subtitle1),
                            Text("\$29,761.83", style: Theme.of(context).textTheme.subtitle1)
                          ],
                        ),
                        const SizedBox(height: 10,),
                        const Divider(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text("Available balance"),
                            Text("\$6,309.83")
                          ],
                        ),
                        const SizedBox(height: 10,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Expanded(child: Text("Principle in outstanding facilities")),
                            Text("\$4,869.00")
                          ],
                        ),
                        const SizedBox(height: 10,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text("Committed amount"),
                            Text("\$18,598.00")
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 20,),
                Card(
                  child: Container(
                    width: double.infinity,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Weighted Average Tenure (YTD)", style: Theme.of(context).textTheme.subtitle1),
                          const SizedBox(height: 10,),
                          Text("2.05 months", style: Theme.of(context).textTheme.caption)
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20,),
                Card(
                  child: Container(
                    width: double.infinity,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Weighted Average Interest Rate (YTD)", style: Theme.of(context).textTheme.subtitle1),
                          const SizedBox(height: 10,),
                          Text("8.17% per month", style: Theme.of(context).textTheme.caption)
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20,),
                VButton("Live Facilities", redirect ),
                const SizedBox(height: 20,),
                AppTextButton("Snack Bar", (){ ToastMessage.snackBarMessage(context, "Test Snack Bar"); }),
                const SizedBox(height: 20,),
                AppOutlinedButton("Error Message Snack Bar", (){ ToastMessage.errorSnackBar(context, "Something Went Wrong Please Try Again Later"); }),
                const SizedBox(height: 20,),
                VButton("Action Snack Bar", (){ ToastMessage.actionSnackBar(context, "Action", "Go to Main Page", redirect); }),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
