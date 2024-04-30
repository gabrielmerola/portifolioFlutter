import 'package:flutter/material.dart';
import 'package:projeto_final_portfolio/constants/colors.dart';
import 'package:projeto_final_portfolio/constants/size.dart';
import 'package:projeto_final_portfolio/constants/skill_items.dart';
import 'package:projeto_final_portfolio/widget/drawer_mobile.dart';
import 'package:projeto_final_portfolio/widget/header_desktop.dart';
import 'package:projeto_final_portfolio/widget/header_mobile.dart';
import 'package:projeto_final_portfolio/widget/main_desktop.dart';
import 'package:projeto_final_portfolio/widget/main_mobile.dart';
import 'package:projeto_final_portfolio/widget/skiils_desktop.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    final screenHeight = screenSize.height;

    return LayoutBuilder(builder: (context, constraints) {
      return Scaffold(
        key: scaffoldKey,
        backgroundColor: CustomColor.scaffoldBg,
        endDrawer: constraints.maxWidth >= minDesktopWidth
            ? null
            : const DrawerMobile(),
        body: ListView(
          scrollDirection: Axis.vertical,
          children: [
            // ==========================MAIN==========================
            if (constraints.maxWidth >= minDesktopWidth)
              const HeaderDesktop()
            else
              HeaderMobile(
                onLogoTap: () {},
                onMenuTap: () {
                  scaffoldKey.currentState?.openEndDrawer();
                },
              ),

            if (constraints.maxWidth >= minDesktopWidth)
              const MainDesktop()
            else
              const MainMobile(),
            // ==========================SKILLS==========================
            Container(
              width: screenWidth,
              padding: const EdgeInsets.fromLTRB(25, 20, 25, 60),
              color: CustomColor.bgLight1,
              child: const Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    "Habilidades",
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: CustomColor.whitePrimary),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  SkillsDesktop(),
                ],
              ),
            ),
            // ==========================PROJECTS==========================
            Container(
              height: 500,
              width: double.maxFinite,
              color: Colors.blueGrey,
            ),
            // ==========================CONTACT==========================
            Container(
              height: 500,
              width: double.maxFinite,
              color: Colors.blueGrey,
            ),
            // ==========================FOOTER==========================
            Container(
              height: 500,
              width: double.maxFinite,
              color: Colors.blueGrey,
            ),
          ],
        ),
      );
    });
  }
}
