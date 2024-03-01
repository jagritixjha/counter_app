import 'package:flutter/material.dart';

import '../utils/global variables.dart';

class HomeScreen2 extends StatefulWidget {
  const HomeScreen2({super.key});

  @override
  State<HomeScreen2> createState() => _HomeScreen2();
}

class _HomeScreen2 extends State<HomeScreen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo.shade400,
        elevation: 8,
        shadowColor: Colors.grey,
        centerTitle: true,
        leading: const Icon(Icons.menu),
        title: const Text('Calc',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500)),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "$counterValue",
                style: const TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 50,
                  color: Colors.black54,
                ),
              ),
              const SizedBox(height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  InkWell(
                    onTap: () => setState(() {
                      counterValue -= byTwo;
                    }),
                    child: Container(
                      alignment: Alignment.center,
                      height: 50,
                      width: 160,
                      decoration: BoxDecoration(
                        color: Colors.indigo.shade400,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Text(
                        "- $byTwo",
                        style: const TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 24,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 40),
                  InkWell(
                    onTap: () => setState(() {
                      counterValue += byTwo;
                    }),
                    child: Container(
                      alignment: Alignment.center,
                      height: 50,
                      width: 160,
                      decoration: BoxDecoration(
                        color: Colors.indigo.shade400,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Text(
                        "+ $byTwo",
                        style: const TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 24,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  InkWell(
                    onTap: () => setState(() {
                      counterValue -= byFour;
                    }),
                    child: Container(
                      alignment: Alignment.center,
                      height: 50,
                      width: 160,
                      decoration: BoxDecoration(
                        color: Colors.indigo.shade400,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Text(
                        "- $byFour",
                        style: const TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 24,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 40),
                  InkWell(
                    onTap: () => setState(() {
                      counterValue += byFour;
                    }),
                    child: Container(
                      alignment: Alignment.center,
                      height: 50,
                      width: 160,
                      decoration: BoxDecoration(
                        color: Colors.indigo.shade400,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Text(
                        "+ $byFour",
                        style: const TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 24,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(height: 40),
              InkWell(
                onTap: () => setState(() {
                  counterValue = 0;
                }),
                child: Container(
                  alignment: Alignment.center,
                  height: 50,
                  width: 160,
                  decoration: BoxDecoration(
                    color: Colors.indigo.shade400,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: const Text(
                    "Clear",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 24,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
