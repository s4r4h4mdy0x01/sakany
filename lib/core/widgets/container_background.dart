import 'package:flutter/material.dart';
import 'package:sakany/core/theming/colors.dart';

class ContainerBackground extends StatelessWidget {
  final double height;
  const ContainerBackground({super.key, required this.height});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: height,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [ColorManager.primary, ColorManager.darkPrimary],
          begin: Alignment.topCenter, //begin of the gradient color
          end: Alignment.bottomCenter, //end of the gradient color
        ),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(20),
          bottomRight: Radius.circular(20),
        ),
      ),
    );
  }
}
