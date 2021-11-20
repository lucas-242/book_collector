import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'app_colors.dart';


abstract class AppTextStyles {
  static final logo = GoogleFonts.lexendDeca(
    fontSize: 32,
    fontWeight: FontWeight.w600,
    color: AppColors.text,
  );
  static final title = GoogleFonts.lexendDeca(
    fontSize: 20,
    fontWeight: FontWeight.w400,
    color: AppColors.text,
  );
  static final titleBold = GoogleFonts.lexendDeca(
    fontSize: 20,
    fontWeight: FontWeight.w600,
    color: AppColors.text,
  );
  static final cryptoTitle = GoogleFonts.lexendDeca(
    fontSize: 15,
    fontWeight: FontWeight.w400,
    color: AppColors.text,
  );
  static final cryptoTitleBold = GoogleFonts.lexendDeca(
    fontSize: 15,
    fontWeight: FontWeight.w600,
    color: AppColors.text,
  );
  static final button = GoogleFonts.lexendDeca(
    fontSize: 15,
    fontWeight: FontWeight.w400,
    color: AppColors.text,
  );
  static final input = GoogleFonts.lexendDeca(
    fontSize: 15,
    fontWeight: FontWeight.w400,
    color: AppColors.input,
  );
  static final body = GoogleFonts.lexendDeca(
    fontSize: 13,
    fontWeight: FontWeight.w400,
    color: AppColors.text,
  );
  static final bodyBold = GoogleFonts.lexendDeca(
    fontSize: 13,
    fontWeight: FontWeight.w600,
    color: AppColors.text,
  );
  static final bodyWhite = GoogleFonts.lexendDeca(
    fontSize: 13,
    fontWeight: FontWeight.w400,
    color: AppColors.white,
  );
  static final bodyBoldWhite = GoogleFonts.lexendDeca(
    fontSize: 13,
    fontWeight: FontWeight.w600,
    color: AppColors.white,
  );
}
