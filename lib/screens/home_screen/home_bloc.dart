import 'package:bbva_bank/util/global_variables.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

final GlobalVariables _gBloc = GlobalVariables();

class HomeScreenBloc {
  bool isSwitched = true;

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
  /// -> Your Card Box
  ///

  Column yourCardBox(Size size, Function setState) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Text(
            "Your Cards",
            style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: _gBloc.primaryColor),
          ),
        ),
        const SizedBox(height: 16),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: size.width * 0.55,
                  height: 130,
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: _gBloc.primaryColor,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        'assets/images/bbva_logo.png',
                        scale: 3,
                      ),
                      const SizedBox(height: 16),
                      Container(
                        width: 30,
                        height: 20,
                        decoration: BoxDecoration(
                          color: Colors.yellow,
                          borderRadius: BorderRadius.circular(4),
                        ),
                      ),
                      const SizedBox(height: 22),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            "*62396",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Image.network(
                            "https://www.freepnglogos.com/uploads/visa-inc-png-18.png",
                            width: 40,
                            height: 13,
                            color: Colors.white,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 12),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.payment,
                      size: 20,
                      color: _gBloc.secondaryColor,
                    ),
                    const SizedBox(width: 4),
                    Text(
                      "Digital Card",
                      style: TextStyle(
                        fontSize: 12,
                        color: _gBloc.secondaryColor,
                      ),
                    ),
                    const SizedBox(width: 16),
                    Text(
                      "Deactivate",
                      style: TextStyle(
                        fontSize: 12,
                        color: _gBloc.secondaryColor,
                      ),
                    ),
                    SizedBox(
                      width: 30,
                      height: 10,
                      child: Transform.scale(
                        scale: 0.4,
                        child: CupertinoSwitch(
                          value: isSwitched,
                          onChanged: (value) {
                            setState(() {
                              isSwitched = value;
                            });
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Container(
              width: size.width * 0.35,
              height: 180,
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
              ),
              // transform: Matrix4.,
              child: RotatedBox(
                quarterTurns: 3,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                      'assets/images/bbva_logo_light.png',
                      scale: 3,
                    ),
                    const SizedBox(height: 16),
                    Container(
                      width: 30,
                      height: 20,
                      decoration: BoxDecoration(
                        color: Colors.yellow,
                        borderRadius: BorderRadius.circular(4),
                      ),
                    ),
                    const SizedBox(height: 22),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "*62396",
                          style: TextStyle(
                            color: _gBloc.primaryColor,
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Image.network(
                          "https://www.freepnglogos.com/uploads/visa-inc-png-18.png",
                          width: 40,
                          height: 13,
                          color: _gBloc.primaryColor,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
