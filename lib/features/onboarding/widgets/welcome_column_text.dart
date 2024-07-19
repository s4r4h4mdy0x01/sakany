import 'package:flutter/material.dart';
import 'package:sakany/core/const/string_maneger.dart';
import 'package:sakany/core/theming/styles.dart';

class WelcomeColumnText extends StatelessWidget {
  const WelcomeColumnText({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(StringManeger.onbordingText,style: TextStyManager.font20PrimaryBold,),
        Text(StringManeger.onbordingSubText ,style: TextStyManager.font16PrimarySemBold,),
      ],
    );
  }
}