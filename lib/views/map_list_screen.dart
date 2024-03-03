import 'package:counter_app/utils/global%20variables.dart';
import 'package:flutter/material.dart';

class MapListScreen extends StatelessWidget {
  const MapListScreen({super.key});

/*  Widget container(context, List<Map<String, IconData>> data) {
    return ListView.builder(
        itemCount: data.length,
        itemBuilder: (context, index) {
          String key = data[index].keys.first;
          IconData? value = data[index][key];
          return Container(
            margin: const EdgeInsets.symmetric(vertical: 10),
            width: MediaQuery.of(context).size.width,
            height: 80,
            color: Colors.white,
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  key,
                  style: const TextStyle(fontSize: 22),
                ),
                Icon(value),
              ],
            ),
          );
        });
  }*/
  Widget container(context, List<Map<String, IconData>> data) {
    return SingleChildScrollView(
      child: Column(
        children: data.map((item) {
          String key = item.keys.first;
          IconData? value = item[key];
          return Container(
            margin: const EdgeInsets.symmetric(vertical: 10),
            width: MediaQuery.of(context).size.width,
            height: 80,
            color: Colors.white,
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  key,
                  style: const TextStyle(fontSize: 22),
                ),
                Icon(value)
              ],
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
        backgroundColor: Colors.white.withOpacity(0.9),
        appBar: AppBar(
          backgroundColor: Colors.blueAccent,
          elevation: 4,
          shadowColor: Colors.grey,
          leading: const Icon(Icons.menu),
          title: const Text(
            'Map',
            style: TextStyle(
              fontWeight: FontWeight.w700,
              color: Colors.white,
            ),
          ),
        ),
        body: container(context, data),
      ),
    );
  }
}
