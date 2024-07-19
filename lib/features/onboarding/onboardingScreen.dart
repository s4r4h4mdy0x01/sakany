import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sakany/core/const/string_maneger.dart';
import 'package:sakany/core/widgets/or_divider.dart';
import 'package:sakany/features/onboarding/widgets/card_sign_in_or_sign_up.dart';

import '../../core/theming/styles.dart';
import '../../core/widgets/app_text_button.dart';
import '../../core/widgets/app_text_form_field.dart';
import '../../core/widgets/container_background.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const ContainerBackground(
            height: 500,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(StringManeger.sakany,
                  style: TextStyManager.font70WhiteRegular
                      .copyWith(fontFamily: StringManeger.familyFontALMOND)),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h,vertical: 20.w),
                child: const CardSignInOrSignUp(),
              )
            ],
          ),
        ],
      ),
    );
  }
}
