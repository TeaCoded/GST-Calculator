import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gst_calculator/helper/colors.dart';


class Themes {
  final lightTheme = ThemeData.light().copyWith(
      brightness: Brightness.light,
      appBarTheme: AppBarTheme(backgroundColor: MyColors.whiteColor),
      scaffoldBackgroundColor: MyColors.whiteColor,
      textTheme: TextTheme(
        labelLarge: TextStyle(
            fontSize: 15.sp,
            color: MyColors.midBlackColor,
            fontWeight: FontWeight.w500,
            fontFamily: 'Inder'),
        labelMedium: TextStyle(
            fontSize: 15.sp,
            color: MyColors.blackColor,
            fontWeight: FontWeight.w500,
            fontFamily: 'Inder'),
        labelSmall: TextStyle(
            fontSize: 12.sp,
            color: MyColors.midBlackColor,
            fontWeight: FontWeight.w500,
            fontFamily: 'Inder'),
        displayLarge: TextStyle(
            fontSize: 33.sp,
            color: MyColors.blackColor,
            fontWeight: FontWeight.w500,
            fontFamily: 'Inder'),
        displayMedium: TextStyle(
            fontSize: 30.sp,
            color: MyColors.blackColor,
            fontWeight: FontWeight.w500,
            fontFamily: 'Inder'),
        titleLarge: TextStyle(
            fontSize: 12.sp,
            color: MyColors.lightBlackColor,
            fontWeight: FontWeight.w500,
            fontFamily: 'GermaniaOne'),
        titleSmall: TextStyle(
            fontSize: 18.sp,
            color: MyColors.lightBlackColor,
            fontWeight: FontWeight.w700,
            fontFamily: 'Inder'),
        bodyMedium: TextStyle(
            fontSize: 28.sp,
            color: MyColors.blackColor,
            fontWeight: FontWeight.w600),
        bodySmall: TextStyle(
            fontSize: 22.sp,
            color: MyColors.blackColor,
            fontWeight: FontWeight.w500,
            fontFamily: 'Inder'),
      ));
  final darkTheme = ThemeData.dark().copyWith(
      brightness: Brightness.dark,
      appBarTheme: AppBarTheme(backgroundColor: MyColors.blackColor),
      scaffoldBackgroundColor: MyColors.blackColor,
      textTheme: TextTheme(
        labelLarge: TextStyle(
            fontSize: 15.sp,
            color: MyColors.midWhiteColor,
            fontWeight: FontWeight.w500,
            fontFamily: 'Inder'),
        labelMedium: TextStyle(
            fontSize: 15.sp,
            color: MyColors.whiteColor,
            fontWeight: FontWeight.w500,
            fontFamily: 'Inder'),
        labelSmall: TextStyle(
            fontSize: 12.sp,
            color: MyColors.midBlackColor,
            fontWeight: FontWeight.w500,
            fontFamily: 'Inder'),
        displayLarge: TextStyle(
            fontSize: 33.sp,
            color: MyColors.whiteColor,
            fontWeight: FontWeight.w500,
            fontFamily: 'Inder'),
        displayMedium: TextStyle(
            fontSize: 30.sp,
            color: MyColors.whiteColor,
            fontWeight: FontWeight.w500,
            fontFamily: 'Inder'),
        titleLarge: TextStyle(
            fontSize: 12.sp,
            color: MyColors.lightWhiteColor,
            fontWeight: FontWeight.w500,
            fontFamily: 'GermaniaOne'),
        titleSmall: TextStyle(
            fontSize: 18.sp,
            color: MyColors.lightBlackColor,
            fontWeight: FontWeight.w700,
            fontFamily: 'Inder'),
        bodyMedium: TextStyle(
            fontSize: 28.sp,
            color: MyColors.whiteColor,
            fontWeight: FontWeight.w600),
        bodySmall: TextStyle(
            fontSize: 22.sp,
            color: MyColors.whiteColor,
            fontWeight: FontWeight.w500,
            fontFamily: 'Inder'),
      ));
}

