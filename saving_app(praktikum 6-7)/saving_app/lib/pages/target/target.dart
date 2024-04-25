import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:saving_app/styles/color.dart';
import 'package:saving_app/styles/text_styles.dart';

class target extends StatelessWidget {
  const target({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.only(top: 25),
            height: 240,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.vertical(
                bottom: Radius.circular(40),
              ),
              image: DecorationImage(
                image: AssetImage('assets/images/bg-container2.png'),
                fit: BoxFit.cover,
              ),
              boxShadow: [
                BoxShadow(
                  color: kGrey,
                  blurRadius: 5,
                  offset: Offset.fromDirection(2),
                ),
              ],
            ),
            child: SafeArea(
              child: Column(
                children: [
                  Text(
                    'Target Ku',
                    style: kHeading6.copyWith(
                      color: kWhite,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Text(
                    'Jumlah Target',
                    style: kSubtitle2.copyWith(
                      color: kWhite,
                    ),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Text(
                    'Rp 12.000.000',
                    style: kHeading5.copyWith(
                      color: kWhite,
                    ),
                  ),
                ],
              ),
            ),
          ),
          _portfolioCardList(
            'assets/icons/camera.png',
            'Camera',
            0.5,
            'Rp. 2.050.000 / Rp. 4.000.000',
            'Terakhir menabung 12 Februari',
          ),
          _portfolioCardList(
            'assets/icons/camera.png',
            'Laptop',
            0.5,
            'Rp. 1.050.000 / Rp. 8.000.000',
            'Terakhir menabung 19 Februari',
          ),
          Container(
            margin: const EdgeInsets.symmetric(
              vertical: 20,
              horizontal: 30,
            ),
            child: TextButton(
              onPressed: () {},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.add,
                    size: 13,
                    color: kLuckyBlue,
                  ),
                  Text(
                    'Tambahkan Target',
                    style: kButton2.copyWith(
                      color: kLuckyBlue,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
              style: TextButton.styleFrom(
                backgroundColor: kWhite,
                padding: const EdgeInsets.symmetric(vertical: 15),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(15),
                  ),
                ),
                elevation: 4,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _portfolioCardList(
    String icon,
    String title,
    double percent,
    String amount,
    String time,
  ) {
    return Container(
      margin: const EdgeInsets.only(
        left: 30,
        right: 30,
        top: 20,
      ),
      padding: const EdgeInsets.fromLTRB(15, 19, 15, 14),
      constraints: const BoxConstraints.expand(
        height: 130,
      ),
      decoration: BoxDecoration(
        color: kWhite,
        borderRadius: BorderRadius.all(
          Radius.circular(15),
        ),
        boxShadow: [
          BoxShadow(
            color: kGrey,
            blurRadius: 1,
            offset: Offset.fromDirection(1, 2),
          ),
        ],
      ),
      child: Row(
        children: [
          Container(
            height: 55,
            width: 55,
            child: CircleAvatar(
              backgroundColor: kTropicalBlue,
              child: Image.asset(
                icon,
                width: 24,
              ),
            ),
          ),
          const SizedBox(
            width: 15,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: kSubtitle1.copyWith(),
                ),
                const SizedBox(
                  height: 12,
                ),
                LinearPercentIndicator(
                  lineHeight: 4,
                  padding: const EdgeInsets.symmetric(horizontal: 0),
                  percent: percent,
                  progressColor: kBlueRibbon,
                  backgroundColor: kGrey.withOpacity(0.3),
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  amount,
                  style: kSubtitle2.copyWith(
                    color: kGrey,
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  time,
                  textAlign: TextAlign.right,
                  style: kSubtitle2.copyWith(
                    color: kGrey,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
