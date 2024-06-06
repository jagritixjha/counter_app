import 'package:counter_app/utils/count_modifier_provider.dart';
import 'package:counter_app/utils/global_variables.dart';
import 'package:counter_app/utils/theme_provider.dart';
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
    var provider = Provider.of<CountModifierProvider>(context, listen: false);
    var themeProvider = Provider.of<ThemeProvider>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        elevation: 8,
        shadowColor: Colors.grey,
        title: const Text(
          'flutter demo home page',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'you have pushed the button this many times :',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            Consumer<CountModifierProvider>(builder: (context, value, child) {
              return Text(
                "${value.incrementedCount}",
                style: Theme.of(context).textTheme.bodyLarge,
              );
            }),
          ],
        ),
      ),
      floatingActionButton: Theme(
          data: ThemeData(
            useMaterial3: false,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              FloatingActionButton(
                onPressed: () => themeProvider.changeTheme(),
                child: Icon(
                  themeVar ? Icons.lightbulb : Icons.lightbulb_outline,
                  color: Colors.white,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              FloatingActionButton(
                onPressed: () {
                  provider.incrementCount();
                },
                child: const Icon(
                  Icons.add,
                  color: Colors.white,
                ),
              ),
            ],
          )),
    );
  }
}
