import 'package:counter_app/utils/count_modifier_provider.dart';
import 'package:counter_app/utils/global_variables.dart';
import 'package:counter_app/utils/theme_provider.dart';
import 'package:counter_app/views/counter_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => CountModifierProvider(),
        ),
        ChangeNotifierProvider(
          create: (_) => ThemeProvider(),
        )
      ],
      child: Consumer<ThemeProvider>(
        builder: (context, value, child) => MaterialApp(
          debugShowCheckedModeBanner: false,
          themeMode: themeVar ? ThemeMode.dark : ThemeMode.light,
          theme: ThemeData(
            brightness: Brightness.light,
            textTheme: const TextTheme(
              bodyMedium: TextStyle(
                color: Colors.black87,
                fontWeight: FontWeight.w500,
                fontSize: 16,
              ),
              bodyLarge: TextStyle(
                color: Colors.black87,
                fontWeight: FontWeight.w500,
                fontSize: 34,
              ),
            ),
          ),
          darkTheme: ThemeData(
            brightness: Brightness.dark,
            textTheme: const TextTheme(
              bodyMedium: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w500,
                fontSize: 16,
              ),
              bodyLarge: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w500,
                fontSize: 34,
              ),
            ),
          ),
          home: const HomeScreen(),
        ),
      ),
    );
  }
}
