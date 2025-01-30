import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_app/screens/home_screen.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import '../core/constants.dart';
import '../core/themes.dart';
import '../widgets/bottom_menu.dart';

class ShoppingScreen extends StatelessWidget {
  const ShoppingScreen({super.key});

  // Dinamik olarak isimden fotoğraf yolu oluşturma fonksiyonu
  String _getImagePath(String dessertName) {
    return 'images/${dessertName.toLowerCase().replaceAll(' ', '_')}.jpg';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colors["primary"], // Arka plan rengi
      appBar: AppBar(
        backgroundColor: colors["secondary"], // AppBar arka plan rengi
        centerTitle: true,
        title: Text(
          'Sepet',
          style: GoogleFonts.delius(
            textStyle: TextStyle(
              color: colors["onSurface"], // Başlık yazı rengi (onSurface)
            ),
          ),
        ),
        iconTheme: IconThemeData(
          color: colors["onSurface"], // AppBar ikon rengi (onSurface)
        ),
      ),
      body: Center(
        child: Container(
          color: colors["primary"], // Arka plandan daha açık bir renk (surface)
          padding: const EdgeInsets.all(20),
          child: Text(
            'Sepetiniz henüz boş',
            style: GoogleFonts.delius(
              textStyle: TextStyle(
                fontSize: 18,
                color: colors["secondary"], // Yazı rengi (onSurface)
                fontWeight: FontWeight.normal,
              ),
            ),
          ),
        ),
      ),
      bottomNavigationBar: const BottomMenu(),
    );
  }
}
