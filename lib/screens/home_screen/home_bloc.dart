import 'package:bbva_bank/util/global_variables.dart';
import 'package:flutter/material.dart';

final GlobalVariables _gBloc = GlobalVariables();

class HomeScreenBloc {
  int navBarIndex = 0;

  BottomNavigationBarItem assetImageNavBar(
      {required String icon, String? label}) {
    return BottomNavigationBarItem(
      icon: Image.asset(
        icon,
        width: 25,
        height: 25,
        color: _gBloc.primaryColor,
      ),
      label: '',
    );
  }
}
