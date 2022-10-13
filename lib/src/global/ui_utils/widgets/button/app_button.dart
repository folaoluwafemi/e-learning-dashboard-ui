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
    bool shrink = false,
    bool shrinkWidth = false,
    bool shrinkHeight = false,
    double radius = 8,
    bool loading = false,
    Color color = AppColors.purple,
    bool disabled = false,
    EdgeInsets padding = EdgeInsets.zero,
    Key? key,
  }) =>
      SizedBox(
        width: shrink
            ? null
            : shrinkWidth
                ? null
                : width,
        height: shrink
            ? null
            : shrinkHeight
                ? null
                : height,
        child: MaterialButton(
          elevation: elevation,
          hoverElevation: elevation,
          hoverColor: color,
          color: color,
          highlightElevation: elevation,
          shape: RoundedRectangleBorder(
            borderRadius: Ui.circularRadius(radius),
          ),
          disabledElevation: 0,
          onPressed: onPressed,
          padding: padding,
          child: loading
              ? const Center(
                  child: CircularProgressIndicator(),
                )
              : center
                  ? Center(child: child)
                  : child,
        ),
      );
}
