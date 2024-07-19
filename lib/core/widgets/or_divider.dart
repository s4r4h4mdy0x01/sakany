import 'package:flutter/material.dart';
import 'package:sakany/core/theming/colors.dart';

import '../theming/styles.dart';

class OrDivider extends StatelessWidget {
  const OrDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
   const      Expanded(
          child: Divider(
            color: ColorManager.primary,
            thickness: 1,
            endIndent: 10,
          ),
        ),
        Text(
          'OR',
          style: TextStyManager.font16PrimaryBold
        ),
    const    Expanded(
          child: Divider(
            color: ColorManager.primary,
            thickness: 1,
            indent: 10,
          ),
        ),
      ],
    );
  }
}