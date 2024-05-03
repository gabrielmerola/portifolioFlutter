import 'package:flutter/material.dart';
import 'package:projeto_final_portfolio/constants/colors.dart';
import 'package:projeto_final_portfolio/constants/size.dart';
import 'package:projeto_final_portfolio/widgets/drawer_mobile.dart';
import 'package:projeto_final_portfolio/widgets/footer.dart';
import 'package:projeto_final_portfolio/widgets/header_desktop.dart';
import 'package:projeto_final_portfolio/widgets/header_mobile.dart';
import 'package:projeto_final_portfolio/widgets/main_desktop.dart';
import 'package:projeto_final_portfolio/widgets/main_mobile.dart';
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
  final scrollController = ScrollController();
  final List<GlobalKey> navbarKeys = List.generate(4, (index) => GlobalKey());

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;

    return LayoutBuilder(builder: (context, constraints) {
      return Scaffold(
        key: scaffoldKey,
        backgroundColor: CustomColor.scaffoldBg,
        endDrawer: constraints.maxWidth >= minDesktopWidth
            ? null
            : DrawerMobile(onNavItemTap: (int navIndex) {
                scaffoldKey.currentState?.closeEndDrawer();
                scrollToSection(navIndex);
              }),
        body: SingleChildScrollView(
          controller: scrollController,
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              SizedBox(key: navbarKeys.first),
              // ==========================MAIN==========================
              if (constraints.maxWidth >= minDesktopWidth)
                HeaderDesktop(onNavMenuTap: (int navIndex) {
                  scrollToSection(navIndex);
                })
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
                key: navbarKeys[1],
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
              ProjectSection(key: navbarKeys[2]),

              const SizedBox(height: 30),
              // ==========================FOOTER==========================
              const Footer()
            ],
          ),
        ),
      );
    });
  }

  void scrollToSection(int navIndex) {
    final key = navbarKeys[navIndex];
    Scrollable.ensureVisible(
      key.currentContext!,
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeInOut,
    );
  }
}
