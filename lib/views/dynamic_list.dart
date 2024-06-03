import 'package:counter_app/utils/count_modifier_provider.dart';
import 'package:counter_app/utils/global_variables.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DynamicListHomeScreen extends StatefulWidget {
  const DynamicListHomeScreen({super.key});

  @override
  State<DynamicListHomeScreen> createState() => _DynamicListHomeScreenState();
}

class _DynamicListHomeScreenState extends State<DynamicListHomeScreen> {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<CountModifierProvider>(context);
    return Scaffold(
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
        children: [
          FloatingActionButton(
            splashColor: Colors.white38,
            backgroundColor: Colors.indigo.shade900,
            shape: const CircleBorder(),
            onPressed: () => provider.dynamicListIncrement(),
            // heroTag: 'fab1',
            child: const Icon(
              Icons.add,
              color: Colors.white,
              size: 30,
              weight: 100,
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          FloatingActionButton(
            splashColor: Colors.white38,
            backgroundColor: Colors.indigo.shade900,
            shape: const CircleBorder(),
            onPressed: () => provider.dynamicListDecrement(),
            // heroTag: 'fab2',
            child: const Icon(
              Icons.remove,
              color: Colors.white,
              size: 30,
              weight: 10,
            ),
          ),
        ],
      ),
    );
  }

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
}
