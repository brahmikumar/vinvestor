import 'package:flutter/material.dart';
import 'package:vinvestor/src/utils/app_messages.dart';
import 'package:vinvestor/vui/ui_components/alertDialog.dart';
import 'package:vinvestor/vui/ui_components/buttons.dart';
import 'package:vinvestor/vui/ui_components/labels.dart';
import 'package:vinvestor/vui/ui_components/snackbar.dart';

class AlertDialogsDemo extends StatelessWidget {
  const AlertDialogsDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          headlineLabel(context, "Alert Dialogs"),
          const SizedBox(height: 20,),
          textButton(
              "Submit",
                  () => showDialog<String>(
                context: context,
                builder: (BuildContext context) => AppAlertDialog(
                    "Submit",
                    Messages.formSubmitConfirmMsg,
                    [
                      {
                        "title": "ok",
                        "action": (){
                          Navigator.pop(context);
                          ToastMessage.snackBarMessage(context, Messages.formSubmitSuccessMsg);
                        },
                      },
                    ]
                ),
              )
          ),
          const SizedBox(height: 20,),
          textButton(
              "Logout",
                  () => showDialog<String>(
                context: context,
                builder: (BuildContext context) => AppAlertDialog(
                    "Logout",
                    Messages.logoutConfirmMsg,
                    [
                      {
                        "title": "ok",
                        "action": (){
                          Navigator.pop(context);
                          ToastMessage.snackBarMessage(context, Messages.logoutSuccessMsg);
                        },
                      },
                      {
                        "title": "Cancel",
                        "action": (){
                          Navigator.pop(context);
                        },
                      }
                    ]
                ),
              )
          ),

          const SizedBox(height: 20,),
        ],
      ),
    );
  }
}
