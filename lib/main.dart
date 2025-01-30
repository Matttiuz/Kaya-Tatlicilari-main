import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'core/routes.dart';
import 'core/themes.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => ThemeProvider(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeProvider>(
      builder: (context, themeProvider, child) {
        return MaterialApp.router(
          title: 'KayaTatlıcıları',
          theme: ThemeData(
            primaryColor: colors["primary"],
            scaffoldBackgroundColor: colors["primary"],
            textTheme: TextTheme(
              headlineMedium: TextStyle(color: colors["onPrimary"]),
            ),
            appBarTheme: AppBarTheme(
              backgroundColor: colors["surface"],
              iconTheme: IconThemeData(color: colors["onSurface"]),
            ),
          ),
          darkTheme: ThemeData(
            primaryColor: darkColors["primary"],
            scaffoldBackgroundColor: darkColors["primary"],
            textTheme: TextTheme(
              headlineMedium: TextStyle(color: darkColors["onPrimary"]),
            ),
            appBarTheme: AppBarTheme(
              backgroundColor: darkColors["surface"],
              iconTheme: IconThemeData(color: darkColors["onSurface"]),
            ),
          ),
          themeMode:
              themeProvider.isDarkTheme ? ThemeMode.dark : ThemeMode.light,
          routerConfig: router,
          debugShowCheckedModeBanner: false,
        );
      },
    );
  }
}
