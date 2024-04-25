import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:saving_app/styles/color.dart';
import 'package:saving_app/styles/text_styles.dart';

class branda extends StatelessWidget {
  const branda({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: kBgColor.withOpacity(0.5),
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                left: 30,
                top: 35,
                right: 30,
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Hi,',
                            style: kBody1.copyWith(
                              color: kWhite,
                            ),
                          ),
                          Text(
                            'Feri Yasin 👏',
                            style: kHeading6.copyWith(
                              color: kWhite,
                            ),
                          ),
                        ],
                      ),
                      Container(
                        constraints: BoxConstraints.expand(
                          height: 40,
                          width: 40,
                        ),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                            image: DecorationImage(
                              image: AssetImage('assets/images/user.png'),
                              fit: BoxFit.cover,
                            ),
                            boxShadow: [
                              BoxShadow(
                                color: kGrey,
                                blurRadius: 5,
                                offset: Offset.fromDirection(2),
                              ),
                            ]),
                      )
                    ],
                  ),
                  SizedBox(height: 28),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 30),
                    constraints: BoxConstraints.expand(height: 170),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(25),
                      ),
                      image: DecorationImage(
                        image: AssetImage('assets/images/bg-container.png'),
                        fit: BoxFit.cover,
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: kGrey,
                          blurRadius: 5,
                          offset: Offset.fromDirection(2),
                        )
                      ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'My savings',
                          style: kSubtitle2.copyWith(color: kWhite),
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        Text(
                          'Rp. 10.430.000',
                          style: kHeading5.copyWith(
                            color: kWhite,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        LinearPercentIndicator(
                          lineHeight: 4,
                          padding: EdgeInsets.symmetric(horizontal: 0),
                          progressColor: kEgyptianBlue,
                          percent: 0.3,
                          backgroundColor: kWhite,
                        ),
                        SizedBox(height: 16),
                        Text(
                          'Rp. 10.430.000 / Rp. 40.000.000',
                          style: kCaption.copyWith(
                            color: kWhite,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 30),
                  Row(
                    children: [
                      _trasactionButton('assets/icons/save.png', 'Simpan Uang'),
                      SizedBox(
                        width: 25,
                      ),
                      _trasactionButton('assets/icons/pay.png', 'Scan Barcode'),
                    ],
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 200),
              child: DraggableScrollableSheet(
                controller: DraggableScrollableController(),
                builder: (context, scrollController) {
                  return Container(
                    decoration: BoxDecoration(
                      color: kWhite,
                      borderRadius: BorderRadius.vertical(
                        top: Radius.circular(40),
                      ),
                    ),
                    padding: const EdgeInsets.only(
                      left: 30,
                      right: 30,
                      top: 21,
                    ),
                    child: Stack(
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 14),
                          child: SingleChildScrollView(
                            controller: scrollController,
                            child: Column(
                              children: [
                                Center(
                                  child: Text(
                                    'Aktifitas Transaksi',
                                    style: kHeading6.copyWith(
                                      color: kLuckyBlue,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 31,
                                ),
                                _transactionList(
                                  kTreeGreen.withOpacity(0.2),
                                  'assets/icons/triangle-up.png',
                                  'Sukses',
                                  '19 Februari, 15.25',
                                  '+ 100.000',
                                ),
                                _transactionList(
                                  kTreeGreen.withOpacity(0.2),
                                  'assets/icons/triangle-up.png',
                                  'Sukses',
                                  '16 Februari, 13.25',
                                  '+ 150.000',
                                ),
                                _transactionList(
                                  kOrange.withOpacity(0.2),
                                  'assets/icons/triangle-down.png',
                                  'Pembayaran Starbucks',
                                  '10 Februari, 12:25',
                                  '- 110.000',
                                ),
                                _transactionList(
                                  kOrange.withOpacity(0.2),
                                  'assets/icons/triangle-down.png',
                                  'Pembayaran #Investasi',
                                  '5 Februari, 11:05',
                                  '- 130.000',
                                )
                              ],
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.topCenter,
                          child: Container(
                            height: 4,
                            width: 49,
                            color: kEgyptianBlue.withOpacity(0.1),
                          ),
                        )
                      ],
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _transactionList(
      Color bgColor, String icon, String title, String sub, String amount) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 30),
      child: Row(
        children: [
          SizedBox(
            height: 30,
            width: 30,
            child: CircleAvatar(
              backgroundColor: bgColor,
              child: Image(
                image: AssetImage(icon),
                width: 14,
              ),
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: kBody1.copyWith(color: kLuckyBlue),
              ),
              Text(
                sub,
                style: kCaption.copyWith(
                  color: kLightGray,
                ),
              )
            ],
          ),
          Spacer(),
          Text(
            amount,
            style: kBody1.copyWith(
              color: kLuckyBlue,
            ),
          )
        ],
      ),
    );
  }

  Widget _trasactionButton(String icon, String text) {
    return Expanded(
      child: Container(
        constraints: BoxConstraints.expand(
          height: 60,
        ),
        decoration: BoxDecoration(
          color: kdarkBlue,
          borderRadius: BorderRadius.all(
            Radius.circular(15),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              icon,
              width: 24,
            ),
            SizedBox(
              width: 5,
            ),
            Text(
              text,
              style: kBody1.copyWith(
                color: kWhite,
              ),
            )
          ],
        ),
      ),
    );
  }
}
