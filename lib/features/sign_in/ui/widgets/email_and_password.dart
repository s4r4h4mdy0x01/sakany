import 'package:flutter/material.dart';

import '../../../../core/helper/spacing.dart';
import '../../../../core/theming/colors.dart';
import '../../../../core/theming/styles.dart';
import '../../../../core/widgets/app_text_form_field.dart';

class EmailAndPassword extends StatelessWidget {
  const EmailAndPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
         AppTextFormField(
            hintText: 'Email',
            hintStyle:  TextStyManager.font16GreyMedium,
            prefixIcon: const  Icon(
              Icons.email,
              color: ColorManager.primary,
              size:  28,
            ),
          ),
          verticalSpace(10),
         AppTextFormField(
            hintText: 'Password',
              hintStyle:  TextStyManager.font16GreyMedium,
            prefixIcon:  const Icon(
              Icons.key_outlined,
              color: ColorManager.primary,
              size: 28,

            ),
          ),
    ],);
  }
}