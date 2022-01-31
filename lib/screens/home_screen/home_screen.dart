import 'package:bbva_bank/screens/home_screen/home_bloc.dart';
import 'package:bbva_bank/util/global_variables.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final GlobalVariables _gBloc = GlobalVariables();
  final HomeScreenBloc _bloc = HomeScreenBloc();

  bool isSwitched = true;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                height: size.height * 0.40,
                color: Colors.blue[50],
              ),
              Container(
                height: size.height * 0.25,
                color: _gBloc.primaryColor,
                padding: const EdgeInsets.all(18),
                child: Column(
                  children: [
                    const SizedBox(height: 20),
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
                top: size.height * 0.13,
                left: 20,
                right: 20,
                child: Container(
                  height: 180,
                  width: size.width,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 24,
                    vertical: 12,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: ListView(
                    shrinkWrap: true,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "your accounts".toUpperCase(),
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: _gBloc.primaryColor,
                            ),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.more_horiz,
                              size: 28,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 12),
                      _bloc.accounts(
                        accountId: "001ah7297",
                        branchId: "*37265",
                        accountBalance: "20,000",
                      ),
                      const SizedBox(height: 4),
                      const Divider(),
                      const SizedBox(height: 4),
                      _bloc.accounts(
                        accountId: "001ah7246",
                        branchId: "*36264",
                        accountBalance: "158,000",
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Expanded(
            child: Container(
              color: Colors.blue[50],
              child: Column(
                children: [
                  const SizedBox(height: 10),
                  Container(
                    width: size.width,
                    height: 120,
                    color: Colors.white,
                    padding: const EdgeInsets.symmetric(vertical: 15),
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: _bloc.items.length,
                      itemBuilder: (context, index) {
                        return _bloc.circularSlider(
                          onTap: _bloc.items[index]['onTap'],
                          color: _bloc.items[index]['color'],
                          icon: _bloc.items[index]['icon'],
                          title: _bloc.items[index]['title'],
                        );
                      },
                    ),
                  ),
                  const SizedBox(height: 12),
                  Expanded(
                    child: Container(
                      width: size.width,
                      color: Colors.white70,
                      padding: const EdgeInsets.all(16),
                      child: SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Your Cards",
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: _gBloc.primaryColor),
                            ),
                            const SizedBox(height: 16),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      width: size.width * 0.55,
                                      height: 150,
                                      decoration: BoxDecoration(
                                        color: Colors.green,
                                        borderRadius: BorderRadius.circular(12),
                                      ),
                                    ),
                                    const SizedBox(height: 12),
                                    Row(
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
                                  height: 200,
                                  decoration: BoxDecoration(
                                    color: Colors.green,
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 12),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: _gBloc.bottomNavigationBar(
        onTap: (value) {
          setState(() {
            _gBloc.navBarIndex = value;
          });
        },
      ),
    );
  }
}
