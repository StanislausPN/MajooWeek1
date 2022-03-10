import 'package:flutter/material.dart';
import 'package:majoo_botcamp/context_ext.dart';
import 'package:majoo_botcamp/first_task/components/data_card.dart';

class LandscapeView extends StatelessWidget {
  const LandscapeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final screenHeight = mediaQuery.size.height;
    final screenWidth = mediaQuery.size.width;
    return Row(
      children: [
        Container(
          width: screenWidth * 0.35,
          padding: const EdgeInsets.all(16),
          decoration: const BoxDecoration(
              color: Color(0xFFABC7FF),
              borderRadius: BorderRadius.horizontal(
                right: Radius.circular(40),
              )),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Perkembangan COVID-19 Indonesia',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 26 * context.textScaleFactorValue,
                    fontWeight: FontWeight.bold),
              ),
              Text('Last update: 2022-02-25 17:08:55',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 14 * context.textScaleFactorValue,
                      fontWeight: FontWeight.w500)),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 16),
                child: Align(
                    alignment: Alignment.centerRight,
                    child: Icon(Icons.refresh)),
              ),
            ],
          ),
        ),
        SizedBox(
          width: screenWidth * 0.45,
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  DataCard(
                      screenHeight: screenHeight * 0.35,
                      cardColor: const Color(0xFFFFDCC4),
                      textColor: const Color(0xFF914A12),
                      cardTitle: 'Kasus aktif',
                      totalValue: '5,457,775',
                      upCaseValue: '49,447'),
                  DataCard(
                      screenHeight: screenHeight * 0.35,
                      cardColor: const Color(0xFF97F7B8),
                      textColor: const Color(0xFF0B6738),
                      cardTitle: 'Sembuh',
                      totalValue: '4,736,234',
                      upCaseValue: '61,361'),
                  DataCard(
                      screenHeight: screenHeight * 0.35,
                      cardColor: const Color(0xFFFFD9D3),
                      textColor: const Color(0xFFC61412),
                      cardTitle: 'Meninggal',
                      totalValue: '147,586',
                      upCaseValue: '244'),
                ],
              ),
            ),
          ),
        ),
        Flexible(
          child: Padding(
            padding: const EdgeInsets.only(right: 8),
            child: Text(
                'Note: Data harian COVID-19 biasanya update pada pukul sekitar 17.00 WIB',
                style: TextStyle(
                  fontSize: 12 * context.textScaleFactorValue,
                )),
          ),
        )
      ],
    );
  }
}
