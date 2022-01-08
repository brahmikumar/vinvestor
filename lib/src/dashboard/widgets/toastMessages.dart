import 'package:flutter/material.dart';
import 'package:vinvestor/vui/ui_components/buttons/button.dart';
import 'package:vinvestor/vui/ui_components/buttons/outlined_button.dart';
import 'package:vinvestor/vui/ui_components/confirm_model_sheet.dart';
import 'package:vinvestor/vui/ui_components/labels.dart';
import 'package:vinvestor/vui/ui_components/snackbar.dart';
import 'package:vinvestor/vui/ui_components/buttons/text_button.dart';

class ToastMessagesDemo extends StatefulWidget {
  const ToastMessagesDemo({Key? key}) : super(key: key);

  @override
  _ToastMessagesDemoState createState() => _ToastMessagesDemoState();
}

class _ToastMessagesDemoState extends State<ToastMessagesDemo> {

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          const SizedBox(height: 20,),

          AppTextButton("Snack Bar", (){ ToastMessage.snackBarMessage(context, "Test Snack Bar"); }),
          const SizedBox(height: 20,),

          AppOutlinedButton("Error Message Snack Bar", (){ ToastMessage.errorSnackBar(context, "Something Went Wrong Please Try Again Later"); }),
          const SizedBox(height: 20,),

          VButton("Action Snack Bar", (){ ToastMessage.actionSnackBar(context, "Live Facilities Are Available", "Goto Facilities", (){Navigator.pushNamed(context, "/liveFacilities");}); }),
          const SizedBox(height: 40,),

          VButton("Logout", (){
            showModalBottomSheet<dynamic>(
                isScrollControlled: true,
                context: context,
                builder: (context) {
                  return ConfirmBottomModelSheet(
                    title: "Confirm",
                    message: "Are Sur You Want to logout",
                    action: const ["Yes", "No"],
                    onConfirmChanged: (result) async {
                      if(result){
                        ToastMessage.snackBarMessage(context, "Log out successfully");
                      }
                    },
                  );
                }
            );
          }),
          const SizedBox(height: 40,),

          VButton("Delete Facility", (){
            showModalBottomSheet<dynamic>(
                isScrollControlled: true,
                context: context,
                builder: (context) {
                  return ConfirmBottomModelSheet(
                    title: "Delete Facility",
                    message: "Are you sure, You want to delete facility",
                    action: const ["Delete", "Cancel"],
                    onConfirmChanged: (result) async {
                      if(result){
                        ToastMessage.snackBarMessage(context, "Successfully deleted facility");
                      }
                    },
                  );
                }
            );
          }),
          const SizedBox(height: 40,),

          lowRiskLabel("Success"),
          lowMediumRiskLabel("Warning"),
          mediumRiskLabel("Error"),
          highRiskLabel("Delete"),
        ],
      ),
    );
  }
}
