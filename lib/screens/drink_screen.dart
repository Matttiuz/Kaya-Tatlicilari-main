import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_app/core/themes.dart';
import 'package:flutter_app/models/drink.dart';
import 'package:go_router/go_router.dart';
import '../core/constants.dart';
import '../widgets/bottom_menu.dart';
import '../data/mock_data.dart'; // Tatlı verilerini burada saklıyoruz.

class DrinkScreen extends StatelessWidget {
  const DrinkScreen({super.key});

  // Dinamik olarak isimden fotoğraf yolu oluşturma fonksiyonu
  String _getImagePath(String drinkName) {
    return 'images/${drinkName.toLowerCase().replaceAll(' ', '_')}.jpg';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colors["primary"], // Arka plan rengi (surface)
      appBar: AppBar(
        backgroundColor: colors["secondary"], // Koyu pembe yerine açık pembe
        centerTitle: true,
        title: Text(
          'İçecek Menüsü',
          style: TextStyle(
            color: colors["onSurface"], // Başlık yazı rengi (onPrimary)
          ),
        ),
        actions: [],
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: drinks.length,
        itemBuilder: (context, index) {
          final Drink = drinks[index];
          return Card(
            margin: const EdgeInsets.symmetric(vertical: 8),
            child: ListTile(
              leading: Image.asset(
                _getImagePath(Drink.name),
                width: 100,
                height: 100,
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) =>
                    const Icon(Icons.broken_image),
              ),
              title: Text(
                Drink.name,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: colors["onSurface"], // Başlık rengi (onSurface)
                ),
              ),
              subtitle: Text(
                Drink.description,
                style: TextStyle(
                  color: colors["onSurface"], // Alt başlık rengi (onSurface)
                ),
              ),
              trailing: Text(
                '${Drink.price.toStringAsFixed(2)} ₺',
                style: const TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.bold,
                ),
              ),
              onTap: () {
                // Detay ekranı için yönlendirme yapılabilir
              },
            ),
          );
        },
      ),
      bottomNavigationBar: const BottomMenu(),
    );
  }
}
