import 'package:flutter/material.dart';

class GlobalVariables {
  /// ######################################################################
  /// -> App Colors
  ///

  Color primaryColor = const Color(0xFF003d81);
  Color secondaryColor = const Color(0xFF215a82);
  Color lightSecondaryColor = const Color(0xFF00aacf);

  /// ######################################################################
  /// -> App Menu Icon
  ///

  InkWell menuIcon({
    required void Function()? onTap,
    required Color color,
  }) {
    return InkWell(
      onTap: onTap,
      child: SizedBox(
        width: 23,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 12),
            menuIconLines(color: color),
            const SizedBox(height: 4),
            menuIconLines(color: color, width: 23),
            const SizedBox(height: 4),
            Align(
              alignment: Alignment.centerRight,
              child: menuIconLines(color: color),
            ),
          ],
        ),
      ),
    );
  }

  Container menuIconLines({
    double width = 10,
    required Color color,
  }) {
    return Container(
      width: width,
      height: 3,
      color: color,
    );
  }

  /// ######################################################################
  /// -> Bottom Navigation Bar
  ///

  int navBarIndex = 0;

  BottomNavigationBarItem assetImageNavBar(
      {required String icon, String? label}) {
    return BottomNavigationBarItem(
      icon: Image.asset(
        icon,
        width: 25,
        height: 25,
        color: primaryColor,
      ),
      label: '',
    );
  }

  Widget bottomNavigationBar({
    required void Function(int)? onTap,
  }) {
    {
      return ClipRRect(
        borderRadius: const BorderRadius.only(
          topRight: Radius.circular(20),
          topLeft: Radius.circular(20),
        ),
        child: BottomNavigationBar(
          currentIndex: navBarIndex,
          onTap: onTap,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          items: [
            assetImageNavBar(icon: 'assets/icons/house.png'),
            assetImageNavBar(icon: 'assets/icons/heart-attack.png'),
            assetImageNavBar(icon: 'assets/icons/add.png'),
            assetImageNavBar(icon: 'assets/icons/mail.png'),
          ],
        ),
      );
    }
  }

  /// ######################################################################
  /// -> 
  ///
}
