import 'package:beaja/common/constants/styles/colors.dart';
import 'package:beaja/common/constants/styles/images.dart';
import 'package:beaja/common/constants/styles/styles.dart';
import 'package:beaja/pages/auth/login.dart';
import 'package:beaja/pages/auth/register.dart';
import 'package:flutter/material.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({super.key});

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        color: AppColors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
            ),
            Image.asset(
              Images.logoOriginal,
              width: MediaQuery.of(context).size.width * 0.7,
            ),
            Expanded(
              child: DefaultTabController(
                length: 2,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 50),
                      child: TabBar(
                        labelColor: AppColors.white,
                        unselectedLabelColor: AppColors.white,
                        indicatorPadding: const EdgeInsets.all(0.0),
                        indicatorWeight: 10.0,
                        labelPadding:
                            const EdgeInsets.only(left: 0.0, right: 0.0),
                        indicator: const ShapeDecoration(
                          shape: UnderlineInputBorder(
                              borderSide: BorderSide(
                                  color: AppColors.bg,
                                  width: 10,
                                  style: BorderStyle.solid)),
                        ),
                        tabs: <Widget>[
                          Container(
                            height: 50,
                            alignment: Alignment.center,
                            color: Colors.white,
                            child: Text(
                              "Login",
                              style: TextStyles.h3(color: AppColors.bg),
                            ),
                          ),
                          Container(
                            height: 50,
                            alignment: Alignment.center,
                            color: Colors.white,
                            child: Text(
                              "Sign-Up",
                              style: TextStyles.h3(
                                color: AppColors.bg,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Container(
                        color: AppColors.bgLight,
                        child: const TabBarView(
                          children: <Widget>[
                            LoginPage(),
                            RegisterPage(),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
