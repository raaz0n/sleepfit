import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sleepfit/common/color.manager.dart';
import 'package:sleepfit/common/string.manager.dart';
import 'package:sleepfit/common/value.manager.dart';
import 'package:sleepfit/main.page.dart';
import 'package:sleepfit/pages/Auth/forget.screen.dart';
import 'package:sleepfit/pages/Auth/register.screen.dart';
import 'package:sleepfit/widgets/default.button.dart';
import 'package:sleepfit/widgets/large.text.widget.dart';
import 'package:sleepfit/widgets/rounded_contrainer.dart';
import 'package:sleepfit/widgets/small.text.widget.dart';
import 'package:sleepfit/widgets/textformfield.widget.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  TextEditingController emailContoller = TextEditingController();
  TextEditingController passwordController = TextEditingController();

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
                text: "Login",
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
                      height: AppSize.s12,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ForgetScreen(),
                          ),
                        );
                      },
                      child: Text(
                        "Forget Your Password",
                        style: TextStyle(
                          color: ColorManager.titleText,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: AppSize.s40,
                    ),
                    DefaultButton(
                      text: "Login",
                      press: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const MainPageScreen(),
                          ),
                        );
                      },
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: AppSize.s200,
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
              const SizedBox(
                height: AppSize.s20,
              ),
              RoundedContrainer(
                text: AppStrings.googleSigning,
                iconData: FontAwesomeIcons.google,
              ),
              const SizedBox(
                height: AppSize.s14,
              ),
              RoundedContrainer(
                text: AppStrings.appleSigning,
                iconData: FontAwesomeIcons.apple,
              ),
              const SizedBox(
                height: AppSize.s12,
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
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => RegisterScreen(),
                                ),
                              );
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
