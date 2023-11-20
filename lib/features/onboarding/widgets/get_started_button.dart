import 'package:complete_project/core/helpers/extensions.dart';
import 'package:complete_project/core/routing/routes.dart';
import 'package:complete_project/core/theming/colors.dart';
import 'package:complete_project/core/theming/styles.dart';
import 'package:flutter/material.dart';

class GetStartedButton extends StatelessWidget {
  const GetStartedButton({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        context.pushNamed(Routes.loginScreen);
      },
      child: Text(
        'Get Started',
        style: TextStyles.font16WhiteSemiBold,
      ),
      style: ButtonStyle(
          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
          minimumSize: MaterialStateProperty.all(Size(double.infinity, 50)),
          shape: MaterialStatePropertyAll(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(16))),
          backgroundColor: MaterialStateProperty.all(ColorsManager.mainBlue)),
    );
  }
}
