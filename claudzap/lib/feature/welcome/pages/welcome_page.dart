import 'package:claudzap/common/extension/custom_theme_extension.dart';
import 'package:claudzap/common/utils/widgets/custom_elevated_button.dart';
import 'package:claudzap/feature/welcome/widgets/language_button.dart';
import 'package:claudzap/feature/welcome/widgets/privacy_and_policies.dart';
import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Expanded(
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 50, vertical: 10),
                  child: Image.asset(
                    'assets/images/circle.png',
                    color: context.theme.circleImageColor,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 40),
            Expanded(
              child: Column(
                children: [
                  const Text(
                    'Welcome to ClaudZap',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const PrivacyAndPolicies(),
                  CustomElevatedButton(
                    onPressed: () {},
                    text: 'AGREE AND CONTINUE',
                  ),
                  const SizedBox(height: 50),
                  const LanguageButton()
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
