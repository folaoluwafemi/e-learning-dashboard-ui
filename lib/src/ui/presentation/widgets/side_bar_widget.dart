import 'package:e_learning_dashboard/src/global/app/app_barrel.dart';
import 'package:e_learning_dashboard/src/global/ui_utils/ui_utils_barrel.dart';
import 'package:e_learning_dashboard/src/utils/extensions/extensions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

enum SideBarItem {
  dashboard(Iconsax.element_45, 'Dashboard'),
  schedule(Iconsax.calendar5, 'Schedule'),
  homework(Iconsax.briefcase5, 'Homework'),
  message(Iconsax.sms5, 'Message'),
  group(Iconsax.profile_2user5, 'Group'),
  settings(Iconsax.setting_24, 'Settings');

  final IconData icon;
  final String title;

  const SideBarItem(this.icon, this.title);
}

class SideBarWidget extends StatelessWidget {
  final SideBarItem item;
  final bool isSelected;
  final ValueChanged<SideBarItem> onPressed;

  const SideBarWidget({
    Key? key,
    required this.item,
    required this.onPressed,
    required this.isSelected,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double screenWidth = context.screenWidth;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 34.0),
      child: AppButton.filled(
        // shrink: true,
        shrinkWidth: true,
        height: 49,
        onPressed: () => onPressed(item),
        color: isSelected ? AppColors.purple : AppColors.transparent,
        child: Opacity(
          opacity: isSelected ? 1 : 0.4,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              18.boxWidth,
              Icon(
                item.icon,
                color: isSelected ? AppColors.white : AppColors.lightPurple,
              ),
              20.boxWidth,
              AppText.medium(
                item.title,
                color: isSelected ? AppColors.white : AppColors.lightPurple,
                fontSize: 18,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
