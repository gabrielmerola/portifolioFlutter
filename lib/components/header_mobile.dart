import 'package:flutter/material.dart';
import 'package:projeto_final_portfolio/styles/styles.dart';
import 'package:projeto_final_portfolio/components/logo.dart';

class HeaderMobile extends StatelessWidget {
  const HeaderMobile({super.key, this.onLogoTap, this.onMenuTap});
  final VoidCallback? onLogoTap;
  final VoidCallback? onMenuTap;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.0,
      margin: const EdgeInsets.fromLTRB(40, 5, 20, 5),
      decoration: headerDecoration,
      child: Row(
        children: [
          Logo(
            onTap: onLogoTap,
          ),
          const Spacer(),
          IconButton(
            onPressed: onMenuTap,
            icon: const Icon(Icons.menu),
          ),
          const SizedBox(
            width: 15,
          )
        ],
      ),
    );
  }
}
