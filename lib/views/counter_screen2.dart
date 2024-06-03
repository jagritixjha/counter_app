import 'package:counter_app/utils/global%20variables.dart';
import 'package:counter_app/utils/increment_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CounterHomeScreen extends StatefulWidget {
  const CounterHomeScreen({super.key});

  @override
  State<CounterHomeScreen> createState() => _CounterHomeScreenState();
}

class _CounterHomeScreenState extends State<CounterHomeScreen> {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<CountModifierProvider>(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo.shade400,
        elevation: 8,
        shadowColor: Colors.grey,
        centerTitle: true,
        leading: const Icon(Icons.menu),
        title: const Text('Calculator',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500)),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Consumer<CountModifierProvider>(
                builder: (context, value, child) => Text(
                  "${value.incrementedCount}",
                  style: const TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 50,
                    color: Colors.black54,
                  ),
                ),
              ),
              const SizedBox(height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  InkWell(
                    onTap: () => provider.decrementCount(n: 2),
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
                    onTap: () => provider.incrementCount(n: 2),
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
                    onTap: () => provider.decrementCount(n: 4),
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
                    onTap: () => provider.incrementCount(n: 4),
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
                onTap: () => provider.resetCount(),
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
