import 'package:flutter/material.dart';
import 'package:projeto_final_portfolio/constants/colors.dart';
import 'package:projeto_final_portfolio/constants/size.dart';
import 'package:projeto_final_portfolio/utils/project_utils.dart';
import 'package:projeto_final_portfolio/widgets/drawer_mobile.dart';
import 'package:projeto_final_portfolio/widgets/header_desktop.dart';
import 'package:projeto_final_portfolio/widgets/header_mobile.dart';
import 'package:projeto_final_portfolio/widgets/main_desktop.dart';
import 'package:projeto_final_portfolio/widgets/main_mobile.dart';
import 'package:projeto_final_portfolio/widgets/project_card.dart';
import 'package:projeto_final_portfolio/widgets/project_section.dart';
import 'package:projeto_final_portfolio/widgets/skiils_desktop.dart';
import 'package:projeto_final_portfolio/widgets/skills_mobile.dart';

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
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text(
                    "Habilidades",
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: CustomColor.whitePrimary),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  if (constraints.maxWidth >= medDesktopWidth)
                    const SkillsDesktop()
                  else
                    const SkillsMobile(),
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            // ==========================PROJECTS==========================
            const ProjectSection(),
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
