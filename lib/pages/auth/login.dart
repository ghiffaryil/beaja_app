import 'package:beaja/common/components/divider.dart';
import 'package:beaja/common/components/elevated_button.dart';
import 'package:beaja/common/components/input_field_password.dart';
import 'package:beaja/common/components/input_field_text.dart';
import 'package:beaja/common/constants/styles/colors.dart';
import 'package:beaja/common/constants/styles/padding.dart';
import 'package:beaja/common/constants/styles/styles.dart';
import 'package:beaja/pages/auth/forgot_password.dart';
import 'package:beaja/pages/homepage/homepage.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController inputPhoneNumber = TextEditingController();
  FocusNode inputPhoneNumberFocus = FocusNode();

  TextEditingController inputEmail = TextEditingController();
  FocusNode inputEmailFocus = FocusNode();

  TextEditingController inputPassword = TextEditingController();
  FocusNode inputPasswordFocus = FocusNode();

  bool _hideinputPassword = true;
  bool isLogged = false;
  bool isExpiredToken = false;

  void _showHideinputPasswordTogle() {
    setState(() {
      _hideinputPassword = !_hideinputPassword;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        padding: CustomPadding.p2,
        child: SingleChildScrollView(
          physics: const AlwaysScrollableScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.all(25.0),
            child: Column(
              children: [
                TextInputField(
                  focusNode: inputEmailFocus,
                  keyboardType: TextInputType.emailAddress,
                  controller: inputEmail,
                  hintText: 'Masukkan Email Kamu',
                ),
                CustomDividers.smallDivider(),
                PasswordTextInput(
                  focusNode: inputPasswordFocus,
                  controller: inputPassword,
                  hintText: 'Masukkan Password',
                  hidePassword: _hideinputPassword,
                  onPasswordVisibilityToggle: _showHideinputPasswordTogle,
                ),
                CustomDividers.verySmallDivider(),
                forgotPassode(),
                CustomDividers.regularDivider(),
                ButtonFilled.primary(
                  text: 'Login',
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return const HomePage();
                    }));
                  },
                  textColor: AppColors.white,
                  fontSize: 20,
                )
              ],
            ),
          ),
        ));
  }

  Widget forgotPassode() {
    return Container(
      padding: const EdgeInsets.all(10),
      alignment: Alignment.centerRight,
      child: GestureDetector(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return const ForgotPasswordPage();
          }));
        },
        child: Text(
          'Lupa Password?',
          style: TextStyles.regular(
              color: AppColors.bg, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
