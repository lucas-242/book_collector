import 'package:book_collector/shared/themes/themes.dart';
import 'package:flutter/material.dart';

class SocialLoginButton extends StatelessWidget {
  final VoidCallback? onTap;
  const SocialLoginButton({Key? key, this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Center(
        child: Container(
          height: 60,
          width: 280,
          decoration: BoxDecoration(
            color: AppColors.shape,
            borderRadius: BorderRadius.circular(5),
            border: Border.fromBorderSide(BorderSide(color: AppColors.stroke)),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(width: 16),
              Image.asset(AppImages.google),
              SizedBox(width: 16),
              Container(
                height: 60,
                width: 1,
                color: AppColors.stroke,
              ),
              SizedBox(width: 16),
              Text('Entrar com Google', style: AppTextStyles.button),
            ],
          ),
        ),
      ),
    );
  }
}
