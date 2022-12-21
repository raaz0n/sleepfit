import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sleepfit/common/color.manager.dart';
import 'package:sleepfit/common/value.manager.dart';
import 'package:sleepfit/widgets/default.button.dart';
import 'package:sleepfit/widgets/large.text.widget.dart';
import 'package:sleepfit/widgets/textformfield.widget.dart';

class RegisterScreen extends StatelessWidget {
  RegisterScreen({super.key});

  TextEditingController emailContoller = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController usernameController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();

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
                text: "Register",
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
                      textEditingController: usernameController,
                      labelText: "UserName",
                      iconData: FontAwesomeIcons.user,
                      textInputType: TextInputType.name,
                      isEmail: true,
                      errorMessage: "Username Required",
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    TextFormFieldWidget(
                      textEditingController: emailContoller,
                      labelText: "Email",
                      iconData: FontAwesomeIcons.envelope,
                      textInputType: TextInputType.emailAddress,
                      isEmail: true,
                      errorMessage: "Email Required",
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    TextFormFieldWidget(
                      textEditingController: passwordController,
                      labelText: "Password",
                      iconData: FontAwesomeIcons.lock,
                      textInputType: TextInputType.visiblePassword,
                      isEmail: true,
                      errorMessage: "errorMessage",
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    TextFormFieldWidget(
                      textEditingController: confirmPasswordController,
                      labelText: "Retype password",
                      iconData: FontAwesomeIcons.lock,
                      textInputType: TextInputType.visiblePassword,
                      isEmail: true,
                      errorMessage: "errorMessage",
                    ),
                    const SizedBox(
                      height: AppSize.s65,
                    ),
                    const DefaultButton(text: "Register")
                  ],
                ),
              ),
              const SizedBox(
                height: AppSize.s24,
              ),
              RichText(
                text: TextSpan(
                    text: 'Already have an account?',
                    style: const TextStyle(color: Colors.black, fontSize: 18),
                    children: [
                      TextSpan(
                        text: ' Login',
                        style: TextStyle(
                            color: ColorManager.titleText, fontSize: 18),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            // navigate to desired screen
                          },
                      )
                    ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}