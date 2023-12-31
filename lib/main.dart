import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:to_do_app/task_screen.dart';

import 'package:to_do_app/task_data.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return   ChangeNotifierProvider(
      create: (context)=> TaskData() ,
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: TasksScreen(),
      ),
    );
  }
}


//light pink -0xFFf4c7c3
//yellow #fce8b2
//green #b7e1cd
//blue #c6dafc
//#e1bee7