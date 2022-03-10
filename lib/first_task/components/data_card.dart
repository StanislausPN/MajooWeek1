import 'package:flutter/material.dart';
import 'package:majoo_botcamp/context_ext.dart';

class DataCard extends StatelessWidget {
  final double screenHeight;
  final Color cardColor;
  final Color textColor;
  final String cardTitle;
  final String totalValue;
  final String upCaseValue;
  const DataCard({
    Key? key,
    required this.screenHeight,
    required this.cardColor,
    required this.textColor,
    required this.cardTitle,
    required this.totalValue,
    required this.upCaseValue,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: screenHeight,
      margin: const EdgeInsets.only(bottom: 16),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
          color: cardColor, borderRadius: BorderRadius.circular(20)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(cardTitle,
              style: TextStyle(
                  fontSize: 18 * context.textScaleFactorValue,
                  fontWeight: FontWeight.bold,
                  color: textColor)),
          Text(
            totalValue,
            style: TextStyle(
                fontSize: 46 * context.textScaleFactorValue,
                fontWeight: FontWeight.bold,
                color: textColor),
          ),
          Row(
            children: [
              Text(
                upCaseValue,
                style: TextStyle(
                    fontSize: 16 * context.textScaleFactorValue,
                    fontWeight: FontWeight.w500,
                    color: textColor),
              ),
              Icon(
                Icons.arrow_upward,
                color: textColor,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
