import 'package:beaja/common/components/divider.dart';
import 'package:beaja/common/components/elevated_button.dart';
import 'package:beaja/common/components/input_field_text.dart';
import 'package:beaja/common/constants/styles/colors.dart';
import 'package:beaja/common/constants/styles/images.dart';
import 'package:beaja/common/constants/styles/styles.dart';
import 'package:flutter/material.dart';

class ForgotPasswordPage extends StatefulWidget {
  const ForgotPasswordPage({super.key});

  @override
  State<ForgotPasswordPage> createState() => _ForgotPasswordPageState();
}

class _ForgotPasswordPageState extends State<ForgotPasswordPage> {
  TextEditingController inputPhoneNumber = TextEditingController();
  FocusNode inputPhoneNumberFocus = FocusNode();

  TextEditingController inputEmail = TextEditingController();
  FocusNode inputEmailFocus = FocusNode();

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
              height: MediaQuery.of(context).size.height * 0.03,
            ),
            Image.asset(
              Images.logoOriginal,
              width: MediaQuery.of(context).size.width * 0.7,
            ),
            Expanded(
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                color: AppColors.bgLight,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      CustomDividers.smallDivider(),
                      Container(
                        alignment: Alignment.centerLeft,
                        child: IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: const Icon(Icons.arrow_back_ios),
                          color: AppColors.bg,
                          iconSize: 30,
                        ),
                      ),
                      CustomDividers.verySmallDivider(),
                      Container(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Forgot \nPassword?',
                          textAlign: TextAlign.left,
                          style: TextStyles.h2(color: AppColors.bg),
                        ),
                      ),
                      CustomDividers.smallDivider(),
                      TextInputField(
                        focusNode: inputEmailFocus,
                        keyboardType: TextInputType.emailAddress,
                        controller: inputEmail,
                        prefixIcon: const Icon(Icons.email),
                        hintText: 'Masukkan Email Kamu',
                      ),
                      CustomDividers.smallDivider(),
                      Container(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          '* We will send you a message to set or reset your new password',
                          textAlign: TextAlign.left,
                          style: TextStyles.small(color: AppColors.bg),
                        ),
                      ),
                      CustomDividers.largeDivider(),
                      ButtonFilled.primary(
                        text: 'Kirim OTP',
                        onPressed: () {},
                        textColor: AppColors.white,
                        fontSize: 20,
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
