import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/const/string_maneger.dart';
import '../../../../core/theming/styles.dart';
import '../../../../core/widgets/container_background.dart';
import '../../../onboarding/widgets/card_sign_in_or_sign_up.dart';
import '../widgets/card_sign_in.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

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
                child: const CardSignIn(),
              )
            ],
          ),
        ],
      ),
    );
  }
}