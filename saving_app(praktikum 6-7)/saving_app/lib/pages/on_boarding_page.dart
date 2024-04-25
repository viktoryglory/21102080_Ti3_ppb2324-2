import 'package:flutter/material.dart';
import 'package:saving_app/styles/color.dart';
import 'package:saving_app/styles/text_styles.dart';

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({super.key});
  static const nameRoute = '/';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: kBgColor.withOpacity(0.5),
        child: SingleChildScrollView(
          // Wrap Column with SingleChildScrollView
          child: Column(
            children: [
              const SafeArea(
                child: Image(
                  image: AssetImage('assets/images/ob-money.png'),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                padding: const EdgeInsets.all(26),
                constraints: const BoxConstraints.expand(
                  height: 300,
                  width: 315,
                ),
                decoration: const BoxDecoration(
                  color: kWhite,
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                ),
                child: Column(
                  children: [
                    Text(
                      'Welcome!',
                      style: kHeading5.copyWith(color: kBlack),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Text(
                      'Welcome to Fleet Finance, the easy way to improve your finances and help you control expenses and income',
                      style: kSubtitle2.copyWith(color: kSuvaGray),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(
                      height: 70,
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.pushNamedAndRemoveUntil(
                            context, '/main', (route) => false);
                      },
                      style: TextButton.styleFrom(
                        backgroundColor: kBlueRibbon,
                        padding: const EdgeInsets.symmetric(
                          vertical: 14,
                          horizontal: 36,
                        ),
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
                      ),
                      child: Text(
                        'Get Started',
                        style: kButton1.copyWith(color: kWhite),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
