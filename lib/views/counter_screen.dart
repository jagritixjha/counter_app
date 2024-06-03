import 'dart:developer';

import 'package:counter_app/utils/count_modifier_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<StatefulWidget> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    log('build called');
    var provider = Provider.of<CountModifierProvider>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        elevation: 8,
        shadowColor: Colors.grey,
        title: const Text('flutter demo home page',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500)),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'you have pushed the button this many times :',
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 16,
                color: Colors.black54,
              ),
            ),
            Consumer<CountModifierProvider>(builder: (context, value, child) {
              return Text(
                "${value.incrementedCount}",
                style: const TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 38,
                  color: Colors.black54,
                ),
              );
            }),
          ],
        ),
      ),
      floatingActionButton: Theme(
        data: ThemeData(
          useMaterial3: false,
        ),
        child: FloatingActionButton(
          onPressed: () {
            provider.incrementCount();
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
