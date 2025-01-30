import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import '../core/constants.dart';
import '../core/themes.dart';
import '../widgets/bottom_menu.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Anasayfa',
          style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                color: colors["onSurface"], // Yazı rengi
              ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(CupertinoIcons.app),
            onPressed: () {
              context.read<ThemeProvider>().toggleTheme();
            },
          ),
        ],
      ),
      drawer: Drawer(
        backgroundColor: colors["secondary"], // Çekmece arka plan rengi
        child: Column(
          children: [
            Container(
              height: 200,
              child: Center(
                child: Icon(
                  CupertinoIcons.person_circle,
                  size: 80,
                  color: colors["onPrimary"], // İkon rengi
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.person_badge_plus,
                color: colors["onSecondary"], // İkon rengi
              ),
              title: Text(
                'Giriş yap / Kayıt ol',
                style: TextStyle(color: colors["onSecondary"]), // Yazı rengi
              ),
              onTap: () {
                context.go('/login');
              },
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
                context.go('/sweet');
              },
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset(
                    'assets/images/tatlı.jpg', // Tatlılar fotoğrafı
                    width: double.infinity,
                    height: 250, // Boyut artırıldı
                    fit: BoxFit.cover,
                    errorBuilder: (context, error, stackTrace) =>
                        const Icon(Icons.broken_image),
                  ),
                ),
              ),
            ),
            const Text(
              'Tatlı Menümüz',
              style: TextStyle(
                fontSize: 20,

                color: Color.fromARGB(255, 255, 255, 255), // Yazı rengi
              ),
            ),
            const SizedBox(height: 32),
            GestureDetector(
              onTap: () {
                context.go('/drinks');
              },
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset(
                    'assets/images/drinkk.jpg', // İçecekler fotoğrafı
                    width: double.infinity,
                    height: 250, // Boyut artırıldı
                    fit: BoxFit.cover,
                    errorBuilder: (context, error, stackTrace) =>
                        const Icon(Icons.broken_image),
                  ),
                ),
              ),
            ),
            const Text(
              'İçecek Menümüz',
              style: TextStyle(
                fontSize: 20,

                color: Color.fromARGB(255, 255, 255, 255), // Yazı rengi
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: const BottomMenu(),
    );
  }
}
