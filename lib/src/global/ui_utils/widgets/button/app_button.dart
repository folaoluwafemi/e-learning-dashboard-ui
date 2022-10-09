import 'package:e_learning_dashboard/src/global/app/app_barrel.dart';
import 'package:e_learning_dashboard/src/global/ui_utils/ui_utils_barrel.dart';
import 'package:flutter/material.dart';

abstract class AppButton {
  static Widget filled({
    required VoidCallback onPressed,
    required child,
    double elevation = 0,
    double height = 50,
    double width = 327,
    bool center = true,
    double radius = 8,
    bool loading = false,
    Color color = AppColors.purple,
    bool disabled = false,
    EdgeInsets padding = EdgeInsets.zero,
    Key? key,
  }) =>
      SizedBox(
        width: width,
        height: height,
        child: MaterialButton(
          elevation: elevation,
          color: color,
          highlightElevation: elevation,
          shape: RoundedRectangleBorder(
            borderRadius: Ui.circularRadius(radius),
          ),
          disabledElevation: 0,
          onPressed: disabled ? null : onPressed,
          padding: padding,
          child: loading
              ? const Center(child: CircularProgressIndicator())
              : center
                  ? Center(child: child)
                  : child,
        ),
      );
}
