import 'package:flutter/material.dart';
import 'package:swift_resume_builder/service/constant/colors.dart';
import 'package:swift_resume_builder/view/widgets/texts.dart';

class CustomButtons extends StatelessWidget {
  const CustomButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 45),
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(5)),
          gradient: LinearGradient(colors: [
            AppColors.primaryBlue,
            AppColors.secondaryBlue,
            AppColors.secondaryBlue
          ])),
      child: CustomText().buttonText(text: 'LOGIN', color: Colors.white),
    );
  }
}
