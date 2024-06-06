import 'package:counter_app/utils/count_modifier_provider.dart';
import 'package:counter_app/utils/theme_provider.dart';
import 'package:counter_app/views/counter_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences pref = await SharedPreferences.getInstance();
  bool themeVar = pref.getBool('isDark') ?? false;
  runApp(
    ChangeNotifierProvider(
      create: (_) => ThemeProvider(isDark: themeVar),
      child: MyApp(),
    ),
  );
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
      ],
      child: Consumer<ThemeProvider>(
        builder: (context, value, child) => MaterialApp(
          debugShowCheckedModeBanner: false,
          // themeMode: themeVar ? ThemeMode.dark : ThemeMode.light,
          theme: value.getTheme,
          home: const HomeScreen(),
        ),
      ),
    );
  }
}
