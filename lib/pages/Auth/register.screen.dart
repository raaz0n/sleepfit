import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../common/color.manager.dart';
import '../../common/string.manager.dart';
import '../../common/value.manager.dart';
import '../../widgets/default.button.dart';
import '../../widgets/large.text.widget.dart';
import '../../widgets/textformfield.widget.dart';

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
      body: SingleChildScrollView(
        physics: const NeverScrollableScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: AppSize.s50),
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.09,
              ),
              AppLargeText(
                text: AppStrings.createAccount,
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
                      labelText: "Username",
                      iconData: FontAwesomeIcons.user,
                      textInputType: TextInputType.name,
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
                      errorMessage: AppStrings.emailRequired,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    TextFormFieldWidget(
                      isPassWord: true,
                      textEditingController: passwordController,
                      labelText: "Password",
                      iconData: FontAwesomeIcons.lock,
                      textInputType: TextInputType.visiblePassword,
                      errorMessage: "Password required",
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    TextFormFieldWidget(
                      isPassWord: true,
                      textEditingController: confirmPasswordController,
                      labelText: "Retype password",
                      iconData: FontAwesomeIcons.lock,
                      textInputType: TextInputType.visiblePassword,
                      errorMessage: "Password Required",
                    ),
                    const SizedBox(
                      height: AppSize.s65,
                    ),
                    DefaultButton(
                      text: "Register",
                      press: () {
                        if (_formKey.currentState!.validate()) {
                          Navigator.pop(context);
                        }
                      },
                    )
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
                      text: 'Login',
                      style: TextStyle(
                          color: ColorManager.titleText, fontSize: 18),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          Navigator.pop(context);
                        },
                    )
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
