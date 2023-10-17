import 'package:flutter/material.dart';
import 'package:expensetracker/widgets/expenses.dart';

var kColorScheme = ColorScheme.fromSeed(seedColor: Colors.teal);
var kDarkScheme = ColorScheme.fromSeed(
  seedColor: Color.fromARGB(255, 9, 215, 238),
  brightness: Brightness.dark,
);

void main() {
  runApp(
    MaterialApp(
      darkTheme: ThemeData.dark().copyWith(
        useMaterial3: true,
        colorScheme: kDarkScheme,
        cardTheme: CardTheme(
          color: kDarkScheme.primaryContainer,
          margin: const EdgeInsets.all(10),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
                backgroundColor: kDarkScheme.inversePrimary)),
      ),
      theme: ThemeData().copyWith(
        useMaterial3: true,
        colorScheme: kColorScheme,
        appBarTheme: const AppBarTheme().copyWith(
          backgroundColor: kColorScheme.onPrimaryContainer,
          foregroundColor: kColorScheme.secondaryContainer,
        ),
        cardTheme: CardTheme(
          color: kColorScheme.secondaryContainer,
          margin: const EdgeInsets.all(10),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
              backgroundColor: kColorScheme.inversePrimary),
        ),
        textTheme: ThemeData().textTheme.copyWith(
              titleLarge: TextStyle(
                fontWeight: FontWeight.normal,
                color: kColorScheme.onSecondaryContainer,
                fontSize: 15,
              ),
            ),
      ),
      home: const Expenses(),
    ),
  );
}
