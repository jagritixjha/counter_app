import 'package:flutter/material.dart';

import '../utils/global variables.dart';

class DynamicListHomeScreen extends StatefulWidget {
  const DynamicListHomeScreen({super.key});

  @override
  State<DynamicListHomeScreen> createState() => _DynamicListHomeScreenState();
}

class _DynamicListHomeScreenState extends State<DynamicListHomeScreen> {
  int len = boxData.length;

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
          backgroundColor: Colors.indigo.shade900,
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
        floatingActionButton: Row(
          mainAxisSize: MainAxisSize.min,
          // This is important to keep the Column size to a minimum
          children: [
            FloatingActionButton(
              backgroundColor: Colors.indigo.shade900,
              shape: const CircleBorder(),
              onPressed: () {
                setState(() {
                  if (boxData.length % 2 == 0) {
                    len++;
                    boxData.add({len: Colors.blue.shade200});
                  } else {
                    len++;
                    boxData.add({len: Colors.indigo.shade300});
                  }
                });
              },
              heroTag: 'fab1',
              child: const Icon(
                Icons.add,
                color: Colors.white,
                size: 30,
                weight: 100,
              ),
            ),
            const SizedBox(
              width: 10, // Spacing between the FABs
            ),
            FloatingActionButton(
              backgroundColor: Colors.indigo.shade900,
              shape: const CircleBorder(),
              onPressed: () {
                setState(() {
                  boxData.removeLast();
                  len--;
                });
              },
              heroTag: 'fab2',
              child: const Icon(
                Icons.remove,
                color: Colors.white,
                size: 30,
                weight: 10,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
