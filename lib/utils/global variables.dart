import 'package:flutter/material.dart';

int counterValue = 0;
int byTwo = 2;
int byFour = 4;

Map<String, Widget> data1 = {
  'Exit': const Icon(Icons.exit_to_app),
  'Play': const Icon(Icons.play_arrow),
  'Pause': const Icon(Icons.pause),
  'Stop': const Icon(Icons.stop),
  'Close': const Icon(Icons.close),
  'Delete': const Icon(Icons.delete),
  'Email': const Icon(Icons.email),
};

List<Map<String, IconData>> data = [
  {'Exit': Icons.exit_to_app},
  {'Play': Icons.play_arrow},
  {'Pause': Icons.pause},
  {'Stop': Icons.stop},
  {'Close': Icons.close},
  {'Delete': Icons.delete},
  {'Email': Icons.email},
  {'Exit': Icons.exit_to_app},
  {'Play': Icons.play_arrow},
  {'Pause': Icons.pause},
];
