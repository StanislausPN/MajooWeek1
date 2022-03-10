import 'package:flutter/material.dart';
import 'package:majoo_botcamp/context_ext.dart';
import 'package:majoo_botcamp/first_task/components/data_card.dart';

class PotraitView extends StatelessWidget {
  const PotraitView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final screenHeight = mediaQuery.size.height;
    final paddingBottom = mediaQuery.viewInsets.bottom;
    return Stack(
      children: [
        Column(
          children: [
            Container(
              height: screenHeight * 0.35,
              decoration: const BoxDecoration(
                  color: Color(0xFFABC7FF),
                  borderRadius: BorderRadius.vertical(
                    bottom: Radius.circular(40),
                  )),
            ),
            Container(
              height: screenHeight * 0.65,
              color: Colors.white,
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.all(30),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 28),
                child: Text(
                  'Perkembangan COVID-19 Indonesia',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 36 * context.textScaleFactorValue,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Text('Last update: 2022-02-25 17:08:55',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 18 * context.textScaleFactorValue,
                      fontWeight: FontWeight.w500)),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 16),
                child: Align(
                    alignment: Alignment.centerRight,
                    child: Icon(Icons.refresh)),
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      DataCard(
                          screenHeight: screenHeight * 0.18,
                          cardColor: const Color(0xFFFFDCC4),
                          textColor: const Color(0xFF914A12),
                          cardTitle: 'Kasus aktif',
                          totalValue: '5,457,775',
                          upCaseValue: '49,447'),
                      DataCard(
                          screenHeight: screenHeight * 0.18,
                          cardColor: const Color(0xFF97F7B8),
                          textColor: const Color(0xFF0B6738),
                          cardTitle: 'Sembuh',
                          totalValue: '4,736,234',
                          upCaseValue: '61,361'),
                      DataCard(
                          screenHeight: screenHeight * 0.18,
                          cardColor: const Color(0xFFFFD9D3),
                          textColor: const Color(0xFFC61412),
                          cardTitle: 'Meninggal',
                          totalValue: '147,586',
                          upCaseValue: '244'),
                      Text(
                          'Note: Data harian COVID-19 biasanya update pada pukul sekitar 17.00 WIB',
                          style: TextStyle(
                            fontSize: 14 * context.textScaleFactorValue,
                          )),
                    ],
                  ),
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
