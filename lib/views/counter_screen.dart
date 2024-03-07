import 'package:flutter/material.dart';

import '../utils/global variables.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<StatefulWidget> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: false),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueAccent,
          elevation: 8,
          shadowColor: Colors.grey,
          title: const Text('flutter demo home page',
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.w500)),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'you have pushed the button this many times :',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 18,
                  color: Colors.black87,
                ),
              ),
              Text(
                "$counterValue",
                style: const TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 40,
                  color: Colors.black54,
                ),
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            return setState(() {
              counterValue++;
            });
          },
          child: const Icon(
            Icons.add,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
