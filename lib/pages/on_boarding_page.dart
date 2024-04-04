import 'package:flutter/material.dart';
import 'package:praktikum_6/styles/color.dart';
import 'package:praktikum_6/styles/text_styles.dart';

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
              SafeArea(
                child: Image(
                  image: AssetImage('assets/images/ob-money.png'),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                padding: EdgeInsets.all(26),
                constraints: BoxConstraints.expand(
                  height: 300,
                  width: 315,
                ),
                decoration: BoxDecoration(
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
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      'Welcome to Fleet Finance, the easy way to improve your finances and help you control expenses and income',
                      style: kSubtitle2.copyWith(color: kSuvaGray),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(
                      height: 70,
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.pushNamedAndRemoveUntil(
                            context, '/main', (route) => false);
                      },
                      child: Text(
                        'Get Started',
                        style: kButton1.copyWith(color: kWhite),
                      ),
                      style: TextButton.styleFrom(
                        backgroundColor: kBlueRibbon,
                        padding: EdgeInsets.symmetric(
                          vertical: 14,
                          horizontal: 36,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
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
