import 'package:beaja/common/components/divider.dart';
import 'package:beaja/common/components/elevated_button.dart';
import 'package:beaja/common/components/input_field_password.dart';
import 'package:beaja/common/components/input_field_text.dart';
import 'package:beaja/common/constants/styles/colors.dart';
import 'package:beaja/common/constants/styles/padding.dart';
import 'package:beaja/pages/homepage/welcome.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
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
                  hintText: 'Full Name',
                  hintStyle: const TextStyle(fontWeight: FontWeight.normal),
                ),
                CustomDividers.smallDivider(),
                TextInputField(
                  focusNode: inputEmailFocus,
                  keyboardType: TextInputType.emailAddress,
                  controller: inputEmail,
                  hintText: 'Number Phone',
                  hintStyle: const TextStyle(fontWeight: FontWeight.normal),
                ),
                CustomDividers.smallDivider(),
                PasswordTextInput(
                  focusNode: inputPasswordFocus,
                  controller: inputPassword,
                  hintText: 'Password',
                  hidePassword: _hideinputPassword,
                  onPasswordVisibilityToggle: _showHideinputPasswordTogle,
                ),
                CustomDividers.smallDivider(),
                PasswordTextInput(
                  focusNode: inputPasswordFocus,
                  controller: inputPassword,
                  hintText: 'Konfirmasi Password',
                  hidePassword: _hideinputPassword,
                  onPasswordVisibilityToggle: _showHideinputPasswordTogle,
                ),
                CustomDividers.regularDivider(),
                ButtonFilled.primary(
                  text: 'Daftar',
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return const WelcomePage();
                    }));
                  },
                  textColor: AppColors.white,
                  fontSize: 20,
                ),
              ],
            ),
          ),
        ));
  }
}
