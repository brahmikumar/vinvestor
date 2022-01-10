import 'package:flutter/material.dart';
import 'package:vinvestor/vui/ui_components/labels.dart';

class Labels extends StatelessWidget {
  const Labels({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          headlineLabel(context, "Text Labels"),
          const SizedBox(height: 20,),
          lowRiskLabel("Success"),

          const SizedBox(height: 20,),
          lowMediumRiskLabel("Warning"),

          const SizedBox(height: 20,),
          mediumRiskLabel("Error"),

          const SizedBox(height: 20,),
          highRiskLabel("Delete"),

          const SizedBox(height: 20,),
        ],
      ),
    );
  }
}
