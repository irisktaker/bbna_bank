import 'package:bbva_bank/screens/home_screen/home_screen.dart';
import 'package:bbva_bank/util/global_variables.dart';

import '/screens/login_screen/login_bloc.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final LoginScreenBloc _bloc = LoginScreenBloc();
  final GlobalVariables _gBloc = GlobalVariables();

  bool _keyboardVisible = false;

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    _keyboardVisible = MediaQuery.of(context).viewInsets.bottom != 0;

    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.white,
        body: Form(
          key: _formKey,
          child: Column(
            children: [
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        _gBloc.menuIcon(
                            onTap: () {}, color: _gBloc.primaryColor),
                        Expanded(child: Container()),
                        Image.asset('assets/images/bbva_logo_light.png'),
                        Expanded(child: Container()),
                      ],
                    ),
                    SizedBox(height: size.height * 0.025),
                    Row(
                      children: [
                        const CircleAvatar(
                          backgroundColor: Colors.transparent,
                          backgroundImage: NetworkImage(
                            "https://images.unsplash.com/photo-1503249023995-51b0f3778ccf?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1860&q=80",
                          ),
                          radius: 40,
                        ),
                        const SizedBox(width: 14),
                        CircleAvatar(
                          backgroundColor: _gBloc.primaryColor,
                          child: const Icon(
                            Icons.swap_horiz,
                            size: 19,
                          ),
                          radius: 15,
                        ),
                      ],
                    ),
                    SizedBox(height: size.height * 0.03),
                    Text(
                      "Hola, Nancy Gasper",
                      style: TextStyle(
                        color: _gBloc.primaryColor,
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Text(
                      "How was your day?",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 15,
                      ),
                    ),
                    SizedBox(height: size.height * 0.05),
                    TextField(
                      controller: _bloc.passwordController,
                      obscureText: _bloc.isHidden,
                      style: TextStyle(color: _gBloc.primaryColor),
                      onSubmitted: (value) => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (ctx) => const HomeScreen(),
                        ),
                      ),
                      decoration: InputDecoration(
                        border: _bloc.underlineInputBorder,
                        enabledBorder: _bloc.underlineInputBorder,
                        focusedBorder: _bloc.underlineInputBorder,
                        errorBorder: _bloc.errorUnderlineInputBorder,
                        focusedErrorBorder: _bloc.errorUnderlineInputBorder,
                        suffixIcon: _bloc.showHidePass(setState),
                        labelText: 'Password',
                        labelStyle: TextStyle(
                          color: _gBloc.primaryColor,
                          fontSize: 14,
                        ),
                      ),
                    ),
                    SizedBox(height: size.height * 0.028),
                    Align(
                        child: Text(
                      "I forgot my password",
                      style: TextStyle(color: _gBloc.secondaryColor),
                    )),
                    SizedBox(height: size.height * 0.08),
                    DefaultTextStyle(
                      style: TextStyle(
                        color: _gBloc.secondaryColor,
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                      child: Column(
                        children: [
                          Row(
                            children: const [
                              CircleAvatar(
                                backgroundColor: Colors.transparent,
                                backgroundImage:
                                    AssetImage('assets/images/token.png'),
                                radius: 20,
                              ),
                              SizedBox(width: 16),
                              Text("Mobile Token"),
                            ],
                          ),
                          SizedBox(height: size.height * 0.05),
                          Row(
                            children: [
                              CircleAvatar(
                                backgroundColor: Colors.transparent,
                                child: Icon(
                                  Icons.qr_code_scanner,
                                  color: _gBloc.secondaryColor,
                                  size: 30,
                                ),
                                radius: 20,
                              ),
                              const SizedBox(width: 16),
                              Column(
                                children: const [
                                  Text("Operation"),
                                  SizedBox(height: 3),
                                  Text("QR + CoDi"),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(height: size.height * 0.05),
                          Row(
                            children: [
                              CircleAvatar(
                                backgroundColor: Colors.transparent,
                                child: Icon(
                                  Icons.phone_in_talk_outlined,
                                  color: _gBloc.secondaryColor,
                                  size: 30,
                                ),
                                radius: 20,
                              ),
                              const SizedBox(width: 16),
                              const Text("BBVA Line"),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(child: Container()),
              const Align(
                alignment: Alignment.bottomCenter,
                child: Divider(
                  height: 10,
                  thickness: 10,
                  color: Color(0xFF1A237E),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
