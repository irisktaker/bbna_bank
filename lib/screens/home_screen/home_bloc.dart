import 'package:bbva_bank/util/global_variables.dart';
import 'package:flutter/material.dart';

final GlobalVariables _gBloc = GlobalVariables();

class HomeScreenBloc {
  /// ######################################################################
  /// -> Your account Box
  ///

  Row accounts({
    required String accountId,
    required String branchId,
    required String accountBalance,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              accountId,
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: _gBloc.lightSecondaryColor),
            ),
            const SizedBox(height: 3),
            Text(
              branchId,
              style: const TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.bold,
                color: Colors.grey,
              ),
            ),
          ],
        ),
        Expanded(flex: 6, child: Container()),
        Text(
          '\$' + accountBalance,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: _gBloc.primaryColor,
          ),
        ),
        Expanded(child: Container()),
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.chevron_right,
            size: 22,
            color: Colors.grey,
          ),
        ),
      ],
    );
  }

  /// ######################################################################
  /// -> ListView Slider
  ///

  Column circularSlider({
    required void Function()? onTap,
    required Color color,
    required IconData icon,
    required String title,
  }) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 22),
          child: GestureDetector(
            onTap: onTap,
            child: CircleAvatar(
              backgroundColor: color,
              radius: 33,
              child: Icon(
                icon,
                color: Colors.white,
                size: 30,
              ),
            ),
          ),
        ),
        const SizedBox(height: 8),
        Text(
          title,
          style: TextStyle(
            color: _gBloc.secondaryColor,
            fontSize: 12,
          ),
        ),
      ],
    );
  }

  List<Map<dynamic, dynamic>> items = [
    {
      'onTap': () {},
      'color': Colors.orange,
      'icon': Icons.add,
      'title': "Opportunities",
    },
    {
      'onTap': () {},
      'color': const Color(0xFF00aacf),
      'icon': Icons.swap_horiz,
      'title': "Transfer",
    },
    {
      'onTap': () {},
      'color': Colors.green,
      'icon': Icons.attach_money,
      'title': "Withdrawal",
    },
    {
      'onTap': () {},
      'color': Colors.purple,
      'icon': Icons.settings,
      'title': "Settings",
    },
    {
      'onTap': () {},
      'color': Colors.indigo,
      'icon': Icons.manage_accounts,
      'title': "Manage Accounts",
    },
  ];

  /// ######################################################################
  /// ->
  ///
}
