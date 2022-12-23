import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sleepfit/common/color.manager.dart';
import 'package:sleepfit/common/string.manager.dart';
import 'package:sleepfit/common/value.manager.dart';
import 'package:sleepfit/widgets/default.button.dart';
import 'package:sleepfit/widgets/large.text.widget.dart';
import 'package:sleepfit/widgets/textformfield.widget.dart';

import 'login.screen.dart';

class ResetPasswordScreen extends StatelessWidget {
  ResetPasswordScreen({super.key});

  TextEditingController emailContoller = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: AppSize.s50),
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.09,
            ),
            AppLargeText(
              text: "Reset password",
              color: ColorManager.titleText,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.04,
            ),
            Form(
              key: _formKey,
              child: Column(
                children: [
                  TextFormFieldWidget(
                    textEditingController: emailContoller,
                    labelText: "Email",
                    iconData: FontAwesomeIcons.envelope,
                    textInputType: TextInputType.emailAddress,
                    isEmail: true,
                    errorMessage: AppStrings.emailRequired,
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.06,
                  ),
                  DefaultButton(
                    text: AppStrings.sendResetMail,
                    press: () {
                      if (_formKey.currentState!.validate()) {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => LoginScreen(),
                          ),
                        );
                      }
                    },
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
