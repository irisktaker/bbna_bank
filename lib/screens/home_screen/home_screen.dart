import 'package:bbva_bank/screens/home_screen/home_bloc.dart';
import 'package:bbva_bank/util/global_variables.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final GlobalVariables _gBloc = GlobalVariables();
  final HomeScreenBloc _bloc = HomeScreenBloc();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: size.height * 0.40,
                  color: Colors.blue[50],
                ),
                Container(
                  height: size.height * 0.30,
                  color: _gBloc.primaryColor,
                  padding: const EdgeInsets.all(18),
                  child: Column(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          _gBloc.menuIcon(
                            onTap: () {},
                            color: Colors.white,
                          ),
                          Expanded(child: Container()),
                          const Text(
                            "Hola, Nancy Gasper",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Expanded(child: Container()),
                          const Padding(
                            padding: EdgeInsets.only(right: 8.0),
                            child: CircleAvatar(
                              backgroundColor: Colors.white,
                              radius: 20,
                              child: CircleAvatar(
                                radius: 18,
                                backgroundImage: NetworkImage(
                                  "https://images.unsplash.com/photo-1503249023995-51b0f3778ccf?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1860&q=80",
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Positioned(
                  top: size.height * 0.20,
                  left: 20,
                  right: 20,
                  child: Container(
                    height: 200,
                    width: size.width,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            Expanded(
              child: Container(
                color: Colors.blue[50],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _bloc.navBarIndex,
        onTap: (value) {
          setState(() {
            _bloc.navBarIndex = value;
          });
        },
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: [
          _bloc.assetImageNavBar(icon: 'assets/icons/house.png'),
          _bloc.assetImageNavBar(icon: 'assets/icons/heart-attack.png'),
          _bloc.assetImageNavBar(icon: 'assets/icons/add.png'),
          _bloc.assetImageNavBar(icon: 'assets/icons/mail.png'),
        ],
      ),
    );
  }
}
