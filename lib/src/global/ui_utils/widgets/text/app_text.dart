import 'package:e_learning_dashboard/src/global/app/app_barrel.dart';
import 'package:e_learning_dashboard/src/utils/constants/assets.dart';
import 'package:flutter/material.dart';

///This is the general widget for text in this app
///use this rather than the flutter provided text widget
///
/// static methods are provided for fontWeights
/// eg. AppText.cocoaSharpBold(
///       "my text",
///       fontSize: 20,
///      )...
///   for -> fontWeight = 700
///          fontSize = 20
///          fontFamily = 'CocoaSharp'
///
/// if there are font weight that are not provided here
/// feel free to add a  method for it.
/// happy coding :)
///
class AppText extends StatelessWidget {
  final String text;
  final FontWeight? weight;
  final double? fontSize;
  final String? fontFamily;
  final FontStyle? style;
  final Color? color;
  final TextAlign? alignment;
  final TextDecoration? decoration;
  final TextOverflow overflow;

  ///fontSize = 14
  ///color = #000000
  const AppText(
    this.text, {
    Key? key,
    this.weight = FontWeight.w400,
    this.fontSize,
    this.style = FontStyle.normal,
    this.color,
    this.fontFamily,
    this.alignment = TextAlign.start,
    this.overflow = TextOverflow.visible,
    this.decoration,
  }) : super(key: key);

  ///fontSize: 15
  ///weight: w700
  static AppText bold(
    String text, {
    Color? color,
    TextAlign? alignment,
    String? fontFamily,
    double? fontSize,
  }) =>
      AppText(
        text,
        weight: FontWeight.w700,
        color: color,
        alignment: alignment,
        fontFamily: fontFamily,
        fontSize: fontSize,
      );

  ///fontSize: 15
  ///weight: w400
  ///family: cocoa sharp
  static AppText cocoaSharp(
    String text, {
    Color? color,
    TextAlign? alignment,
    double? fontSize,
  }) =>
      AppText(
        text,
        weight: FontWeight.w400,
        color: color,
        alignment: alignment,
        fontFamily: Assets.cocoaSharp,
        fontSize: fontSize,
      );

  ///fontSize: 15
  ///weight: w700
  static AppText boldDmSans(
    String text, {
    Color? color,
    TextAlign? alignment,
    double? fontSize,
  }) =>
      AppText(
        text,
        weight: FontWeight.w700,
        color: color,
        alignment: alignment,
        fontFamily: Assets.dmSansFont,
        fontSize: fontSize,
      );

  ///fontSize: 15
  ///weight: w400
  ///family: cocoa sharp
  static AppText cocoaSharpBold(
    String text, {
    Color? color,
    TextAlign? alignment,
    double? fontSize,
  }) =>
      AppText(
        text,
        weight: FontWeight.w700,
        color: color,
        alignment: alignment,
        fontFamily: Assets.cocoaSharp,
        fontSize: fontSize,
      );

  ///fontSize: 15
  ///weight: w300
  static AppText light(
    String text, {
    Color? color,
    TextAlign? alignment,
    String? fontFamily,
    double? fontSize,
  }) =>
      AppText(
        text,
        weight: FontWeight.w300,
        color: color,
        alignment: alignment,
        fontFamily: fontFamily,
        fontSize: fontSize,
      );

  ///fontSize: 14
  ///weight: w600
  static AppText semiBold(
    String text, {
    Color? color,
    double? fontSize,
    TextAlign? alignment,
    TextDecoration? decoration,
  }) =>
      AppText(
        text,
        decoration: decoration,
        weight: FontWeight.w600,
        alignment: alignment,
        color: color,
        fontSize: fontSize,
      );

  ///weight: w500
  ///fontSize: 18
  ///color: black
  static AppText button(
    String text, {
    double fontSize = 18,
    bool disabled = false,
  }) =>
      AppText.medium(
        text,
        fontSize: fontSize,
        color: AppColors.white,
      );

  ///weight: w500
  ///fontSize: 14
  static AppText medium(
    String text, {
    Color? color,
    double? fontSize,
  }) =>
      AppText(
        text,
        fontSize: fontSize,
        weight: FontWeight.w500,
        color: color,
      );

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        decoration: decoration,
        fontSize: fontSize ?? 14,
        fontFamily: fontFamily ?? Assets.poppins,
        fontWeight: weight,
        color: color,
        overflow: overflow,
        fontStyle: style,
      ),
      textAlign: alignment,
    );
  }
}
