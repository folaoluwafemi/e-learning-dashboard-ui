part of '../home_screen.dart';

class SideBar extends StatefulWidget {
  const SideBar({Key? key}) : super(key: key);

  @override
  State<SideBar> createState() => _SideBarState();
}

class _SideBarState extends State<SideBar> {
  @override
  Widget build(BuildContext context) {
    final double screenHeight = context.screenHeight;
    return Container(
      constraints: const BoxConstraints(
        minWidth: 250,
        maxWidth: 263,
      ),
      color: AppColors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(34, 47, 52, 0),
            child: SvgPicture.asset(Assets.logoLong),
          ),
          screenHeight.percent(7).boxHeight,
          ValueListenableBuilder<SideBarItem>(
            valueListenable: itemChangeNotifier,
            builder: (context, currentItem, _) => Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ...SideBarItem.values.map(
                  (item) => Padding(
                    padding: const EdgeInsets.only(bottom: 19.0),
                    child: SideBarWidget(
                      item: item,
                      isSelected: item == currentItem,
                      onPressed: onSidebarItemSelected,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const Spacer(),
          Opacity(
            opacity: 0.4,
            child: LayoutBuilder(
              builder: (context, constraints) {
                return AppButton.filled(
                  height: 57,
                  color: AppColors.transparent,
                  radius: 0,
                  onPressed: onLogoutPressed,
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      constraints.maxWidth.percent(20).boxWidth,
                      const Icon(Iconsax.logout5),
                      18.boxWidth,
                      AppText.cocoaSharp(
                        'Logout',
                        fontSize: 18,
                      ),
                    ],
                  ),
                );
              }
            ),
          ),
          30.boxHeight,
        ],
      ),
    );
  }

  void onSidebarItemSelected(SideBarItem newItem) {
    itemChangeNotifier.value = newItem;
  }

  void onLogoutPressed() {}

  final ValueNotifier<SideBarItem> itemChangeNotifier =
      ValueNotifier<SideBarItem>(SideBarItem.dashboard);
}
