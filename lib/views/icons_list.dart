import 'package:counter_app/utils/global%20variables.dart';
import 'package:flutter/material.dart';

class IconListScreen extends StatelessWidget {
  const IconListScreen({super.key});

  Widget list(List<List<IconData>> icon) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: icon.map((e) {
          IconData? iconss = e.first;
          return SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: e.map((ee) {
                iconss = ee;
                return Container(
                  height: 150,
                  width: 150,
                  margin:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 8),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: Colors.white.withOpacity(0.7),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.shade300,
                        offset: const Offset(0.0, 6.0),
                        blurRadius: 6,
                        spreadRadius: 1.0,
                      ),
                    ],
                  ),
                  alignment: Alignment.center,
                  child: Icon(
                    iconss,
                    color: Colors.black54,
                    size: 40,
                  ),
                );
              }).toList(),
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
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 4,
          shadowColor: Colors.grey.shade200,
          centerTitle: true,
          title: const Text(
            'Icons',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
          ),
        ),
        body: list(icons),
      ),
    );
  }
}
