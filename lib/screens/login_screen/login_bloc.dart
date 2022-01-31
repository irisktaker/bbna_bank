import 'package:bbva_bank/util/global_variables.dart';
import 'package:flutter/material.dart';

final GlobalVariables _gBloc = GlobalVariables();

class LoginScreenBloc {
  final TextEditingController passwordController = TextEditingController();

  bool isHidden = true;

  IconButton showHidePass(Function setState) {
    return IconButton(
      onPressed: () {
        setState(() {
          isHidden = !isHidden;
        });
      },
      icon: isHidden
          ? Icon(Icons.visibility_off, color: _gBloc.primaryColor)
          : Icon(Icons.visibility, color: _gBloc.primaryColor),
    );
  }

  UnderlineInputBorder underlineInputBorder = const UnderlineInputBorder(
    borderSide: BorderSide(
      color: Color(0xFF003d81),
    ),
  );
  UnderlineInputBorder errorUnderlineInputBorder = const UnderlineInputBorder(
    borderSide: BorderSide(
      color: Color(0xFF003d81),
    ),
  );
}
