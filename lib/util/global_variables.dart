import 'package:flutter/material.dart';

class GlobalVariables {
  // App Colors
  Color primaryColor = const Color(0xFF003d81);
  Color secondaryColor = const Color(0xFF215a82);

  // App Menu Icon
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
}
