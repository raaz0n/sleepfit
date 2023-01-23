import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../common/color.manager.dart';
import '../../common/routes.manager.dart';
import '../../common/string.manager.dart';
import '../../common/value.manager.dart';
import '../../widgets/default.button.dart';
import '../../widgets/large.text.widget.dart';
import '../../widgets/rounded_contrainer.dart';
import '../../widgets/small.text.widget.dart';
import '../../widgets/textformfield.widget.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  TextEditingController emailContoller = TextEditingController();
  TextEditingController passwordController = TextEditingController();

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
                text: "Login",
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
                      height: MediaQuery.of(context).size.height * 0.02,
                    ),
                    TextFormFieldWidget(
                      isPassWord: true,
                      textEditingController: passwordController,
                      labelText: "Password",
                      iconData: FontAwesomeIcons.lock,
                      textInputType: TextInputType.visiblePassword,
                      isEmail: false,
                      errorMessage: "Password Required",
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.012,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, Routes.registerRoute);
                      },
                      child: Text(
                        "Forget Your Password",
                        style: TextStyle(
                          color: ColorManager.titleText,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.04,
                    ),
                    DefaultButton(
                        text: "Login",
                        press: () {
                          // if (_formKey.currentState!.validate()) {
                          Navigator.pushNamed(context, Routes.mainRoute);
                        }
                        // },
                        )
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.22,
              ),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 0.3,
                      color: ColorManager.subTitle,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: AppSmallText(text: "Or"),
                  ),
                  Expanded(
                    child: Container(
                      height: 0.3,
                      color: ColorManager.subTitle,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              RoundedContrainer(
                text: AppStrings.googleSigning,
                iconData: FontAwesomeIcons.google,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.014,
              ),
              RoundedContrainer(
                text: AppStrings.appleSigning,
                iconData: FontAwesomeIcons.apple,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.012,
              ),
              RichText(
                text: TextSpan(
                    text: 'Don\'t have an account yet?',
                    style: const TextStyle(color: Colors.black, fontSize: 18),
                    children: [
                      TextSpan(
                          text: ' Register',
                          style: TextStyle(
                              color: ColorManager.titleText, fontSize: 18),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              Navigator.pushNamed(
                                  context, Routes.registerRoute);
                            })
                    ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
