import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sakany/core/const/string_maneger.dart';
import 'package:sakany/core/helper/spacing.dart';
import 'package:sakany/core/theming/colors.dart';
import 'package:sakany/core/widgets/app_text_form_field.dart';
import 'package:sakany/features/sign_in/ui/widgets/email_and_password.dart';
import '../../../../core/theming/styles.dart';
import '../../../../core/widgets/app_text_button.dart';
import '../../../../core/widgets/or_divider.dart';

class CardSignIn extends StatelessWidget {
  const CardSignIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 30.h, horizontal: 26.w),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: ColorManager.black.withOpacity(
                0.6,
              ),
              blurRadius: 15,
              offset: const Offset(0, 3),
            ),
          ]),
      child: Column(
        children: [
       const   EmailAndPassword(),
          verticalSpace(20),
          AppTextButton(
            buttonText: StringManeger.signIn,
            textStyle: TextStyManager.font16WhiteBold,
            backgroundColor: ColorManager.primary,
            onPressed: () {
              //  context.pushReplacementNamed( RoutesString.homeScreen);
            },
          ),
          verticalSpace(30),
          const OrDivider(),
          verticalSpace(30),
          AppTextButton(
            buttonText: StringManeger.signUp,
            textStyle: TextStyManager.font16PrimaryBold,
            backgroundColor: ColorManager.white,
            onPressed: () {},
          ),
          verticalSpace(20),
        ],
      ),
    );
  }
}
