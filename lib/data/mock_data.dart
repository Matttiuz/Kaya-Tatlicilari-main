import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_app/core/themes.dart';
import 'package:flutter_app/models/drink.dart';
import '../core/constants.dart';
import '../widgets/bottom_menu.dart';
import '../models/dessert.dart';
import '../data/mock_data.dart';
import 'package:google_fonts/google_fonts.dart'; // Tatlı verilerini burada saklıyoruz.

class SweetScreen extends StatelessWidget {
  const SweetScreen({super.key});

  get colors => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colors["primary"], // Arka plan rengi (surface)
      appBar: AppBar(
        backgroundColor: colors["secondary"], // Koyu pembe yerine açık pembe
        centerTitle: true,
        title: Text(
          'Tatlı Menüsü',
          style: TextStyle(
            color: colors["onSurface"], // Başlık yazı rengi (onPrimary)
          ),
        ),
        actions: [],
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: desserts.length,
        itemBuilder: (context, index) {
          final dessert = desserts[index];
          return Card(
            margin: const EdgeInsets.symmetric(vertical: 8),
            child: ListTile(
              leading: Image.asset(
                dessert.imagePath,
                width: 100,
                height: 100,
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) =>
                    const Icon(Icons.broken_image),
              ),
              title: Text(
                dessert.name,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: colors["onSurface"], // Başlık rengi (onSurface)
                ),
              ),
              subtitle: Text(
                dessert.description,
                style: GoogleFonts.delius(
                  textStyle: TextStyle(
                    color: colors["onSurface"], // Alt başlık rengi (onSurface)
                  ),
                ),
              ),
              trailing: Text(
                '${dessert.price.toStringAsFixed(2)} ₺',
                style: GoogleFonts.delius(
                  textStyle: TextStyle(
                    fontSize: 18, // Yazı boyutu artırıldı
                    fontWeight: FontWeight.bold,
                  ),
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

final List<Dessert> desserts = [
  Dessert(
    name: 'Baklava',
    description: 'Cevizli ve fıstıklı taze baklava.',
    price: 1200,
    imagePath: 'assets/images/baklava.jpg',
  ),
  Dessert(
    name: 'Kunefe',
    description: "Peynirli sıcak tatlı.",
    price: 900.0,
    imagePath: 'assets/images/kunefe.jpg',
  ),
  Dessert(
    name: 'Cheesecake',
    description: 'Cheesecake’in üzerine yoğun çikolata sosu eklenir.',
    price: 450.0,
    imagePath: 'assets/images/cheesecake.jpg',
  ),
  Dessert(
    name: 'Sufle',
    description:
        'Dışı pişmiş, içi akışkan çikolatalı bir tatlıdır, sıcak servis edilir.',
    price: 300.0,
    imagePath: 'assets/images/sufle.jpg',
  ),
  Dessert(
    name: 'Macaron',
    description:
        'İnce badem unuyla yapılan, dışı gevrek, içi yumuşak ve krema dolgulu Fransız tatlısıdır. Farklı renk ve tatlarla sunulur.',
    price: 220.0,
    imagePath: 'assets/images/macaron.jpg',
  ),
  Dessert(
    name: 'Profiterol',
    description: 'Çikolatalı soğuk tatlı.',
    price: 150.0,
    imagePath: 'assets/images/profiterol.jpg',
  ),
];
final List<Drink> drinks = [
  Drink(
    name: 'Latte',
    description: 'Espresso ve süt karışımı.',
    price: 150.0,
    imagePath: 'assets/images/latte.jpg',
  ),
  Drink(
    name: 'Americano',
    description:
        'Espresso ile sıcak su karıştırılarak hazırlanır, hafif ve sade.',
    price: 110.0,
    imagePath: 'assets/images/americano.jpg',
  ),
  Drink(
    name: 'Limonata',
    description: 'Taze sıkılmış limonata.',
    price: 100.0,
    imagePath: 'assets/images/limonata.jpg',
  ),
  Drink(
    name: 'Espresso',
    description: 'Yoğun ve zengin kahve aroması.',
    price: 90.0,
    imagePath: 'assets/images/espresso.jpg',
  ),
  Drink(
    name: 'Cola',
    description: 'Klasik ve tatlı, soğuk ve gazlı içecek.',
    price: 80.0,
    imagePath: 'assets/images/cola.jpg',
  ),
  Drink(
    name: 'Fanta',
    description: 'Tatlı ve gazlı, çeşitli meyve aromalarıyla.',
    price: 80.0,
    imagePath: 'assets/images/fanta.jpg',
  ),
  Drink(
    name: 'Soda',
    description: 'Soğuk soda.',
    price: 55.0,
    imagePath: 'assets/images/soda.jpg',
  ),
  Drink(
    name: 'Su',
    description: 'Günlük su ihtiyacınızı karşılar.',
    price: 40.0,
    imagePath: 'assets/images/su.jpg',
  ),
];
