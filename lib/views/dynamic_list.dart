import 'package:flutter/material.dart';

class DynamicListHomeScreen extends StatefulWidget {
  const DynamicListHomeScreen({super.key});

  @override
  State<DynamicListHomeScreen> createState() => _DynamicListHomeScreenState();
}

class _DynamicListHomeScreenState extends State<DynamicListHomeScreen> {
  List<Map<int, Color>> boxData = [
    {1: Colors.blue.shade200},
    {2: Colors.indigo.shade300},
    {3: Colors.blue.shade200},
    {4: Colors.indigo.shade300},
    {5: Colors.blue.shade200},
    {6: Colors.indigo.shade300},
    {7: Colors.blue.shade200},
    {8: Colors.indigo.shade300},
  ];

  Widget boxList(context, List<Map<int, Color>> boxData) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: boxData.map((e) {
          int key = e.keys.first;
          Color? c = e[key];
          return Container(
            height: 100,
            alignment: Alignment.center,
            width: MediaQuery.of(context).size.width,
            margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16), color: c),
            child: Text(
              '$key',
              style: const TextStyle(
                color: Colors.white,
                fontSize: 40,
                fontWeight: FontWeight.w400,
              ),
            ),
          );
        }).toList(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.teal.shade900,
          title: const Text(
            'Dynamic list',
            style: TextStyle(
              fontSize: 24,
              color: Colors.white,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        body: boxList(context, boxData),
      ),
    );
  }
}
