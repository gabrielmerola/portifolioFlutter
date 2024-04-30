import 'package:flutter/material.dart';
import 'package:projeto_final_portfolio/constants/colors.dart';

class MainMobile extends StatelessWidget {
  const MainMobile({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    final screenHeight = screenSize.height;

    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 40.0,
        vertical: 30.0,
      ),
      height: screenHeight,
      constraints: const BoxConstraints(
        minHeight: 560.0,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            "assets/fotoPerfil.jpg",
            width: screenWidth,
          ),
          const SizedBox(
            height: 30,
          ),
          const Text(
            "Olá,\nMeu nome é Gabriel Merola\nDesenvolvedor de Software",
            style: TextStyle(
              fontSize: 24,
              height: 1.5,
              fontWeight: FontWeight.bold,
              color: CustomColor.whitePrimary,
            ),
          ),
          const SizedBox(height: 15),
          SizedBox(
            width: 190.0,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: CustomColor.yellowPrimary,
              ),
              child: const Text("Entre em Contato"),
            ),
          ),
        ],
      ),
    );
  }
}
