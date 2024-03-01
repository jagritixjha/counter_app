import 'package:counter_app/views/counter_screen2.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomeScreen2(),
      theme: ThemeData(
        useMaterial3: false,
      ),
    ),
  );
}
