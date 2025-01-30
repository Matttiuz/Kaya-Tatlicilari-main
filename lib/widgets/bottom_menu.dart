import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import '../core/constants.dart';

class BottomMenu extends StatelessWidget {
  const BottomMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return Container(
      height: 70,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          // Anasayfa
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              IconButton(
                color: colorScheme.surface,
                onPressed: () {
                  context.go("/home");
                },
                icon: const Icon(CupertinoIcons.home),
              ),
              Text(
                "Anasayfa",
                style: GoogleFonts.delius(
                  textStyle:
                      TextStyle(color: colorScheme.onPrimary), // Yazı rengi
                ),
              ),
            ],
          ),
          // Alışveriş
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              IconButton(
                color: colorScheme.surface,
                onPressed: () {
                  context.go("/shopping");
                },
                icon: const Icon(CupertinoIcons.shopping_cart),
              ),
              Text(
                "Sepet",
                style: GoogleFonts.delius(
                  textStyle:
                      TextStyle(color: colorScheme.onPrimary), // Yazı rengi
                ),
              ),
            ],
          ),
          // Tatlı
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              IconButton(
                color: colorScheme.surface,
                onPressed: () {
                  context.go("/sweet");
                },
                icon: const Icon(Icons.cake_outlined),
              ),
              Text(
                "Tatlı Menüsü",
                style: GoogleFonts.delius(
                  textStyle:
                      TextStyle(color: colorScheme.onPrimary), // Yazı rengi
                ),
              ),
            ],
          ),
          // İçecekler
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              IconButton(
                color: colorScheme.surface,
                onPressed: () {
                  context.go("/drinks");
                },
                icon: const Icon(Icons.wine_bar_outlined),
              ),
              Text(
                "İçecek Menüsü",
                style: GoogleFonts.delius(
                  textStyle:
                      TextStyle(color: colorScheme.onPrimary), // Yazı rengi
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
