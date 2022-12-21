import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sleepfit/common/color.manager.dart';
import 'package:sleepfit/common/value.manager.dart';
import 'package:sleepfit/widgets/default.button.dart';
import 'package:sleepfit/widgets/large.text.widget.dart';
import 'package:sleepfit/widgets/textformfield.widget.dart';

class ForgetScreen extends StatelessWidget {
  ForgetScreen({super.key});

  TextEditingController emailContoller = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: AppSize.s50),
          child: Column(
            children: [
              const SizedBox(
                height: AppSize.s60,
              ),
              AppLargeText(
                text: "Reset password",
                color: ColorManager.titleText,
              ),
              const SizedBox(
                height: AppSize.s40,
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
                      errorMessage: "Email Required",
                    ),
                    const SizedBox(
                      height: AppSize.s65,
                    ),
                    const DefaultButton(text: "Send Reset Mail")
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
