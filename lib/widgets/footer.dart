import 'package:flutter/material.dart';
import 'package:projeto_final_portfolio/constants/colors.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20.0),
      width: double.maxFinite,
      alignment: Alignment.center,
      child: const Text(
        "Feito por Gabriel Merola - 2024",
        style: TextStyle(
          fontWeight: FontWeight.w400,
          color: CustomColor.whiteSecondary,
        ),
      ),
    );
  }
}
