import 'package:e_learning_dashboard/src/global/app/app_barrel.dart';
import 'package:e_learning_dashboard/src/global/ui_utils/ui_utils_barrel.dart';
import 'package:e_learning_dashboard/src/ui/ui_barrel.dart';
import 'package:e_learning_dashboard/src/utils/constants/assets.dart';
import 'package:e_learning_dashboard/src/utils/extensions/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:iconsax/iconsax.dart';

part 'widgets/sidebar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double screenWidth = context.screenWidth;
    return Scaffold(
      body: Row(
        children: [
          const SideBar(),
          const Expanded(
            child: MainContent(),
          ),
          SizedBox(
            width: screenWidth.percent(30),
            child: const ScheduleContentBar(),
          ),
        ],
      ),
    );
  }
}

class MainContent extends StatelessWidget {
  const MainContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column();
  }
}

class ScheduleContentBar extends StatelessWidget {
  const ScheduleContentBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.white,
    );
  }
}
