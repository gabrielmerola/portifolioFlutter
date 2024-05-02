import 'package:flutter/material.dart';
import 'package:projeto_final_portfolio/constants/colors.dart';
import 'package:projeto_final_portfolio/constants/nav_items.dart';
import 'package:projeto_final_portfolio/styles/styles.dart';
import 'package:projeto_final_portfolio/widgets/logo.dart';

class HeaderDesktop extends StatelessWidget {
  const HeaderDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60.0,
      margin: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
      width: double.maxFinite,
      decoration: headerDecoration,
      child: Row(
        children: [
          Logo(
            onTap: () {},
          ),
          const Spacer(),
          for (int i = 0; i < navTitles.length; i++)
            Padding(
              padding: const EdgeInsets.only(right: 20.0),
              child: TextButton(
                onPressed: () {},
                child: Text(
                  navTitles[i],
                  style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: CustomColor.whitePrimary),
                ),
              ),
            )
        ],
      ),
    );
  }
}
