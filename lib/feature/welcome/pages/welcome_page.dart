import 'package:flutter/material.dart';
import '../../../common/routes/routes.dart';
import '../../../common/widgets/custom_elevated_button.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  navigateToLoginPage(context) {
    Navigator.pushNamedAndRemoveUntil(
      context,
      Routes.login,
      (route) => false,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(height: 40),
          const SizedBox(height: 40),
          Expanded(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 50,
                  vertical: 20,
                ),
                child: CircleAvatar(
                  radius: 70,
                  child: Image.asset(
                    'assets/images/circle.png',
                    // color: context.theme.circleImageColor,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 40),
          const SizedBox(height: 40),
          const SizedBox(height: 40),
          const SizedBox(height: 40),
          const SizedBox(height: 40),
          Expanded(
              child: Column(
            children: [
              const Text(
                'Welcome to Arno Chat',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              // const PrivacyAndTerms(),
              const SizedBox(height: 20),
              CustomElevatedButton(
                onPressed: () => navigateToLoginPage(context),
                text: 'CONTINUE!!!',
              ),
              const SizedBox(height: 30),
              // const LanguageButton(),
            ],
          ))
        ],
      ),
    );
  }
}
