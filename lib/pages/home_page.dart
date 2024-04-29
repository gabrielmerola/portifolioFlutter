import 'package:flutter/material.dart';
import 'package:projeto_final_portfolio/constants/colors.dart';
import 'package:projeto_final_portfolio/constants/nav_items.dart';
import 'package:projeto_final_portfolio/widget/drawer_mobile.dart';
import 'package:projeto_final_portfolio/widget/header_desktop.dart';
import 'package:projeto_final_portfolio/widget/header_mobile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return Scaffold(
        key: scaffoldKey,
        backgroundColor: CustomColor.scaffoldBg,
        endDrawer: const DrawerMobile(),
        body: ListView(
          scrollDirection: Axis.vertical,
          children: [
            // ==========================MAIN==========================
            if (constraints.maxWidth >= 600.0)
              const HeaderDesktop()
            else
              HeaderMobile(
                onLogoTap: () {},
                onMenuTap: () {
                  scaffoldKey.currentState?.openEndDrawer();
                },
              ),
            // ==========================SKILLS==========================
            Container(
              height: 500,
              width: double.maxFinite,
              color: Colors.blueGrey,
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
