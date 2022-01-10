import 'package:flutter/material.dart';
import 'package:vinvestor/src/utils/app_messages.dart';
import 'package:vinvestor/vui/ui_components/buttons.dart';
import 'package:vinvestor/vui/ui_components/confirm_model_sheet.dart';
import 'package:vinvestor/vui/ui_components/labels.dart';
import 'package:vinvestor/vui/ui_components/snackbar.dart';

class ConfirmMessagesDemo extends StatelessWidget {
  const ConfirmMessagesDemo({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          headlineLabel(context, "Confirm Model Sheet"),
          const SizedBox(height: 20,),
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
                          ToastMessage.snackBarMessage(context, Messages.logoutSuccessMsg);
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
