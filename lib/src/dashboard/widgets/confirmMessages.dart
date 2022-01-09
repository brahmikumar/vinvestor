import 'package:flutter/material.dart';
import 'package:vinvestor/src/utils/app_messages.dart';
import 'package:vinvestor/vui/ui_components/alertDialog.dart';
import 'package:vinvestor/vui/ui_components/buttons.dart';
import 'package:vinvestor/vui/ui_components/confirm_model_sheet.dart';
import 'package:vinvestor/vui/ui_components/snackbar.dart';

class ConfirmMessagesDemo extends StatelessWidget {
  const ConfirmMessagesDemo({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          const SizedBox(height: 20,),
          textButton(
              "Submit",
              () => showDialog<String>(
                context: context,
                builder: (BuildContext context) => AppAlertDialog(
                    "Submit",
                    "Once you submit you can't modify details",
                    [
                      {
                        "title": "ok",
                        "action": (){
                          Navigator.pop(context);
                          ToastMessage.snackBarMessage(context, Messages.logoutConfirmMsg);
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

          const SizedBox(height: 40,),
          button("Logout", (){
            showModalBottomSheet<dynamic>(
                  isScrollControlled: true,
                  context: context,
                  builder: (context) {
                    return ConfirmBottomModelSheet(
                      title: "Confirm",
                      message: Messages.logoutConfirmMsg,
                      action: const ["Yes", "No"],
                      onConfirmChanged: (result) async {
                        if(result){
                          ToastMessage.snackBarMessage(context, Messages.logoutConfirmMsg);
                        }
                      },
                    );
                  }
              );
            }
          ),
          const SizedBox(height: 40,),

          button("Delete Facility", (){
            showModalBottomSheet<dynamic>(
                isScrollControlled: true,
                context: context,
                builder: (context) {
                  return ConfirmBottomModelSheet(
                    title: "Delete Facility",
                    message: Messages.deleteFacilityConfirmMsg,
                    action: const ["Delete", "Cancel"],
                    onConfirmChanged: (result) async {
                      if(result){
                        ToastMessage.snackBarMessage(context, Messages.deleteFacilitySuccessMsg);
                      }
                    },
                  );
                }
            );
          }),
          const SizedBox(height: 40,),
        ],
      ),
    );
  }
}
