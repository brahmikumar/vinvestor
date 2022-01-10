import 'package:flutter/material.dart';
import 'package:vinvestor/vui/colors/colors.dart';
import 'package:vinvestor/vui/ui_components/buttons.dart';
import 'package:vinvestor/vui/ui_components/labels.dart';
import 'package:vinvestor/vui/ui_components/snackbar.dart';

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
          headlineLabel(context, "Toast Messages"),
          const SizedBox(height: 20,),
          customButton(
            "Snack Bar",
            (){
              ToastMessage.snackBarMessage(context, "Test Snack Bar");
            },
            AppColors.colorSeqBlueThree,
            AppColors.colorBlackPrimary,
          ),
          const SizedBox(height: 20,),

          customButton(
            "Error Message Snack Bar",
            (){
              ToastMessage.errorSnackBar(context, "Something Went Wrong Please Try Again Later");
            },
            AppColors.colorSeqBlueFour,
            AppColors.colorBlackPrimary,
          ),
          const SizedBox(height: 20,),

          customButton(
            "Action Snack Bar",
            (){
              ToastMessage.actionSnackBar(context, "Live Facilities Are Available", "Goto Facilities", (){Navigator.pushNamed(context, "/liveFacilities");
              });
            },
            AppColors.colorSeqBlueFive,
            AppColors.colorSeqBlueOne,
          ),
          const SizedBox(height: 40,),
        ],
      ),
    );
  }
}
