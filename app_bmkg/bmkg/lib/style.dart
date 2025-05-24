import 'package:flutter/material.dart';

final ThemeData appTheme = ThemeData(
  primaryColor: const Color(0xFF2A3A54), // biru gelap modern
  colorScheme: ColorScheme.fromSwatch().copyWith(
    secondary: const Color(0xFF91A6FF), // warna aksen pastel biru
  ),
  brightness: Brightness.light,
  scaffoldBackgroundColor: const Color(
    0xFFF5F7FA,
  ), // background putih kebiruan lembut
  appBarTheme: const AppBarTheme(
    backgroundColor: Color(0xFF2A3A54),
    centerTitle: true,
    elevation: 6,
    titleTextStyle: TextStyle(
      fontSize: 22,
      fontWeight: FontWeight.bold,
      color: Colors.white,
      letterSpacing: 1.2,
    ),
    iconTheme: IconThemeData(color: Colors.white),
  ),
  cardTheme: CardTheme(
    color: Colors.white,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
    elevation: 12,
    margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
    shadowColor: Colors.black.withOpacity(0.15),
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: const Color(0xFF91A6FF),
      foregroundColor: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      textStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
      elevation: 8,
      shadowColor: Colors.blueAccent.withOpacity(0.3),
    ),
  ),
  inputDecorationTheme: InputDecorationTheme(
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(20),
      borderSide: BorderSide(color: Colors.grey.shade300),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(20),
      borderSide: const BorderSide(color: Color(0xFF91A6FF), width: 2),
    ),
    labelStyle: const TextStyle(
      color: Color(0xFF475569),
      fontWeight: FontWeight.w600,
      letterSpacing: 0.5,
    ),
  ),
  textTheme: const TextTheme(
    labelMedium: TextStyle(
      fontSize: 14,
      color: Color(0xFF334155),
      fontWeight: FontWeight.w700,
      letterSpacing: 0.8,
    ),
    bodyMedium: TextStyle(
      fontSize: 13,
      color: Color(0xFF64748B),
      height: 1.4,
      fontWeight: FontWeight.w500,
    ),
    headlineSmall: TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.bold,
      color: Color(0xFF1E293B),
      letterSpacing: 1,
    ),
  ),
);
