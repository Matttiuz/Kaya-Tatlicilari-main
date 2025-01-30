// acilis ekranimiz buraya gelicek
import 'package:dotlottie_loader/dotlottie_loader.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:lottie/lottie.dart';

import '../core/constants.dart';

class LoadingScreen extends StatelessWidget {
  const LoadingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(
          255, 228, 74, 106), // .fromARGB(255, 35, 47, 59),
      body: SizedBox.expand(
        // width: double.infinity,
        child: Column(
          children: [
            // Logo bölümü
            Expanded(
              child: Container(
                width: 500,
                height: 400,
                child: Image.asset(
                  'assets/images/logo.png',
                  fit: BoxFit.contain,
                ),
              ),
            ),

            // Yükleniyor yazısı
            // CircularProgressIndicator(),

            InkWell(
              onTap: () => context.go("/home"),
              child: SizedBox(
                width: 250,
                height: 200,
                child: DotLottieLoader.fromAsset(
                  "assets/motions/animasyon.json",
                  frameBuilder: (BuildContext ctx, DotLottie? dotlottie) {
                    if (dotlottie != null) {
                      return Lottie.memory(dotlottie.animations.values.single);
                    } else {
                      return Container();
                    }
                  },
                ),
              ),
            ),
            // biraz bosluk lazim
            SizedBox(height: 100),
          ],
        ),
      ),
    );
  }
}
