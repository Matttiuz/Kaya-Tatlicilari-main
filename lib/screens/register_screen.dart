import 'package:flutter/material.dart';
import 'package:flutter_app/core/themes.dart';
import 'package:go_router/go_router.dart';
import '../core/constants.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: SizedBox(
          width: 300,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                decoration: InputDecoration(
                  hintText: "Ad Soyad",
                  hintStyle:
                      TextStyle(color: colors["onPrimary"]), // Hint metni rengi
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide:
                        BorderSide(color: colors["onPrimary"]!), // Kenar rengi
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide:
                        BorderSide(color: colors["onPrimary"]!), // Kenar rengi
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide:
                        BorderSide(color: colors["onPrimary"]!), // Kenar rengi
                  ),
                  prefixIcon: Icon(Icons.person,
                      color: colors["onPrimary"]), // İkon rengi
                ),
              ),
              SizedBox(height: 16),
              TextField(
                decoration: InputDecoration(
                  hintText: "E-Posta",
                  hintStyle:
                      TextStyle(color: colors["onPrimary"]), // Hint metni rengi
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide:
                        BorderSide(color: colors["onPrimary"]!), // Kenar rengi
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide:
                        BorderSide(color: colors["onPrimary"]!), // Kenar rengi
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide:
                        BorderSide(color: colors["onPrimary"]!), // Kenar rengi
                  ),
                  prefixIcon: Icon(Icons.email,
                      color: colors["onPrimary"]), // İkon rengi
                ),
              ),
              SizedBox(height: 16),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  hintText: "Şifre",
                  hintStyle:
                      TextStyle(color: colors["onPrimary"]), // Hint metni rengi
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide:
                        BorderSide(color: colors["onPrimary"]!), // Kenar rengi
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide:
                        BorderSide(color: colors["onPrimary"]!), // Kenar rengi
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide:
                        BorderSide(color: colors["onPrimary"]!), // Kenar rengi
                  ),
                  prefixIcon: Icon(Icons.lock,
                      color: colors["onPrimary"]), // İkon rengi
                ),
              ),
              SizedBox(height: 16),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  hintText: "Şifre Tekrar",
                  hintStyle:
                      TextStyle(color: colors["onPrimary"]), // Hint metni rengi
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide:
                        BorderSide(color: colors["onPrimary"]!), // Kenar rengi
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide:
                        BorderSide(color: colors["onPrimary"]!), // Kenar rengi
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide:
                        BorderSide(color: colors["onPrimary"]!), // Kenar rengi
                  ),
                  prefixIcon: Icon(Icons.lock_outline,
                      color: colors["onPrimary"]), // İkon rengi
                ),
              ),
              SizedBox(height: 24),
              FilledButton(
                onPressed: () {
                  context.go("/home");
                },
                style: FilledButton.styleFrom(
                  backgroundColor: colors["primary"], // Buton arka plan rengi
                  foregroundColor: colors["onPrimary"], // Buton yazı rengi
                  minimumSize: Size(double.infinity, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: const Text("Kayıt Ol", style: TextStyle(fontSize: 16)),
              ),
              SizedBox(height: 12),
              OutlinedButton(
                onPressed: () {
                  context.push("/login");
                },
                style: OutlinedButton.styleFrom(
                  foregroundColor: colors["onPrimary"],
                  side: BorderSide(
                      color: colors["onPrimary"]!), // Buton kenar rengi
                  minimumSize: Size(double.infinity, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: const Text("Giriş Yap", style: TextStyle(fontSize: 16)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
