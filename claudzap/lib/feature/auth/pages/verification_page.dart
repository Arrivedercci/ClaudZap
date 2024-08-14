import 'package:claudzap/common/extension/custom_theme_extension.dart';
import 'package:claudzap/common/widgets/custom_icon_button.dart';
import 'package:claudzap/feature/auth/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';

class VerificationPage extends StatefulWidget {
  const VerificationPage({super.key});

  @override
  State<VerificationPage> createState() => _VerificationPageState();
}

class _VerificationPageState extends State<VerificationPage> {
  late TextEditingController verificationCodeController;

  @override
  void initState() {
    verificationCodeController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    verificationCodeController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        elevation: 0,
        title: Text(
          "Verify your phone number",
          style: TextStyle(
            color: context.theme.authAppbarTextColor,
          ),
        ),
        centerTitle: true,
        actions: [
          CustomIconButton(
            onTap: () {},
            icon: Icons.more_vert,
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  style: TextStyle(
                    color: context.theme.greyColor,
                    height: 1.5,
                  ),
                  children: [
                    const TextSpan(
                      text:
                          "You've tried to register +55999999999. before requesting an SMS or call with your verification code ",
                    ),
                    TextSpan(
                      text: "Wrong number ?",
                      style: TextStyle(
                        color: context.theme.blueColor,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 80),
              child: CustomTextField(
                controller: verificationCodeController,
                hintText: "- - -  - - -",
                fontSize: 30,
                autoFocus: true,
                keyboardType: TextInputType.number,
                onChanged: (value) {},
              ),
            ),
            const SizedBox(height: 20),
            Text(
              "Enter your 6-digit code",
              style: TextStyle(
                color: context.theme.greyColor,
              ),
            ),
            const SizedBox(height: 50),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 60.0),
              child: Row(
                children: [
                  Icon(
                    Icons.message,
                    color: context.theme.greyColor,
                  ),
                  const SizedBox(width: 10),
                  Text(
                    "Resend SMS",
                    style: TextStyle(
                      color: context.theme.greyColor,
                    ),
                  ),
                  VerticalDivider(
                    color: context.theme.greyColor!.withOpacity(0.2),
                    thickness: 1,
                    width: 40,
                  ),
                  Icon(
                    Icons.phone,
                    color: context.theme.greyColor,
                  ),
                  const SizedBox(width: 10),
                  Text(
                    "Call me",
                    style: TextStyle(
                      color: context.theme.greyColor,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
