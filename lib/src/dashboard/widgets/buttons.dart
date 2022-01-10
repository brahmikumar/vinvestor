import 'package:flutter/material.dart';
import 'package:vinvestor/vui/colors/colors.dart';
import 'package:vinvestor/vui/ui_components/buttons/button.dart';
import 'package:vinvestor/vui/ui_components/buttons/custom_button.dart';
import 'package:vinvestor/vui/ui_components/buttons/full_width_button.dart';
import 'package:vinvestor/vui/ui_components/buttons/outlined_button.dart';
import 'package:vinvestor/vui/ui_components/labels.dart';
import 'package:vinvestor/vui/ui_components/snackbar.dart';
import 'package:vinvestor/vui/ui_components/buttons/text_button.dart';

class ButtonsDemo extends StatefulWidget {
  const ButtonsDemo({Key? key}) : super(key: key);

  @override
  State<ButtonsDemo> createState() => _ButtonsDemoState();
}

class _ButtonsDemoState extends State<ButtonsDemo> {

  redirect(){
    Navigator.pushNamed(context, "/liveFacilities");
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          headlineLabel(context, "Buttons"),
          const SizedBox(height: 20,),
          VButton("Live Facilities", redirect ),
          AppTextButton("Text Button", (){ ToastMessage.snackBarMessage(context, "Test Snack Bar"); }),
          const SizedBox(height: 20,),
          AppOutlinedButton("Outlined Button", (){ Navigator.pushNamed(context, "/overview"); }),
          const SizedBox(height: 20,),
          FullWidthButton("Full width Button", redirect ),
          const SizedBox(height: 40,),

          CustomButton("Custom Button", redirect, AppColors.colorRedPrimary, AppColors.colorSeqBlueOne ),
          const SizedBox(height: 40,),
        ],
      ),
    );
  }
}
